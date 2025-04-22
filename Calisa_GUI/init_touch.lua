-- Calisa GUI Loader (versão com botão flutuante para mobile)
local function load(url)
    return loadstring(game:HttpGet(url))()
end

-- Defina seu usuário e repositório
local user = "SEU_USUARIO"
local repo = "Calisa-GUI"

-- Splash Screen
pcall(function()
    load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/SplashScreen.lua")
end)

-- Criar GUI
local builder = load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/PanelBuilder.lua")
if builder and builder.Create then
    builder.Create()
end

-- Rodar lógica principal
pcall(function()
    load("https://raw.githubusercontent.com/"..user.."/"..repo.."/main/main.lua")
end)
