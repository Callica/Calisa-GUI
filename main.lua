local MainFrame = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Calisa_GUI"))

-- Character
local Fly = require(script.Parent.modules.character.Fly)
local WalkSpeed = require(script.Parent.modules.character.WalkSpeed)
local JumpPower = require(script.Parent.modules.character.JumpPower)
local SaveCheckpoint = require(script.Parent.modules.character.SaveCheckpoint)
local ClearCheckpoint = require(script.Parent.modules.character.ClearCheckpoint)
local Respawn = require(script.Parent.modules.character.Respawn)

-- Target
local Fling = require(script.Parent.modules.target.Fling)
local View = require(script.Parent.modules.target.View)
local Drag = require(script.Parent.modules.target.Drag)

-- Misc
local AntiFling = require(script.Parent.modules.misc.AntiFling)
local AntiAFK = require(script.Parent.modules.misc.AntiAFK)
local Day = require(script.Parent.modules.misc.Day)
local Night = require(script.Parent.modules.misc.Night)

-- Utils
local SendNotify = require(script.Parent.modules.utils.SendNotify)

-- Botões
MainFrame.Fly_Button.MouseButton1Click:Connect(function()
	Fly.Toggle()
end)

MainFrame.WalkSpeed_Button.MouseButton1Click:Connect(function()
	WalkSpeed.Run()
end)

MainFrame.JumpPower_Button.MouseButton1Click:Connect(function()
	JumpPower.Run()
end)

MainFrame.SaveCheckpoint_Button.MouseButton1Click:Connect(function()
	SaveCheckpoint.Run()
end)

MainFrame.ClearCheckpoint_Button.MouseButton1Click:Connect(function()
	ClearCheckpoint.Run()
end)

MainFrame.Respawn_Button.MouseButton1Click:Connect(function()
	Respawn.Run()
end)

MainFrame.Fling_Button.MouseButton1Click:Connect(function()
	Fling.Run()
end)

MainFrame.View_Button.MouseButton1Click:Connect(function()
	View.Run()
end)

MainFrame.Drag_Button.MouseButton1Click:Connect(function()
	Drag.Run()
end)

MainFrame.AntiFling_Button.MouseButton1Click:Connect(function()
	AntiFling.Run()
end)

MainFrame.AntiAFK_Button.MouseButton1Click:Connect(function()
	AntiAFK.Run()
end)

MainFrame.Day_Button.MouseButton1Click:Connect(function()
	Day.Run()
end)

MainFrame.Night_Button.MouseButton1Click:Connect(function()
	Night.Run()
end)

MainFrame.Notify_Button.MouseButton1Click:Connect(function()
	SendNotify.Run("Aviso", "Calisa GUI funcionando!", 5)
end)
