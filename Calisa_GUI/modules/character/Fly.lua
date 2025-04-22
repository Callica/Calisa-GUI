local Fly = {}
local flying = false
local speed = 2
local conn

function Fly.SetSpeed(v)
    speed = tonumber(v) or 2
end

function Fly.Toggle()
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")

    if not root then return end

    flying = not flying
    if flying then
        conn = game:GetService("RunService").RenderStepped:Connect(function()
            local cam = workspace.CurrentCamera
            root.Velocity = cam.CFrame.LookVector * speed * 20
        end)
    elseif conn then
        conn:Disconnect()
    end
end

return Fly
