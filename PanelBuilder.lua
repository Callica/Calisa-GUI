local player = game:GetService("Players").LocalPlayer
repeat task.wait() until player:FindFirstChild("PlayerGui")

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "Calisa_GUI"
MainGui.ResetOnSpawn = false
MainGui.IgnoreGuiInset = true
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainGui.Parent = player:WaitForChild("PlayerGui")

local function createSection(title, parent)
	local section = Instance.new("Frame")
	section.Name = title.."_Section"
	section.Size = UDim2.new(0, 250, 0, 250)
	section.Position = UDim2.new(0, 0, 0, 0)
	section.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	section.BorderSizePixel = 0
	section.Visible = false
	section.Parent = parent
	return section
end

local function createButton(name, text, pos, parent)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Text = text
	btn.Size = UDim2.new(0, 120, 0, 30)
	btn.Position = pos
	btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.GothamBold
	btn.TextSize = 14
	btn.BorderSizePixel = 0
	btn.AutoButtonColor = true
	btn.Parent = parent
	return btn
end

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = MainGui

-- Criar seções
local characterSection = createSection("Character", MainFrame)
local targetSection = createSection("Target", MainFrame)
local miscSection = createSection("Misc", MainFrame)
local gameSection = createSection("Game", MainFrame)
local animationsSection = createSection("Animations", MainFrame)
local utilsSection = createSection("Utils", MainFrame)

-- Botões da aba principal
local y = 10
local function createTabButton(tabName, section)
	local btn = createButton(tabName.."_Button", tabName, UDim2.new(0, 10, 0, y), MainFrame)
	btn.MouseButton1Click:Connect(function()
		for _, child in ipairs(MainFrame:GetChildren()) do
			if child:IsA("Frame") and child.Name:find("_Section") then
				child.Visible = false
			end
		end
		section.Visible = true
	end)
	y = y + 40
end

createTabButton("Character", characterSection)
createTabButton("Target", targetSection)
createTabButton("Misc", miscSection)
createTabButton("Game", gameSection)
createTabButton("Animations", animationsSection)
createTabButton("Utils", utilsSection)

return MainFrame
