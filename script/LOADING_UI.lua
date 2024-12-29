local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Rancar Blox Fruits Hub",
    Icon = 0, -- No icon
    LoadingTitle = "Blox Fruit Script",
    LoadingSubtitle = "By Rancar",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
})

-- Create a Tab in the Window
local Tab = Window:CreateTab("Scripts", 4483362458) -- Title, Image

-- Create a Section in the Tab
local Section = Tab:CreateSection("Available Scripts")

-- Create a Button for Trade Scam
local TradeScamButton = Tab:CreateButton({
    Name = "Trade Scam",
    Callback = function()
        -- Show loading UI and execute the script
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua', true))()

        -- Destroy the UI after executing
        Rayfield:Destroy()
    end,
})

-- Create a Button for Dupe Fruits
local DupeFruitsButton = Tab:CreateButton({
    Name = "Dupe Fruits",
    Callback = function()
        -- Show loading UI and execute the script
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua', true))()

        -- Destroy the UI after executing
        Rayfield:Destroy()
    end,
})

-- Show a notification when the script starts
Rayfield:Notify({
    Title = "Rancar Blox Fruits Hub",
    Content = "Welcome to the hub! Choose a script to run.",
    Duration = 5,
    Image = "rbxassetid://4483342458", -- Optional image, you can replace with a valid image ID or leave it out
})
