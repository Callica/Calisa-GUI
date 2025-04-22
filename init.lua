-- Calisa GUI Loader (sem splash)
local function load(url)
    return loadstring(game:HttpGet(url))()
end

-- Defina seu usuário e repositório
local user = "Callica"
local repo = "Calisa-GUI"

-- Load GUI
local gui = load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/PanelBuilder.lua")
local built = gui and gui.Create and gui:Create()

-- Load Main
pcall(function()
    load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/main.lua")
end)
