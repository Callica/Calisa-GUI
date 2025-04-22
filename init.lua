-- Calisa GUI Loader (host via GitHub)
local function load(url)
    return loadstring(game:HttpGet(url))()
end

-- Defina seu usuário e repositório
local user = "SEU_USUARIO"
local repo = "Calisa-GUI"

-- Load SplashScreen
pcall(function()
    load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/SplashScreen.lua")
end)

-- Load GUI
local gui = load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/PanelBuilder.lua")
local built = gui and gui.Create and gui:Create()

-- Load Main
pcall(function()
    load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/main.lua")
end)
