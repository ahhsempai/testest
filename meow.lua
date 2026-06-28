-- ==========================================
-- БЛОК НАСТРОЕК (Config)
-- ==========================================
_G.Config = _G.Config or {
    -- Melee Settings
    MeleeEnabled = true,
    LowerCooldownBy = 0.32, -- Снижение КД (в твоем коде было 0.32)

    -- Anti-Debuffs (No Fall, No Knockback и т.д.)
    NoKnockback = true,
    NoFallDamage = true,
    NoRagdoll = true,

    -- Stamina & Air
    InfStamina = true,
    InfAir = true,

    -- Movement
    WalkSpeedEnabled = true,
    WalkSpeedValue = 26,
    TPWalkEnabled = false,
    TPWalkSpeed = 40,
    InfJump = false,
    Bhop = false,

    -- Auto-Parry
    ParryEnabled = true,
    ParryRange = 16.5,
    ParryChance = 100,
    AutoEquipParry = true,
    DownedParry = true,
    ParryCooldown = 0.75,

    -- ESP
    EspEnabled = true,
    EspNames = true,
    EspHealth = true,
    EspType = "Box", -- "Box", "Shader", "Gamma"
    EspColor = Color3.fromRGB(255, 38, 72)
}

-- ==========================================
-- ОСНОВНОЙ СКРИПТ
-- ==========================================

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Stats = game:GetService("Stats")
local VIM = game:GetService("VirtualInputManager")

local LocalPlayer = Players.LocalPlayer
local Config = _G.Config

-- Хранилище для хуков, чтобы не хукать дважды
local HookedFunctions = {}

-- ФУНКЦИЯ ДЛЯ ПОИСКА И ХУКА (No Fall, No Knockback)
local function ApplyHooks()
    for _, v in pairs(getgc(true)) do
        if typeof(v) == "function" and not HookedFunctions[v] then
            local info = debug.getinfo(v)
            local name = info.name or ""
            
            -- No Knockback
            if Config.NoKnockback and (name:find("knockbackCharacterPart") or name:find("impulseCharacterPart")) then
                hookfunction(v, function() return end)
                HookedFunctions[v] = true
                print("Hooked Knockback: " .. name)
            end
            
            -- No Fall Damage
            if Config.NoFallDamage and (name:find("onCharacterTookFallDamage") or name:find("TakeFallDamage")) then
                hookfunction(v, function() return end)
                HookedFunctions[v] = true
                print("Hooked Fall Damage: " .. name)
            end
            
            -- No Ragdoll
            if Config.NoRagdoll and (name:find("toggleRagdoll") or name:find("_toggleActualRagdoll")) then
                hookfunction(v, function() return end)
                HookedFunctions[v] = true
                print("Hooked Ragdoll: " .. name)
            end
        end
    end
end

-- Запускаем сканер хуков (будет проверять память каждые 5 секунд, пока всё не найдет)
task.spawn(function()
    while task.wait(5) do
        ApplyHooks()
    end
end)

-- СТАМИНА И ВОЗДУХ
local staminaObject = nil
local function getStamina()
    if staminaObject then return staminaObject end
    pcall(function()
        local s, res = pcall(function() return require(ReplicatedStorage.Client.Source.DefaultStamina.DefaultStaminaHandlerClient).getDefaultStamina() end)
        if s then staminaObject = res end
    end)
    return staminaObject
end

RunService.Heartbeat:Connect(function()
    if Config.InfStamina then
        local s = getStamina()
        if s and s.setStamina then s:setStamina(999999) end
    end
    
    if Config.InfAir then
        pcall(function()
            local const = require(ReplicatedStorage.Shared.Source.Air.AirConstants)
            const.AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING = 999
        end)
    end
end)

-- МУВМЕНТ (СКОРОСТЬ И ПРЫЖКИ)
local function UpdateMovement(char)
    local hum = char:WaitForChild("Humanoid", 5)
    if not hum then return end
    
    task.wait(1) -- Ждем инициализацию игровых скриптов
    
    if Config.WalkSpeedEnabled then
        pcall(function()
            local WSHandler = require(ReplicatedStorage.Client.Source.Movement.WalkSpeedHandlerClient)
            local container = WSHandler.getValueContainer()
            if container then container:setBaseValue(Config.WalkSpeedValue) end
        end)
    end
end

-- МИЛИ (КУЛДАУН)
local function getMeleeObj(tool)
    local success, res = pcall(function()
        return require(ReplicatedStorage.Client.Source.Melee.MeleeWeaponClient).getObj(tool)
    end)
    if success and res then return res end
    -- Запасной поиск через GC
    for _, v in pairs(getgc(true)) do
        if typeof(v) == "table" and v.tool == tool and v._cooldownProgressTimer then return v end
    end
end

-- АНИМАЦИИ (PARRY И MELEE CD)
local function HandleAnimations(char)
    local hum = char:WaitForChild("Humanoid")
    local animator = hum:WaitForChild("Animator")
    
    animator.AnimationPlayed:Connect(function(track)
        -- Снижение кулдауна для себя
        if Config.MeleeEnabled and char == LocalPlayer.Character then
            local tool = char:FindFirstChildOfClass("Tool")
            local melee = getMeleeObj(tool)
            if melee and melee._cooldownProgressTimer then
                local timer = melee._cooldownProgressTimer
                timer:setValue(math.max(0, timer:getValue() - Config.LowerCooldownBy))
            end
        end
    end)
