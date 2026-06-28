_G.Config = _G.Config or {
    -- Melee Settings
    MeleeEnabled = true,
    LowerCooldownBy = 0, -- На сколько снижать КД

    -- Anti-Debuffs
    NoKnockback = true,
    NoFallDamage = true,
    NoRagdoll = true,

    -- Stamina & Air
    InfStamina = true,
    InfAir = true,

    -- Movement
    WalkSpeedEnabled = false,
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


local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Stats = game:GetService("Stats")

local LocalPlayer = Players.LocalPlayer
local Config = _G.Config

local function safePcall(fn)
    local success, err = pcall(fn)
    if not success then warn("Error: " .. tostring(err)) end
    return success, err
end

local function initHooks()
    local function hookAllFunctions(name, newFunc)
        for _, v in pairs(getgc(true)) do
            if typeof(v) == "function" then
                local info = debug.getinfo(v)
                if info and info.name and info.name:find(name) then
                    pcall(hookfunction, v, newFunc)
                end
            end
        end
    end

    if Config.NoKnockback then
        hookAllFunctions("knockbackCharacterPart", function() end)
        hookAllFunctions("impulseCharacterPart", function() end)
    end
    if Config.NoFallDamage then
        hookAllFunctions("onCharacterTookFallDamage", function() end)
        hookAllFunctions("TakeFallDamage", function() end)
    end
    if Config.NoRagdoll then
        hookAllFunctions("toggleRagdoll", function() end)
        hookAllFunctions("_toggleActualRagdoll", function() end)
    end
end

local staminaObject = nil
local function getStaminaObject()
    if staminaObject then return staminaObject end
    local success, result = pcall(function()
        local handler = require(ReplicatedStorage.Client.Source.DefaultStamina.DefaultStaminaHandlerClient)
        return handler.getDefaultStamina()
    end)
    if success then staminaObject = result end
    return result
end

if Config.InfStamina then
    RunService.Heartbeat:Connect(function()
        local stamina = getStaminaObject()
        if stamina and typeof(stamina.setStamina) == "function" then
            stamina:setStamina(999999)
        end
    end)
end

if Config.InfAir then
    task.spawn(function()
        pcall(function()
            local AirConstants = require(ReplicatedStorage.Shared.Source.Air.AirConstants)
            AirConstants.AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING = 999
        end)
    end)
end

local function getMeleeObject(tool)
    if not tool or not tool:IsA("Tool") then return nil end
    local success, obj = pcall(function()
        return require(ReplicatedStorage.Client.Source.Melee.MeleeWeaponClient).getObj(tool)
    end)
    if success and obj then return obj end
    for _, v in pairs(getgc(true)) do
        if typeof(v) == "table" and v.tool == tool and v._cooldownProgressTimer then return v end
    end
    return nil
end

local lastParryTimes = {}
local function triggerParry(otherPlayer)
    local now = os.clock()
    local lastTime = lastParryTimes[otherPlayer] or 0
    local ping = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue() + 0.5)
    local currentCooldown = Config.ParryCooldown
    
    if ping >= 100 then 
        currentCooldown = math.clamp(currentCooldown - ((ping - 100) / 250 * 0.2), 0.45, currentCooldown) 
    end

    if now - lastTime < currentCooldown then return end
    if math.random(1, 100) > Config.ParryChance then return end

    local char = LocalPlayer.Character
    if not char then return end
    
    local tool = char:FindFirstChildOfClass("Tool")
    if not tool then
        if Config.AutoEquipParry then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.One, false, game)
            task.wait(0.01)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.One, false, game)
        else return end
    end

    lastParryTimes[otherPlayer] = now
    
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, Enum.KeyCode.F, false, game)
    task.wait(0.01)
    vim:SendKeyEvent(false, Enum.KeyCode.F, false, game)
    
    task.spawn(function()
        task.wait(0.03)
        vim:SendMouseButtonEvent(0, 0, 0, true, game, true)
        task.wait(0.01)
        vim:SendMouseButtonEvent(0, 0, 0, false, game, true)
    end)
end

local function applyEsp(player)
    if player == LocalPlayer then return end
    player.CharacterAdded:Connect(function(char)
        if not Config.EspEnabled then return end
        task.wait(0.5)
        local root = char:WaitForChild("HumanoidRootPart", 5)
        if not root then return end
        
        local hl = Instance.new("Highlight", char)
        hl.Name = "Trunkist_Highlight"
        hl.OutlineColor = Config.EspColor
        
        local bb = Instance.new("BillboardGui", root)
        bb.Name = "Trunkist_Name"
        bb.Size = UDim2.new(0, 200, 0, 20)
        bb.StudsOffset = Vector3.new(0, 3, 0)
        bb.AlwaysOnTop = true
        
        local label = Instance.new("TextLabel", bb)
        label.BackgroundTransparency = 1
        label.Size = UDim2.new(1, 0, 1, 0)
        label.Text = player.Name
        label.TextColor3 = Color3.new(1, 1, 1)
        label.Font = Enum.Font.GothamBold
        
        RunService.RenderStepped:Connect(function()
            hl.Enabled = Config.EspEnabled
            bb.Enabled = Config.EspNames
            if Config.EspType == "Box" then hl.FillTransparency = 1 else hl.FillTransparency = 0.5 end
        end)
    end)
end

local function onCharacterAdded(char)
    staminaObject = nil
    local hum = char:WaitForChild("Humanoid", 10)
    local root = char:WaitForChild("HumanoidRootPart", 10)
    local animator = hum:WaitForChild("Animator", 10)

    if Config.WalkSpeedEnabled then
        pcall(function()
            local WalkSpeedHandler = require(ReplicatedStorage.Client.Source.Movement.WalkSpeedHandlerClient)
            local container = WalkSpeedHandler.getValueContainer()
            if container then container:setBaseValue(Config.WalkSpeedValue) end
        end)
    end

    animator.AnimationPlayed:Connect(function(track)
        if Config.MeleeEnabled then
            local tool = char:FindFirstChildOfClass("Tool")
            local meleeObj = getMeleeObject(tool)
            if meleeObj and meleeObj._cooldownProgressTimer then
                local timer = meleeObj._cooldownProgressTimer
                timer:setValue(math.max(0, timer:getValue() - Config.LowerCooldownBy))
            end
        end
    end)
end

local function trackOtherPlayer(op)
    if op == LocalPlayer then return end
    
    local function watchChar(char)
        local hum = char:WaitForChild("Humanoid", 5)
        local anim = hum and hum:WaitForChild("Animator", 5)
        if anim then
            anim.AnimationPlayed:Connect(function(track)
                if not Config.ParryEnabled then return end
                local name = track.Name:lower()
                if name:find("attack") or name:find("swing") or name:find("slash") then
                    local myRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local opRoot = char:FindFirstChild("HumanoidRootPart")
                    if myRoot and opRoot then
                        if (myRoot.Position - opRoot.Position).Magnitude <= Config.ParryRange then
                            triggerParry(op)
                        end
                    end
                end
            end)
        end
    end
    
    if op.Character then watchChar(op.Character) end
    op.CharacterAdded:Connect(watchChar)
    applyEsp(op)
end

initHooks()

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
if LocalPlayer.Character then task.spawn(onCharacterAdded, LocalPlayer.Character) end

for _, p in pairs(Players:GetPlayers()) do trackOtherPlayer(p) end
Players.PlayerAdded:Connect(trackOtherPlayer)

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
