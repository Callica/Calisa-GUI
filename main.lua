-- Calisa GUI - main.lua via loadstring (sem require, compatível com GitHub)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local GUI = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Calisa_GUI")
local MainFrame = GUI:WaitForChild("MainFrame")

-- Character
local Fly = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/character/Fly.lua"))()
local WalkSpeed = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/character/WalkSpeed.lua"))()
local JumpPower = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/character/JumpPower.lua"))()
local Checkpoint = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/character/SaveCheckpoint.lua"))()
local ClearCheckpoint = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/character/ClearCheckpoint.lua"))()
local Respawn = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/character/Respawn.lua"))()

-- Target
local Bang = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Bang.lua"))()
local Doggy = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Doggy.lua"))()
local Drag = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Drag.lua"))()
local View = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/View.lua"))()
local Teleport = loadstring(game:HttpGet("https://raw.githubulsercontent.com/Callica/Calisa-GUI/main/modules/target/Teleport.lua"))()
local Headsit = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Headsit.lua"))()
local Stand = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Stand.lua"))()
local Whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Whitelist.lua"))()
local Backpack = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Backpack.lua"))()
local Fling = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/target/Fling.lua"))()
local GetPlayer = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/utils/GetPlayer.lua"))()

-- Animations
local PlayAnim = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/utils/PlayAnim.lua"))()
local anims = {
    Hero = 180435571, Zombie = 616006778, Ghost = 616006556, Vampire = 619537468,
    Mage = 619535540, Elder = 845397899, Knight = 1083445855, Pirate = 591872667,
    Popstar = 1212900985, Princess = 1212900995, Cowboy = 10108231018, Ninja = 656117878,
    Astronaut = 891621366, Confident = 1069977952, Sneaky = 616006760,
    Werewolf = 1083195517, ZombieFE = 616006778, Cartoon = 1092114234,
    Toy = 782841498, Levitation = 619537291
}

-- Misc
local AntiFling = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/AntiFling.lua"))()
local AntiAFK = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/AntiAFK.lua"))()
local AntiChatSpy = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/AntiChatSpy.lua"))()
local Rejoin = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/Rejoin.lua"))()
local Day = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/Day.lua"))()
local Night = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/Night.lua"))()
local Explode = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/Explode.lua"))()
local FreeEmotes = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/FreeEmotes.lua"))()
local Serverhop = loadstring(game:HttpGet("https://raw.githubusercontent.com/Callica/Calisa-GUI/main/modules/misc/Serverhop.lua"))()

-- Character buttons
MainFrame.Fly_Button.MouseButton1Click:Connect(function() Fly.Toggle() end)
MainFrame.FlySpeed_Box.FocusLost:Connect(function() Fly.SetSpeed(MainFrame.FlySpeed_Box.Text) end)
MainFrame.WalkSpeed_Box.FocusLost:Connect(function() WalkSpeed.SetSpeed(MainFrame.WalkSpeed_Box.Text) end)
MainFrame.JumpPower_Box.FocusLost:Connect(function() JumpPower.SetPower(MainFrame.JumpPower_Box.Text) end)
MainFrame.SaveCheckpoint_Button.MouseButton1Click:Connect(function() Checkpoint.Save() end)
MainFrame.ClearCheckpoint_Button.MouseButton1Click:Connect(function() ClearCheckpoint.Run() end)
MainFrame.Respawn_Button.MouseButton1Click:Connect(function() Respawn.Run() end)

-- Target buttons
local function getTarget()
    return GetPlayer.FromName(MainFrame.Target_Box.Text)
end

MainFrame.Bang_Button.MouseButton1Click:Connect(function() Bang.Run(getTarget()) end)
MainFrame.Doggy_Button.MouseButton1Click:Connect(function() Doggy.Run(getTarget()) end)
MainFrame.Drag_Button.MouseButton1Click:Connect(function() Drag.Toggle(getTarget()) end)
MainFrame.View_Button.MouseButton1Click:Connect(function() View.Toggle(getTarget()) end)
MainFrame.Teleport_Button.MouseButton1Click:Connect(function() Teleport.ToTarget(getTarget()) end)
MainFrame.Headsit_Button.MouseButton1Click:Connect(function() Headsit.Run(getTarget()) end)
MainFrame.Stand_Button.MouseButton1Click:Connect(function() Stand.Run(getTarget()) end)
MainFrame.Whitelist_Button.MouseButton1Click:Connect(function() Whitelist.Toggle(getTarget()) end)
MainFrame.Backpack_Button.MouseButton1Click:Connect(function() Backpack.Drop(getTarget()) end)
MainFrame.Fling_Button.MouseButton1Click:Connect(function() Fling.Run(getTarget()) end)

-- Animations buttons
for name, id in pairs(anims) do
    local button = MainFrame:FindFirstChild(name.."_Button")
    if button then
        button.MouseButton1Click:Connect(function()
            PlayAnim.Load(id)
        end)
    end
end

-- Misc buttons
MainFrame.AntiFling_Button.MouseButton1Click:Connect(function() AntiFling.Toggle() end)
MainFrame.AntiAFK_Button.MouseButton1Click:Connect(function() AntiAFK.Enable() end)
MainFrame.AntiChatSpy_Button.MouseButton1Click:Connect(function() AntiChatSpy.Run() end)
MainFrame.Rejoin_Button.MouseButton1Click:Connect(function() Rejoin.Run() end)
MainFrame.Day_Button.MouseButton1Click:Connect(function() Day.Set() end)
MainFrame.Night_Button.MouseButton1Click:Connect(function() Night.Set() end)
MainFrame.Explode_Button.MouseButton1Click:Connect(function() Explode.Run() end)
MainFrame.FreeEmotes_Button.MouseButton1Click:Connect(function() FreeEmotes.Enable() end)
MainFrame.Serverhop_Button.MouseButton1Click:Connect(function() Serverhop.Run() end)
