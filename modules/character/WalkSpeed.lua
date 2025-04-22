local WalkSpeed = {}

function WalkSpeed.SetSpeed(value)
    local plr = game.Players.LocalPlayer
    local hum = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.WalkSpeed = tonumber(value) or 16
    end
end

return WalkSpeed
