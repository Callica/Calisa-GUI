local player = game:GetService("Players").LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "Calisa_GUI"
MainGui.Parent = PlayerGui
MainGui.ResetOnSpawn = false
MainGui.IgnoreGuiInset = true
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 600, 0, 340)
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -170)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = MainGui

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", MainFrame).Color = Color3.fromRGB(40, 40, 40)

-- Sidebar
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 120, 1, 0)
Sidebar.Position = UDim2.new(0, 0, 0, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Sidebar.BorderSizePixel = 0
Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 6)

local TabList = Instance.new("UIListLayout", Sidebar)
TabList.Padding = UDim.new(0, 6)
TabList.SortOrder = Enum.SortOrder.LayoutOrder

-- Content area
local Content = Instance.new("Frame", MainFrame)
Content.Name = "Content"
Content.Position = UDim2.new(0, 130, 0, 10)
Content.Size = UDim2.new(1, -140, 1, -20)
Content.BackgroundTransparency = 1

local PageLayout = Instance.new("UIPageLayout", Content)
PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
PageLayout.EasingStyle = Enum.EasingStyle.Quad
PageLayout.EasingDirection = Enum.EasingDirection.InOut
PageLayout.TweenTime = 0.2
PageLayout.GamepadInputEnabled = false
PageLayout.TouchInputEnabled = false

local function createTab(name, sectionFrame)
	local button = Instance.new("TextButton", Sidebar)
	button.Name = name .. "_Tab"
	button.Size = UDim2.new(1, -10, 0, 28)
	button.Text = name
	button.Font = Enum.Font.Gotham
	button.TextSize = 14
	button.TextColor3 = Color3.new(1, 1, 1)
	button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Instance.new("UICorner", button).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", button).Color = Color3.fromRGB(60, 60, 60)

	button.MouseButton1Click:Connect(function()
		PageLayout:JumpTo(sectionFrame)
	end)
end

local function createSection(name)
	local frame = Instance.new("Frame")
	frame.Name = name .. "_Page"
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1
	frame.Parent = Content

	local layout = Instance.new("UIListLayout", frame)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Padding = UDim.new(0, 6)

	return frame
end

local function createButton(name, parent)
	local btn = Instance.new("TextButton", parent)
	btn.Name = name .. "_Button"
	btn.Text = name
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", btn).Color = Color3.fromRGB(60, 60, 60)
end

local function createBox(name, parent, placeholder)
	local box = Instance.new("TextBox", parent)
	box.Name = name
	box.Text = ""
	box.PlaceholderText = placeholder
	box.Size = UDim2.new(1, 0, 0, 30)
	box.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	box.TextColor3 = Color3.fromRGB(255, 255, 255)
	box.Font = Enum.Font.Gotham
	box.TextSize = 14
	Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
	Instance.new("UIStroke", box).Color = Color3.fromRGB(65, 65, 65)
end

-- Character Section
local CharacterPage = createSection("Character")
createTab("Character", CharacterPage)
createButton("Fly", CharacterPage)
createBox("FlySpeed_Box", CharacterPage, "Fly Speed")
createBox("WalkSpeed_Box", CharacterPage, "Walk Speed")
createBox("JumpPower_Box", CharacterPage, "Jump Power")
createButton("SaveCheckpoint", CharacterPage)
createButton("ClearCheckpoint", CharacterPage)
createButton("Respawn", CharacterPage)

-- Target Section
local TargetPage = createSection("Target")
createTab("Target", TargetPage)
createBox("Target_Box", TargetPage, "Target")
createButton("Fling", TargetPage)
createButton("Bang", TargetPage)
createButton("Doggy", TargetPage)
createButton("Drag", TargetPage)
createButton("View", TargetPage)
createButton("Teleport", TargetPage)
createButton("Headsit", TargetPage)
createButton("Stand", TargetPage)
createButton("Whitelist", TargetPage)
createButton("Backpack", TargetPage)

-- Animations Section
local AnimPage = createSection("Animations")
createTab("Animations", AnimPage)
local anims = {"Hero", "Zombie", "Ghost", "Vampire", "Mage", "Elder", "Knight", "Pirate",
"Popstar", "Princess", "Cowboy", "Ninja", "Astronaut", "Confident", "Sneaky",
"Werewolf", "ZombieFE", "Cartoon", "Toy", "Levitation"}
for _, name in ipairs(anims) do
	createButton(name, AnimPage)
end

-- Misc Section
local MiscPage = createSection("Misc")
createTab("Misc", MiscPage)
createButton("AntiFling", MiscPage)
createButton("AntiAFK", MiscPage)
createButton("AntiChatSpy", MiscPage)
createButton("Rejoin", MiscPage)
createButton("Day", MiscPage)
createButton("Night", MiscPage)
createButton("Explode", MiscPage)
createButton("FreeEmotes", MiscPage)
createButton("Serverhop", MiscPage)

-- Criar
return {
	Create = function()
		MainGui.Enabled = true
	end
}
