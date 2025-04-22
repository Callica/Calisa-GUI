-- SERVIÇOS
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local GUI = script.Parent:WaitForChild("gui")

-- GUI
local MainFrame = GUI:WaitForChild("MainFrame")
local Sections = {
    Character = MainFrame:WaitForChild("Character_Section"),
    Target = MainFrame:WaitForChild("Target_Section"),
    Animations = MainFrame:WaitForChild("Animations_Section"),
    Misc = MainFrame:WaitForChild("Misc_Section")
}
local Buttons = {
    Character = MainFrame:WaitForChild("Character_Section_Button"),
    Target = MainFrame:WaitForChild("Target_Section_Button"),
    Animations = MainFrame:WaitForChild("Animations_Section_Button"),
    Misc = MainFrame:WaitForChild("Misc_Section_Button")
}

-- ALTERNAR ABAS
local function ShowSection(section)
    for name, frame in pairs(Sections) do
        frame.Visible = (name == section)
    end
end

for name, btn in pairs(Buttons) do
    btn.MouseButton1Click:Connect(function()
        ShowSection(name)
    end)
end

-- >>>>>> CHARACTER
local Fly = require(script.Parent.modules.character.Fly)
local WalkSpeed = require(script.Parent.modules.character.WalkSpeed)
local JumpPower = require(script.Parent.modules.character.JumpPower)
local Checkpoint = require(script.Parent.modules.character.SaveCheckpoint)
local ClearCheckpoint = require(script.Parent.modules.character.ClearCheckpoint)
local Respawn = require(script.Parent.modules.character.Respawn)

MainFrame.Fly_Button.MouseButton1Click:Connect(function()
    Fly.Toggle()
end)
MainFrame.FlySpeed_Box.FocusLost:Connect(function()
    Fly.SetSpeed(MainFrame.FlySpeed_Box.Text)
end)
MainFrame.WalkSpeed_Box.FocusLost:Connect(function()
    WalkSpeed.SetSpeed(MainFrame.WalkSpeed_Box.Text)
end)
MainFrame.JumpPower_Box.FocusLost:Connect(function()
    JumpPower.SetPower(MainFrame.JumpPower_Box.Text)
end)
MainFrame.SaveCheckpoint_Button.MouseButton1Click:Connect(function()
    Checkpoint.Save()
end)
MainFrame.ClearCheckpoint_Button.MouseButton1Click:Connect(function()
    ClearCheckpoint.Run()
end)
MainFrame.Respawn_Button.MouseButton1Click:Connect(function()
    Respawn.Run()
end)

-- >>>>>> TARGET
local Bang = require(script.Parent.modules.target.Bang)
local Doggy = require(script.Parent.modules.target.Doggy)
local Drag = require(script.Parent.modules.target.Drag)
local View = require(script.Parent.modules.target.View)
local Teleport = require(script.Parent.modules.target.Teleport)
local Headsit = require(script.Parent.modules.target.Headsit)
local Stand = require(script.Parent.modules.target.Stand)
local Whitelist = require(script.Parent.modules.target.Whitelist)
local Backpack = require(script.Parent.modules.target.Backpack)
local Fling = require(script.Parent.modules.target.Fling)
local GetPlayer = require(script.Parent.modules.utils.GetPlayer)

local targetNameBox = MainFrame:WaitForChild("Target_Box")
local function getTarget()
    return GetPlayer.FromName(targetNameBox.Text)
end

MainFrame.Bang_Button.MouseButton1Click:Connect(function()
    Bang.Run(getTarget())
end)
MainFrame.Doggy_Button.MouseButton1Click:Connect(function()
    Doggy.Run(getTarget())
end)
MainFrame.Drag_Button.MouseButton1Click:Connect(function()
    Drag.Toggle(getTarget())
end)
MainFrame.View_Button.MouseButton1Click:Connect(function()
    View.Toggle(getTarget())
end)
MainFrame.Teleport_Button.MouseButton1Click:Connect(function()
    Teleport.ToTarget(getTarget())
end)
MainFrame.Headsit_Button.MouseButton1Click:Connect(function()
    Headsit.Run(getTarget())
end)
MainFrame.Stand_Button.MouseButton1Click:Connect(function()
    Stand.Run(getTarget())
end)
MainFrame.Whitelist_Button.MouseButton1Click:Connect(function()
    Whitelist.Toggle(getTarget())
end)
MainFrame.Backpack_Button.MouseButton1Click:Connect(function()
    Backpack.Drop(getTarget())
end)
MainFrame.Fling_Button.MouseButton1Click:Connect(function()
    Fling.Run(getTarget())
end)

-- >>>>>> ANIMATIONS
local anims = {
    Hero = "PlayHero", Zombie = "PlayZombie", Ghost = "PlayGhost", Vampire = "PlayVampire", Mage = "PlayMage",
    Elder = "PlayElder", Knight = "PlayKnight", Pirate = "PlayPirate", Popstar = "PlayPopstar",
    Princess = "PlayPrincess", Cowboy = "PlayCowboy", Ninja = "PlayNinja", Astronaut = "PlayAstronaut",
    Confident = "PlayConfident", Sneaky = "PlaySneaky", Werewolf = "PlayWerewolf", ZombieFE = "PlayZombieFE",
    Cartoon = "PlayCartoon", Toy = "PlayToy", Levitation = "PlayLevitation"
}
for name, moduleName in pairs(anims) do
    local mod = require(script.Parent.modules.animations[moduleName])
    MainFrame[name.."_Button"].MouseButton1Click:Connect(function()
        mod.Run()
    end)
end

-- >>>>>> MISC
local AntiFling = require(script.Parent.modules.misc.AntiFling)
local AntiAFK = require(script.Parent.modules.misc.AntiAFK)
local AntiChatSpy = require(script.Parent.modules.misc.AntiChatSpy)
local Rejoin = require(script.Parent.modules.misc.Rejoin)
local Day = require(script.Parent.modules.misc.Day)
local Night = require(script.Parent.modules.misc.Night)
local Explode = require(script.Parent.modules.misc.Explode)
local FreeEmotes = require(script.Parent.modules.misc.FreeEmotes)
local Serverhop = require(script.Parent.modules.misc.Serverhop)

MainFrame.AntiFling_Button.MouseButton1Click:Connect(function()
    AntiFling.Toggle()
end)
MainFrame.AntiAFK_Button.MouseButton1Click:Connect(function()
    AntiAFK.Enable()
end)
MainFrame.AntiChatSpy_Button.MouseButton1Click:Connect(function()
    AntiChatSpy.Run()
end)
MainFrame.Rejoin_Button.MouseButton1Click:Connect(function()
    Rejoin.Run()
end)
MainFrame.Day_Button.MouseButton1Click:Connect(function()
    Day.Set()
end)
MainFrame.Night_Button.MouseButton1Click:Connect(function()
    Night.Set()
end)
MainFrame.Explode_Button.MouseButton1Click:Connect(function()
    Explode.Run()
end)
MainFrame.FreeEmotes_Button.MouseButton1Click:Connect(function()
    FreeEmotes.Enable()
end)
MainFrame.Serverhop_Button.MouseButton1Click:Connect(function()
    Serverhop.Run()
end)
