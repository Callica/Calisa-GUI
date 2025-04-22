local Serverhop = {}

function Serverhop.Run()
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local PlaceId = game.PlaceId
    local servers = {}

    local success, result = pcall(function()
        return HttpService:JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
        )
    end)

    if success and result and result.data then
        for _, v in pairs(result.data) do
            if v.playing < v.maxPlayers then
                table.insert(servers, v.id)
            end
        end
    end

    if #servers > 0 then
        TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
    end
end

return Serverhop
