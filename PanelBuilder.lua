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
MainFrame.Size = UDim2.new(0, 600, 0, 360)
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -180)
MainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = MainGui

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", MainFrame).Color = Color3.fromRGB(40, 40, 40)

-- Lateral (abas)
local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 130, 1, 0)
Sidebar.Position = UDim2.new(0, 0, 0, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Sidebar.BorderSizePixel = 0
Sidebar.Parent = MainFrame

Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", Sidebar).Color = Color3.fromRGB(50, 50, 50)

local List = Instance.new("UIListLayout", Sidebar)
List.SortOrder = Enum.SortOrder.LayoutOrder
List.Padding = UDim.new(0, 6)

-- Área de conteúdo
local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -140, 1, -20)
Content.Position = UDim2.new(0, 140, 0, 10)
Content.BackgroundTransparency = 1
Content.Parent = MainFrame

local PageLayout = Instance.new("UIPageLayout", Content)
PageLayout.FillDirection = Enum.FillDirection.Vertical
PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
PageLayout.EasingDirection = Enum.EasingDirection.InOut
PageLayout.EasingStyle = Enum.EasingStyle.Quad
PageLayout.GamepadInputEnabled = false
PageLayout.TouchInputEnabled = false
PageLayout.TweenTime = 0.25

-- Abas e Páginas
local pages = {
    {name = "Character", buttons = {
        {name = "Fly_Button", text = "Fly"},
        {name = "WalkSpeed_Button", text = "WalkSpeed"},
        {name = "JumpPower_Button", text = "JumpPower"},
        {name = "SaveCheckpoint_Button", text = "Save Checkpoint"},
        {name = "ClearCheckpoint_Button", text = "Clear Checkpoint"},
        {name = "Respawn_Button", text = "Respawn"}
    }},
    {name = "Target", buttons = {
        {name = "Target_Box", type = "box"},
        {name = "Bang_Button", text = "Bang"},
        {name = "View_Button", text = "View"},
        {name = "Drag_Button", text = "Drag"},
        {name = "Fling_Button", text = "Fling"},
        {name = "Teleport_Button", text = "Teleport"}
    }},
    {name = "Misc", buttons = {
        {name = "AntiFling_Button", text = "Anti-Fling"},
        {name = "AntiAFK_Button", text = "Anti-AFK"},
        {name = "Day_Button", text = "Day"},
        {name = "Night_Button", text = "Night"},
        {name = "Rejoin_Button", text = "Rejoin"}
    }}
}

for _, tab in pairs(pages) do
    local Page = Instance.new("Frame")
    Page.Name = tab.name .. "_Page"
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.BackgroundTransparency = 1
    Page.Parent = Content

    local layout = Instance.new("UIListLayout", Page)
    layout.Padding = UDim.new(0, 6)
    layout.SortOrder = Enum.SortOrder.LayoutOrder

    for _, btn in pairs(tab.buttons) do
        local element
        if btn.type == "box" then
            element = Instance.new("TextBox")
            element.PlaceholderText = "Enter target"
            element.Text = ""
        else
            element = Instance.new("TextButton")
            element.Text = btn.text
        end
        element.Name = btn.name
        element.Size = UDim2.new(1, -10, 0, 30)
        element.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        element.TextColor3 = Color3.new(1, 1, 1)
        element.Font = Enum.Font.Gotham
        element.TextSize = 14
        element.Parent = Page

        Instance.new("UICorner", element).CornerRadius = UDim.new(0, 6)
        Instance.new("UIStroke", element).Color = Color3.fromRGB(60, 60, 60)
    end

    -- Botão da aba
    local TabButton = Instance.new("TextButton")
    TabButton.Name = tab.name .. "_Tab"
    TabButton.Text = tab.name
    TabButton.Size = UDim2.new(1, -10, 0, 28)
    TabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TabButton.TextColor3 = Color3.new(1, 1, 1)
    TabButton.Font = Enum.Font.GothamBold
    TabButton.TextSize = 14
    TabButton.Parent = Sidebar

    Instance.new("UICorner", TabButton).CornerRadius = UDim.new(0, 6)
    Instance.new("UIStroke", TabButton).Color = Color3.fromRGB(70, 70, 70)

    TabButton.MouseButton1Click:Connect(function()
        PageLayout:JumpTo(Page)
    end)
end

-- Botão fechar
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "Close_Button"
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 28, 0, 28)
CloseButton.Position = UDim2.new(1, -34, 0, 6)
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

return {
    Create = function()
        MainGui.Enabled = true
    end
}
