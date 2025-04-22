local Drag = {}
local dragging = false
local connection

function Drag.Toggle(target)
    dragging = not dragging
    local myRoot = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local targetRoot = target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")
    if dragging and myRoot and targetRoot then
        connection = game:GetService("RunService").RenderStepped:Connect(function()
            targetRoot.CFrame = myRoot.CFrame * CFrame.new(0, 0, -2)
        end)
    elseif connection then
        connection:Disconnect()
    end
end

return Drag
