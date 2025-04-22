local JumpPower = {}

function JumpPower.SetPower(value)
    local plr = game.Players.LocalPlayer
    local hum = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.JumpPower = tonumber(value) or 50
    end
end

return JumpPower
