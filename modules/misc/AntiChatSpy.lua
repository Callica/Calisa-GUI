local AntiChatSpy = {}

function AntiChatSpy.Run()
    local mt = getrawmetatable(game)
    local backup = mt.__namecall
    setreadonly(mt, false)

    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if tostring(self) == "SayMessageRequest" and method == "FireServer" then
            local args = {...}
            args[1] = "/w ;"
            return backup(self, unpack(args))
        end
        return backup(self, ...)
    end)

    setreadonly(mt, true)
end

return AntiChatSpy
