local Teleport = {}

function Teleport.ToTarget(target)
    if not target or not target.Character then return end
    local myChar = game.Players.LocalPlayer.Character
    local root = target.Character:FindFirstChild("HumanoidRootPart")
    if myChar and root then
        myChar:PivotTo(root.CFrame * CFrame.new(0, 2, 0))
    end
end

return Teleport
