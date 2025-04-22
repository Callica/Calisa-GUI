local Checkpoint = {}
local savedPosition = nil

function Checkpoint.Save()
    local root = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if root then
        savedPosition = root.CFrame
    end
end

function Checkpoint.Get()
    return savedPosition
end

return Checkpoint
