local TweenService = game:GetService("TweenService")

local gui = Instance.new("ScreenGui")
gui.Name = "CalisaSplash"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)

local label = Instance.new("TextLabel", frame)
label.Size = UDim2.new(1, 0, 0, 100)
label.Position = UDim2.new(0, 0, 0.4, 0)
label.Text = "Calisa GUI"
label.Font = Enum.Font.GothamBlack
label.TextSize = 50
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1

local sub = Instance.new("TextLabel", frame)
sub.Size = UDim2.new(1, 0, 0, 30)
sub.Position = UDim2.new(0, 0, 0.5, 40)
sub.Text = "powered by Calica & Isa"
sub.Font = Enum.Font.Gotham
sub.TextSize = 18
sub.TextColor3 = Color3.fromRGB(200, 200, 200)
sub.BackgroundTransparency = 1

-- Fade-in
label.TextTransparency = 1
sub.TextTransparency = 1

TweenService:Create(label, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
TweenService:Create(sub, TweenInfo.new(0.5), {TextTransparency = 0}):Play()

-- Aguarda e fecha
task.wait(2)
TweenService:Create(frame, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
TweenService:Create(label, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
TweenService:Create(sub, TweenInfo.new(0.4), {TextTransparency = 1}):Play()

task.wait(0.5)
gui:Destroy()
