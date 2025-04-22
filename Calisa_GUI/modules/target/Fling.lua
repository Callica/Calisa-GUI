local Fling = {}

function Fling.Run(target)
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local targetRoot = target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")

    if not root or not targetRoot then return end

    local vel = Instance.new("BodyAngularVelocity")
    vel.AngularVelocity = Vector3.new(0, 100000, 0)
    vel.MaxTorque = Vector3.new(0, math.huge, 0)
    vel.P = 100000
    vel.Parent = root

    root.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 2)
    task.wait(0.5)
    vel:Destroy()
end

return Fling
