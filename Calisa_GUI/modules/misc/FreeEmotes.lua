local FreeEmotes = {}

function FreeEmotes.Enable()
    local success, err = pcall(function()
        local emotes = game:GetService("Players").LocalPlayer:FindFirstChild("EmoteWheel")
        if emotes then
            emotes:Destroy()
        end

        local new = Instance.new("Folder")
        new.Name = "EmoteWheel"
        new.Parent = game.Players.LocalPlayer

        for _, emote in ipairs({"Hello", "Wave", "Cheer", "Laugh", "Dance"}) do
            local val = Instance.new("StringValue")
            val.Name = emote
            val.Value = emote
            val.Parent = new
        end
    end)
end

return FreeEmotes
