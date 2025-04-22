local PanelBuilder = {}

function PanelBuilder.Create()
    local gui = Instance.new("ScreenGui")
    gui.Name = "CalisaGUI"
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local function createFrame(name, size, pos, parent)
        local frame = Instance.new("Frame")
        frame.Name = name
        frame.Size = size
        frame.Position = pos
        frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        frame.BorderSizePixel = 0
        frame.Visible = false
        frame.Parent = parent

        local corner = Instance.new("UICorner", frame)
        corner.CornerRadius = UDim.new(0, 8)

        return frame
    end

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 550, 0, 350)
    MainFrame.Position = UDim2.new(0.5, -275, 0.5, -175)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Parent = gui

    local cornerMain = Instance.new("UICorner", MainFrame)
    cornerMain.CornerRadius = UDim.new(0, 10)

    -- Seções
    local sections = {
        "Character_Section", "Target_Section", "Animations_Section", "Misc_Section"
    }

    for i, name in ipairs(sections) do
        local sec = createFrame(name, UDim2.new(1, -10, 1, -50), UDim2.new(0, 5, 0, 45), MainFrame)
        if i == 1 then sec.Visible = true end
    end

    -- Botões de navegação
    local buttonNames = {
        {"Character_Section_Button", "Character"},
        {"Target_Section_Button", "Target"},
        {"Animations_Section_Button", "Animations"},
        {"Misc_Section_Button", "Misc"}
    }

    for i, data in ipairs(buttonNames) do
        local btn = Instance.new("TextButton")
        btn.Name = data[1]
        btn.Text = data[2]
        btn.Size = UDim2.new(0, 120, 0, 30)
        btn.Position = UDim2.new(0, 10 + ((i - 1) * 130), 0, 10)
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.fromRGB(220, 220, 220)
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 14
        btn.Parent = MainFrame

        local corner = Instance.new("UICorner", btn)
        corner.CornerRadius = UDim.new(0, 6)

        local stroke = Instance.new("UIStroke", btn)
        stroke.Thickness = 1
        stroke.Color = Color3.fromRGB(60, 60, 60)
    end

    
    -- Botão flutuante para abrir/fechar o painel
    local Toggle = Instance.new("TextButton")
    Toggle.Name = "Toggle_Button"
    Toggle.Size = UDim2.new(0, 100, 0, 35)
    Toggle.Position = UDim2.new(0, 10, 1, -45)
    Toggle.Text = "Calisa GUI"
    Toggle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    Toggle.Font = Enum.Font.GothamBold
    Toggle.TextSize = 14
    Toggle.Parent = gui

    Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 6)
    Instance.new("UIStroke", Toggle).Color = Color3.fromRGB(80, 80, 80)

    Toggle.MouseButton1Click:Connect(function()
        MainFrame.Visible = not MainFrame.Visible
    end)

return gui
end

