-- Calisa GUI Loader (pra estrutura raiz do repositório)
local function load(url)
    return loadstring(game:HttpGet(url))()
end

local base = "https://raw.githubusercontent.com/Callica/Calisa-GUI/main/"

-- Splash Screen
pcall(function()
    load(base.."SplashScreen.lua")
end)

-- Criar GUI
local builder = load(base.."PanelBuilder.lua")
if builder and builder.Create then
    builder.Create()
end

-- Rodar lógica principal
pcall(function()
    load(base.."main.lua")
end)
