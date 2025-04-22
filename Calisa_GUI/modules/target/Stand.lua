local Stand = {}

function Stand.Run(target)
    if not target or not target.Character then return end
    local root = target.Character:FindFirstChild("HumanoidRootPart")
    local myChar = game.Players.LocalPlayer.Character
    if root and myChar and myChar:FindFirstChild("HumanoidRootPart") then
        myChar:PivotTo(root.CFrame * CFrame.new(0, -3.5, 0))
    end
end

return Stand