return PanelBuilder

    -- >>>>>> ABA CHARACTER (botões e caixas)
    local characterSection = MainFrame:WaitForChild("Character_Section")

    local function createButton(name, text, pos, parent)
        local btn = Instance.new("TextButton")
        btn.Name = name
        btn.Text = text
        btn.Size = UDim2.new(0, 130, 0, 28)
        btn.Position = pos
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btn.TextColor3 = Color3.fromRGB(220, 220, 220)
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 14
        btn.Parent = parent

        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        Instance.new("UIStroke", btn).Color = Color3.fromRGB(60, 60, 60)
        return btn
    end

    local function createBox(name, placeholder, pos, parent)
        local box = Instance.new("TextBox")
        box.Name = name
        box.PlaceholderText = placeholder
        box.Size = UDim2.new(0, 130, 0, 28)
        box.Position = pos
        box.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        box.TextColor3 = Color3.fromRGB(255, 255, 255)
        box.Font = Enum.Font.Gotham
        box.TextSize = 14
        box.ClearTextOnFocus = false
        box.Text = ""
        box.Parent = parent

        Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
        Instance.new("UIStroke", box).Color = Color3.fromRGB(60, 60, 60)
        return box
    end

    createButton("Fly_Button", "Fly", UDim2.new(0, 10, 0, 10), characterSection)
    createBox("FlySpeed_Box", "Fly Speed", UDim2.new(0, 150, 0, 10), characterSection)

    createBox("WalkSpeed_Box", "Walk Speed", UDim2.new(0, 10, 0, 50), characterSection)
    createBox("JumpPower_Box", "Jump Power", UDim2.new(0, 150, 0, 50), characterSection)

    createButton("SaveCheckpoint_Button", "Save Checkpoint", UDim2.new(0, 10, 0, 90), characterSection)
    createButton("ClearCheckpoint_Button", "Clear Checkpoint", UDim2.new(0, 150, 0, 90), characterSection)
    createButton("Respawn_Button", "Respawn", UDim2.new(0, 10, 0, 130), characterSection)

    -- >>>>>> ABA TARGET (botões e caixa de input)
    local targetSection = MainFrame:WaitForChild("Target_Section")

    createBox("Target_Box", "Target Player", UDim2.new(0, 10, 0, 10), targetSection)

    createButton("Bang_Button", "Bang", UDim2.new(0, 10, 0, 50), targetSection)
    createButton("Doggy_Button", "Doggy", UDim2.new(0, 150, 0, 50), targetSection)
    createButton("Drag_Button", "Drag", UDim2.new(0, 10, 0, 90), targetSection)
    createButton("View_Button", "View", UDim2.new(0, 150, 0, 90), targetSection)
    createButton("Teleport_Button", "Teleport", UDim2.new(0, 10, 0, 130), targetSection)
    createButton("Headsit_Button", "Headsit", UDim2.new(0, 150, 0, 130), targetSection)
    createButton("Stand_Button", "Stand", UDim2.new(0, 10, 0, 170), targetSection)
    createButton("Whitelist_Button", "Whitelist", UDim2.new(0, 150, 0, 170), targetSection)
    createButton("Backpack_Button", "Drop Backpack", UDim2.new(0, 10, 0, 210), targetSection)
    createButton("Fling_Button", "Fling", UDim2.new(0, 150, 0, 210), targetSection)

    -- >>>>>> ABA ANIMATIONS (botões de animações)
    local animSection = MainFrame:WaitForChild("Animations_Section")

    local anims = {
        {"Hero_Button", "Hero"}, {"Zombie_Button", "Zombie"}, {"Ghost_Button", "Ghost"},
        {"Vampire_Button", "Vampire"}, {"Mage_Button", "Mage"}, {"Elder_Button", "Elder"},
        {"Knight_Button", "Knight"}, {"Pirate_Button", "Pirate"}, {"Popstar_Button", "Popstar"},
        {"Princess_Button", "Princess"}, {"Cowboy_Button", "Cowboy"}, {"Ninja_Button", "Ninja"},
        {"Astronaut_Button", "Astronaut"}, {"Confident_Button", "Confident"}, {"Sneaky_Button", "Sneaky"},
        {"Werewolf_Button", "Werewolf"}, {"ZombieFE_Button", "ZombieFE"}, {"Cartoon_Button", "Cartoon"},
        {"Toy_Button", "Toy"}, {"Levitation_Button", "Levitation"}
    }

    local x, y = 10, 10
    for i, data in ipairs(anims) do
        createButton(data[1], data[2], UDim2.new(0, x, 0, y), animSection)
        if x >= 400 then
            x = 10
            y = y + 40
        else
            x = x + 140
        end
    end

    -- >>>>>> ABA MISC (botões de funções gerais)
    local miscSection = MainFrame:WaitForChild("Misc_Section")

    local miscButtons = {
        {"AntiFling_Button", "Anti Fling"}, {"AntiAFK_Button", "Anti AFK"},
        {"AntiChatSpy_Button", "Anti ChatSpy"}, {"Rejoin_Button", "Rejoin"},
        {"Day_Button", "Day"}, {"Night_Button", "Night"},
        {"Explode_Button", "Explode"}, {"FreeEmotes_Button", "Free Emotes"},
        {"Serverhop_Button", "Serverhop"},
        {"DarkTheme_Button", "Dark Theme"}, {"PurpleTheme_Button", "Purple Theme"}, {"HackerTheme_Button", "Hacker Theme"}
    }

    local x, y = 10, 10
    for i, data in ipairs(miscButtons) do
        createButton(data[1], data[2], UDim2.new(0, x, 0, y), miscSection)
        if x >= 400 then
            x = 10
            y = y + 40
        else
            x = x + 140
        end
    end
