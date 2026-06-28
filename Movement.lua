local cfg = G or {}

local Players           = game:GetService("Players")
local UserInputService  = game:GetService("UserInputService")
local RunService        = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character   = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid    = Character:WaitForChild("Humanoid")
local RootPart    = Character:WaitForChild("HumanoidRootPart")

if cfg.WalkSpeed then
    pcall(function()
        local WalkSpeedHandler = require(game.ReplicatedStorage.Client.Source.Movement.WalkSpeedHandlerClient)
        local container = WalkSpeedHandler.getValueContainer()
        if container then
            container:setBaseValue(cfg.WalkSpeed)
        else
            Humanoid.WalkSpeed = cfg.WalkSpeed
        end
    end)
end

if cfg.TPWalk then
    RunService.Heartbeat:Connect(function()
        if RootPart and Humanoid.MoveDirection.Magnitude > 0 then
            RootPart.CFrame = RootPart.CFrame + (Humanoid.MoveDirection * (cfg.TPWalk / 60))
        end
    end)
end

if cfg.InfJump then
    UserInputService.JumpRequest:Connect(function()
        if Humanoid then
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end

if cfg.Bhop then
    RunService.Heartbeat:Connect(function()
        if UserInputService:IsKeyDown(Enum.KeyCode.Space)
            and Humanoid:GetState() == Enum.HumanoidStateType.Landed then
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(newChar)
    Character = newChar
    Humanoid  = newChar:WaitForChild("Humanoid")
    RootPart  = newChar:WaitForChild("HumanoidRootPart")
    task.wait(1)

    if cfg.WalkSpeed then
        pcall(function()
            local WalkSpeedHandler = require(game.ReplicatedStorage.Client.Source.Movement.WalkSpeedHandlerClient)
            local container = WalkSpeedHandler.getValueContainer()
            if container then
                container:setBaseValue(cfg.WalkSpeed)
            else
                Humanoid.WalkSpeed = cfg.WalkSpeed
            end
        end)
    end
end)
