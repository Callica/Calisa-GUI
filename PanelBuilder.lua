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
MainFrame.Size = UDim2.new(0, 500, 0, 320)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = MainGui

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 8)

local UIStroke = Instance.new("UIStroke", MainFrame)
UIStroke.Color = Color3.fromRGB(60, 60, 60)
UIStroke.Thickness = 1.5

-- Título
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "Calisa GUI"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0, 5)

-- Container para botões
local Scroll = Instance.new("ScrollingFrame", MainFrame)
Scroll.Size = UDim2.new(1, -20, 1, -50)
Scroll.Position = UDim2.new(0, 10, 0, 40)
Scroll.CanvasSize = UDim2.new(0, 0, 0, 500)
Scroll.ScrollBarThickness = 4
Scroll.BackgroundTransparency = 1

local UIListLayout = Instance.new("UIListLayout", Scroll)
UIListLayout.Padding = UDim.new(0, 8)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function createButton(name, text)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Text = text
	btn.Size = UDim2.new(1, 0, 0, 32)
	btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	btn.Parent = Scroll

	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", btn).Color = Color3.fromRGB(50, 50, 50)

	return btn
end

-- Botões exemplo estilo KSX
createButton("Fly_Button", "Fly")
createButton("SaveCheckpoint_Button", "Save Checkpoint")
createButton("ClearCheckpoint_Button", "Clear Checkpoint")
createButton("Respawn_Button", "Respawn")
createButton("Bang_Button", "Bang")
createButton("Teleport_Button", "Teleport")
createButton("AntiFling_Button", "Anti-Fling")
createButton("Day_Button", "Set Day")
createButton("Night_Button", "Set Night")

-- Campo de texto para alvo
local Target_Box = Instance.new("TextBox")
Target_Box.Name = "Target_Box"
Target_Box.Text = "Target Name"
Target_Box.Size = UDim2.new(1, 0, 0, 30)
Target_Box.Parent = Scroll
Target_Box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Target_Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Target_Box.Font = Enum.Font.Gotham
Target_Box.TextSize = 14

Instance.new("UICorner", Target_Box).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", Target_Box).Color = Color3.fromRGB(50, 50, 50)

-- Botão de fechar
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "Close_Button"
CloseButton.Text = "Fechar"
CloseButton.Size = UDim2.new(0, 80, 0, 28)
CloseButton.Position = UDim2.new(1, -90, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextScaled = true
CloseButton.Parent = MainFrame

Instance.new("UICorner", CloseButton).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", CloseButton).Color = Color3.fromRGB(90, 0, 0)

CloseButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
end)

return {
	Create = function()
		MainGui.Enabled = true
	end
}
