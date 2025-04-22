local Explode = {}

function Explode.Run()
    local char = game.Players.LocalPlayer.Character
    if char then
        local explosion = Instance.new("Explosion", workspace)
        explosion.Position = char:FindFirstChild("HumanoidRootPart").Position
        explosion.BlastRadius = 10
        explosion.BlastPressure = 500000
    end
end

return Explode
