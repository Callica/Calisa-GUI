local Respawn = {}

function Respawn.Run()
    local plr = game.Players.LocalPlayer
    if plr.Character then
        plr.Character:BreakJoints()
    end
end

return Respawn
