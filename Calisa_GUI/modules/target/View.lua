local View = {}
local viewing = false
local cam = workspace.CurrentCamera

function View.Toggle(target)
    if not target then return end
    viewing = not viewing
    cam.CameraSubject = viewing and target.Character:FindFirstChild("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
end

return View
