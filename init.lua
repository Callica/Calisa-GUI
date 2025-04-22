-- Calisa GUI Loader (host via GitHub)
local function load(url)
    return loadstring(game:HttpGet(url))()
end

-- Defina seu usuário e repositório
local user = "Callica"
local repo = "Calisa-GUI"
local base = "https://raw.githubusercontent.com/"..user.."/"..repo.."/main/"

-- Load SplashScreen
pcall(function()
    load(base.."SplashScreen.lua")
end)

-- Load GUI
local builder = load(base.."PanelBuilder.lua")
if builder and builder.Create then
    builder.Create()
end

-- Load Main
pcall(function()
    load(base.."main.lua")
end)
