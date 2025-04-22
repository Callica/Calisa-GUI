-- Panel.lua (layout moderno com abas e conteúdo funcional)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Criar GUI
local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.Name = "CalisaPanel"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 600, 0, 400)
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Name = "MainFrame"
MainFrame.Visible = true

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 6)

-- Aba lateral
local SideBar = Instance.new("Frame", MainFrame)
SideBar.Size = UDim2.new(0, 130, 1, 0)
SideBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SideBar.BorderSizePixel = 0
SideBar.Name = "SideBar"

local UIListLayout = Instance.new("UIListLayout", SideBar)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

-- Área de conteúdo
local ContentFrame = Instance.new("Frame", MainFrame)
ContentFrame.Position = UDim2.new(0, 140, 0, 0)
ContentFrame.Size = UDim2.new(1, -140, 1, 0)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Name = "Content"

-- Aba e conteúdo exemplo
local sections = {
    {Name = "Character", Buttons = {
        {"Fly", function() print("Fly ativado") end},
        {"WalkSpeed", function() print("WalkSpeed ativado") end},
        {"JumpPower", function() print("JumpPower ativado") end},
        {"Save Checkpoint", function() print("Checkpoint salvo") end},
        {"Clear Checkpoint", function() print("Checkpoint limpo") end},
        {"Respawn", function() print("Respawn") end}
    }},
    {Name = "Target", Buttons = {
        {"Fling", function() print("Fling") end},
        {"Bang", function() print("Bang") end},
        {"Doggy", function() print("Doggy") end},
        {"Drag", function() print("Drag") end},
        {"View", function() print("View") end},
        {"Teleport", function() print("Teleport") end},
        {"Headsit", function() print("Headsit") end}
    }}
}

-- Função para mudar conteúdo
local function showSection(buttons)
    ContentFrame:ClearAllChildren()
    for _, btnData in ipairs(buttons) do
        local button = Instance.new("TextButton", ContentFrame)
        button.Size = UDim2.new(1, -20, 0, 35)
        button.Position = UDim2.new(0, 10, 0, 0)
        button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        button.Text = btnData[1]
        button.Font = Enum.Font.Gotham
        button.TextColor3 = Color3.new(1, 1, 1)
        button.TextSize = 14
        button.AutoButtonColor = true

        local corner = Instance.new("UICorner", button)
        corner.CornerRadius = UDim.new(0, 4)

        button.MouseButton1Click:Connect(btnData[2])
    end
end

-- Criar botões de abas
for _, section in ipairs(sections) do
    local tabBtn = Instance.new("TextButton", SideBar)
    tabBtn.Size = UDim2.new(1, 0, 0, 40)
    tabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    tabBtn.Text = section.Name
    tabBtn.Font = Enum.Font.GothamBold
    tabBtn.TextColor3 = Color3.new(1, 1, 1)
    tabBtn.TextSize = 14
    tabBtn.AutoButtonColor = true

    local corner = Instance.new("UICorner", tabBtn)
    corner.CornerRadius = UDim.new(0, 4)

    tabBtn.MouseButton1Click:Connect(function()
        showSection(section.Buttons)
    end)
end

-- Mostrar primeira aba
showSection(sections[1].Buttons)
