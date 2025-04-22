local Whitelist = {}
local list = {}

function Whitelist.Toggle(target)
    if not target then return end
    local id = target.UserId
    if list[id] then list[id] = nil else list[id] = true end
end

function Whitelist.IsWhitelisted(id)
    return list[id] == true
end

return Whitelist
