local SendNotify = {}

function SendNotify.Send(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title or "Calisa GUI",
        Text = text or "Notificação",
        Duration = duration or 3
    })
end

return SendNotify
