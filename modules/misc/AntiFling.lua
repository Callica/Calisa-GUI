local AntiFling = {}
local running = false
local conn

function AntiFling.Toggle()
    running = not running
    local plr = game.Players.LocalPlayer
    local root = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")

    if running and root then
        conn = game:GetService("RunService").Heartbeat:Connect(function()
            if root.Velocity.Magnitude > 100 then
                root.Velocity = Vector3.zero
            end
        end)
    elseif conn then
        conn:Disconnect()
    end
end

return AntiFling
