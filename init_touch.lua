-- Calisa GUI Loader (com botão flutuante para mobile)
local function load(url)
    return loadstring(game:HttpGet(url))()
end

local base = "https://raw.githubusercontent.com/Callica/Calisa-GUI/main/"

-- Criar botão flutuante
local btn = Instance.new("TextButton")
btn.Name = "CalisaTouchButton"
btn.Text = "Abrir"
btn.Size = UDim2.new(0, 80, 0, 30)
btn.Position = UDim2.new(1, -90, 1, -40)
btn.AnchorPoint = Vector2.new(0, 0)
btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextScaled = true
btn.Font = Enum.Font.GothamBold
btn.BackgroundTransparency = 0.2
btn.BorderSizePixel = 0
btn.Parent = game:GetService("CoreGui")

-- Ao clicar, carrega o splash, painel e main
btn.MouseButton1Click:Connect(function()
    pcall(function()
        load(base.."SplashScreen.lua")
    end)
    local gui = load(base.."PanelBuilder.lua")
    if gui and gui.Create then
        gui:Create()
    end
    pcall(function()
        load(base.."main.lua")
    end)
end)
