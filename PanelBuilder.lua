local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player:FindFirstChild("PlayerGui")

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "Calisa_GUI"
MainGui.ResetOnSpawn = false
MainGui.IgnoreGuiInset = true
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainGui.Parent = player:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 500, 0, 400)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = MainGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

-- Character Controls
local Fly_Button = Instance.new("TextButton")
Fly_Button.Name = "Fly_Button"
Fly_Button.Text = "Fly"
Fly_Button.Position = UDim2.new(0, 20, 0, 20)
Fly_Button.Size = UDim2.new(0, 100, 0, 30)
Fly_Button.Parent = MainFrame

local FlySpeed_Box = Instance.new("TextBox")
FlySpeed_Box.Name = "FlySpeed_Box"
FlySpeed_Box.Text = "Speed"
FlySpeed_Box.Position = UDim2.new(0, 130, 0, 20)
FlySpeed_Box.Size = UDim2.new(0, 80, 0, 30)
FlySpeed_Box.Parent = MainFrame

local WalkSpeed_Box = Instance.new("TextBox")
WalkSpeed_Box.Name = "WalkSpeed_Box"
WalkSpeed_Box.Text = "Walk"
WalkSpeed_Box.Position = UDim2.new(0, 220, 0, 20)
WalkSpeed_Box.Size = UDim2.new(0, 80, 0, 30)
WalkSpeed_Box.Parent = MainFrame

local JumpPower_Box = Instance.new("TextBox")
JumpPower_Box.Name = "JumpPower_Box"
JumpPower_Box.Text = "Jump"
JumpPower_Box.Position = UDim2.new(0, 310, 0, 20)
JumpPower_Box.Size = UDim2.new(0, 80, 0, 30)
JumpPower_Box.Parent = MainFrame

local SaveCheckpoint_Button = Instance.new("TextButton")
SaveCheckpoint_Button.Name = "SaveCheckpoint_Button"
SaveCheckpoint_Button.Text = "Save Checkpoint"
SaveCheckpoint_Button.Position = UDim2.new(0, 20, 0, 60)
SaveCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)
SaveCheckpoint_Button.Parent = MainFrame

local ClearCheckpoint_Button = Instance.new("TextButton")
ClearCheckpoint_Button.Name = "ClearCheckpoint_Button"
ClearCheckpoint_Button.Text = "Clear Checkpoint"
ClearCheckpoint_Button.Position = UDim2.new(0, 180, 0, 60)
ClearCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)
ClearCheckpoint_Button.Parent = MainFrame

local Respawn_Button = Instance.new("TextButton")
Respawn_Button.Name = "Respawn_Button"
Respawn_Button.Text = "Respawn"
Respawn_Button.Position = UDim2.new(0, 340, 0, 60)
Respawn_Button.Size = UDim2.new(0, 120, 0, 30)
Respawn_Button.Parent = MainFrame

-- Target field + example (Bang)
local Target_Box = Instance.new("TextBox")
Target_Box.Name = "Target_Box"
Target_Box.Text = "PlayerName"
Target_Box.Position = UDim2.new(0, 20, 0, 110)
Target_Box.Size = UDim2.new(0, 200, 0, 30)
Target_Box.Parent = MainFrame

local Bang_Button = Instance.new("TextButton")
Bang_Button.Name = "Bang_Button"
Bang_Button.Text = "Bang"
Bang_Button.Position = UDim2.new(0, 230, 0, 110)
Bang_Button.Size = UDim2.new(0, 80, 0, 30)
Bang_Button.Parent = MainFrame

-- Fechar
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "Close_Button"
CloseButton.Text = "Fechar"
CloseButton.Size = UDim2.new(0, 100, 0, 30)
CloseButton.Position = UDim2.new(1, -110, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextScaled = true
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
end)

return {
	Create = function()
		MainGui.Enabled = true
	end
}
