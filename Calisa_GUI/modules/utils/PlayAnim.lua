local PlayAnim = {}
local Animation

function PlayAnim.Load(id)
    local plr = game.Players.LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()
    local humanoid = char:FindFirstChildOfClass("Humanoid")

    if humanoid then
        if Animation then
            Animation:Stop()
        end

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://" .. tostring(id)
        Animation = humanoid:LoadAnimation(anim)
        Animation:Play()
    end
end

function PlayAnim.Stop()
    if Animation then
        Animation:Stop()
        Animation = nil
    end
end

return PlayAnim
