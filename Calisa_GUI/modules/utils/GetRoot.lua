local GetRoot = {}

function GetRoot.FromCharacter(character)
    return character and character:FindFirstChild("HumanoidRootPart")
end

return GetRoot
