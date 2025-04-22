local GetPlayer = {}

function GetPlayer.FromName(name)
    local plr = game.Players.LocalPlayer
    name = name:lower()
    for _, v in ipairs(game.Players:GetPlayers()) do
        if v ~= plr and v.Name:lower():sub(1, #name) == name then
            return v
        end
    end
end

return GetPlayer