end

-- ПАРРИ ЛОГИКА
local lastParry = 0
local function doParry()
    if os.clock() - lastParry < Config.ParryCooldown then return end
    if math.random(1, 100) > Config.ParryChance then return end
    
    lastParry = os.clock()
    
    -- Достать оружие если надо
    if Config.AutoEquipParry and not LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        VIM:SendKeyEvent(true, Enum.KeyCode.One, false, game)
        task.wait(0.01)
        VIM:SendKeyEvent(false, Enum.KeyCode.One, false, game)
    end

    VIM:SendKeyEvent(true, Enum.KeyCode.F, false, game)
    task.wait(0.01)
    VIM:SendKeyEvent(false, Enum.KeyCode.F, false, game)
    
    task.spawn(function()
        task.wait(0.03)
        VIM:SendMouseButtonEvent(0, 0, 0, true, game, true)
        task.wait(0.01)
        VIM:SendMouseButtonEvent(0, 0, 0, false, game, true)
    end)
end

-- СЛЕЖКА ЗА ИГРОКАМИ (ДЛЯ PARRY)
local function TrackPlayer(p)
    p.CharacterAdded:Connect(function(char)
        local hum = char:WaitForChild("Humanoid", 10)
        local animator = hum:WaitForChild("Animator", 10)
        
        animator.AnimationPlayed:Connect(function(track)
            if not Config.ParryEnabled or p == LocalPlayer then return end
            
            local name = track.Name:lower()
            -- Список ключевых слов атак из твоего скрипта
            if name:find("attack") or name:find("swing") or name:find("slash") or name:find("m1") or name:find("m2") then
                local myRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                local hisRoot = char:FindFirstChild("HumanoidRootPart")
                
                if myRoot and hisRoot then
                    local dist = (myRoot.Position - hisRoot.Position).Magnitude
                    if dist <= Config.ParryRange then
                        doParry()
                    end
                end
            end
        end)
    end)
end

-- ИНИЦИАЛИЗАЦИЯ ДЛЯ СЕБЯ
LocalPlayer.CharacterAdded:Connect(function(char)
    staminaObject = nil -- Сброс при смерти
    UpdateMovement(char)
    HandleAnimations(char)
end)

if LocalPlayer.Character then 
    task.spawn(UpdateMovement, LocalPlayer.Character)
    task.spawn(HandleAnimations, LocalPlayer.Character)
end

-- ИНИЦИАЛИЗАЦИЯ ДЛЯ ДРУГИХ
for _, p in pairs(Players:GetPlayers()) do TrackPlayer(p) end
Players.PlayerAdded:Connect(TrackPlayer)

-- ОБРАБОТКА BHOP И INF JUMP
UserInputService.JumpRequest:Connect(function()
    if Config.InfJump and LocalPlayer.Character then
        local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end)

RunService.Heartbeat:Connect(function()
    if Config.Bhop and LocalPlayer.Character then
        local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum and UserInputService:IsKeyDown(Enum.KeyCode.Space) and hum:GetState() == Enum.HumanoidStateType.Landed then
            hum:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
    
    if Config.TPWalkEnabled and LocalPlayer.Character then
        local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if root and hum and hum.MoveDirection.Magnitude > 0 then
            root.CFrame = root.CFrame + (hum.MoveDirection * (Config.TPWalkSpeed / 60))
        end
    end
end)

-- ESP (Упрощенный и надежный)
local function CreateESP(p)
    if p == LocalPlayer then return end
    p.CharacterAdded:Connect(function(char)
        task.wait(1)
        if not Config.EspEnabled then return end
        
        local hl = Instance.new("Highlight")
        hl.Parent = char
        hl.FillTransparency = 0.5
        hl.OutlineColor = Config.EspColor
        
        local bb = Instance.new("BillboardGui", char:WaitForChild("HumanoidRootPart"))
        bb.AlwaysOnTop = true
        bb.Size = UDim2.new(0, 100, 0, 50)
        bb.StudsOffset = Vector3.new(0, 3, 0)
        
        local label = Instance.new("TextLabel", bb)
        label.BackgroundTransparency = 1
        label.Size = UDim2.new(1, 0, 1, 0)
        label.TextColor3 = Color3.new(1,1,1)
        label.TextStrokeTransparency = 0
        label.Font = Enum.Font.GothamBold
        label.TextSize = 12

        local conn
        conn = RunService.RenderStepped:Connect(function()
            if not char.Parent then conn:Disconnect() return end
            hl.Enabled = Config.EspEnabled
            bb.Enabled = Config.EspNames
            label.Text = p.Name .. (Config.EspHealth and (" [" .. math.floor(char.Humanoid.Health) .. "]") or "")
            
            if Config.EspType == "Box" then hl.FillTransparency = 1 else hl.FillTransparency = 0.5 end
        end)
    end)
end

for _, p in pairs(Players:GetPlayers()) do CreateESP(p) end
Players.PlayerAdded:Connect(CreateESP)

print("✅ Final Hub Loaded!")
