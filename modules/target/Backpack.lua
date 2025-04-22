local Backpack = {}

function Backpack.Drop(target)
    if not target or not target.Backpack then return end
    for _, item in ipairs(target.Backpack:GetChildren()) do
        item.Parent = workspace
    end
end

return Backpack
