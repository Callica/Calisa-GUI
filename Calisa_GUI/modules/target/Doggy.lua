local Doggy = {}

function Doggy.Run(target)
    if not target or not target.Character then return end
    local root = target.Character:FindFirstChild("HumanoidRootPart")
    local myChar = game.Players.LocalPlayer.Character
    if root and myChar and myChar:FindFirstChild("HumanoidRootPart") then
        myChar:PivotTo(root.CFrame * CFrame.new(0, 0, 1.5))
    end
end

return Doggy
