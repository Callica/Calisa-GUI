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
MainFrame.Size = UDim2.new(0, 460, 0, 280)
MainFrame.Position = UDim2.new(0.5, -230, 0.5, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = MainGui

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", MainFrame).Color = Color3.fromRGB(50, 50, 50)

-- Header
local Title = Instance.new("TextLabel")
Title.Text = "Calisa GUI"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -40, 0, 30)
Title.Position = UDim2.new(0, 10, 0, 8)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

-- Fechar
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "Close_Button"
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 24, 0, 24)
CloseButton.Position = UDim2.new(1, -34, 0, 8)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextScaled = true
CloseButton.Parent = MainFrame

Instance.new("UICorner", CloseButton).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", CloseButton).Color = Color3.fromRGB(120, 30, 30)

CloseButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
end)

-- Scroll de botões
local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "Scroll"
Scroll.Size = UDim2.new(1, -20, 1, -50)
Scroll.Position = UDim2.new(0, 10, 0, 44)
Scroll.CanvasSize = UDim2.new(0, 0, 0, 1400)
Scroll.ScrollBarThickness = 4
Scroll.BackgroundTransparency = 1
Scroll.Parent = MainFrame

local layout = Instance.new("UIListLayout", Scroll)
layout.Padding = UDim.new(0, 6)
layout.SortOrder = Enum.SortOrder.LayoutOrder

local function createButton(name, text)
	local btn = Instance.new("TextButton")
	btn.Name = name .. "_Button"
	btn.Text = text
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.BackgroundColor3 = Color3.fromRGB(38, 38, 42)
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	btn.Parent = Scroll
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", btn).Color = Color3.fromRGB(65, 65, 65)
end

local function createBox(name, placeholder)
	local box = Instance.new("TextBox")
	box.Name = name
	box.Text = ""
	box.PlaceholderText = placeholder
	box.Size = UDim2.new(1, 0, 0, 30)
	box.BackgroundColor3 = Color3.fromRGB(38, 38, 42)
	box.TextColor3 = Color3.fromRGB(255, 255, 255)
	box.Font = Enum.Font.Gotham
	box.TextSize = 14
	box.Parent = Scroll
	Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", box).Color = Color3.fromRGB(65, 65, 65)
end

-- Elementos
-- Character
createButton("Fly", "Fly")
createBox("FlySpeed_Box", "FlySpeed")
createBox("WalkSpeed_Box", "WalkSpeed")
createBox("JumpPower_Box", "JumpPower")
createButton("SaveCheckpoint", "SaveCheckpoint")
createButton("ClearCheckpoint", "ClearCheckpoint")
createButton("Respawn", "Respawn")

-- Target
createBox("Target_Box", "Target")
createButton("Fling", "Fling")
createButton("Bang", "Bang")
createButton("Doggy", "Doggy")
createButton("Drag", "Drag")
createButton("View", "View")
createButton("Teleport", "Teleport")
createButton("Headsit", "Headsit")
createButton("Stand", "Stand")
createButton("Whitelist", "Whitelist")
createButton("Backpack", "Backpack")

-- Animations
createButton("Hero", "Hero")
createButton("Zombie", "Zombie")
createButton("Ghost", "Ghost")
createButton("Vampire", "Vampire")
createButton("Mage", "Mage")
createButton("Elder", "Elder")
createButton("Knight", "Knight")
createButton("Pirate", "Pirate")
createButton("Popstar", "Popstar")
createButton("Princess", "Princess")
createButton("Cowboy", "Cowboy")
createButton("Ninja", "Ninja")
createButton("Astronaut", "Astronaut")
createButton("Confident", "Confident")
createButton("Sneaky", "Sneaky")
createButton("Werewolf", "Werewolf")
createButton("ZombieFE", "ZombieFE")
createButton("Cartoon", "Cartoon")
createButton("Toy", "Toy")
createButton("Levitation", "Levitation")

-- Misc
createButton("AntiFling", "AntiFling")
createButton("AntiAFK", "AntiAFK")
createButton("AntiChatSpy", "AntiChatSpy")
createButton("Rejoin", "Rejoin")
createButton("Day", "Day")
createButton("Night", "Night")
createButton("Explode", "Explode")
createButton("FreeEmotes", "FreeEmotes")
createButton("Serverhop", "Serverhop")

return {
	Create = function()
		MainGui.Enabled = true
	end
}
