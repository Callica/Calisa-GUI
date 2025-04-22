local Clear = {}
local Checkpoint = require(script.Parent.SaveCheckpoint)

function Clear.Run()
    Checkpoint.Save(nil)
end

return Clear
