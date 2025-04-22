local ThemeHandler = {}

local themes = {
    dark = {
        background = Color3.fromRGB(25, 25, 25),
        button = Color3.fromRGB(40, 40, 40),
        text = Color3.fromRGB(220, 220, 220)
    },
    purple = {
        background = Color3.fromRGB(30, 0, 60),
        button = Color3.fromRGB(80, 0, 120),
        text = Color3.fromRGB(255, 200, 255)
    },
    hacker = {
        background = Color3.fromRGB(10, 10, 10),
        button = Color3.fromRGB(0, 100, 0),
        text = Color3.fromRGB(0, 255, 0)
    }
}

function ThemeHandler.Apply(themeName, guiRoot)
    local theme = themes[themeName]
    if not theme or not guiRoot then return end

    for _, obj in ipairs(guiRoot:GetDescendants()) do
        if obj:IsA("Frame") or obj:IsA("TextBox") then
            obj.BackgroundColor3 = theme.background
        elseif obj:IsA("TextButton") then
            obj.BackgroundColor3 = theme.button
            obj.TextColor3 = theme.text
        elseif obj:IsA("TextLabel") then
            obj.TextColor3 = theme.text
        end
    end
end

return ThemeHandler
