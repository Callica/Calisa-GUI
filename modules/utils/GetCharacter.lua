local GetCharacter = {}

function GetCharacter.FromPlayer(player)
    return player and player.Character
end

return GetCharacter
