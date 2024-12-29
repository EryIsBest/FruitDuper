local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local placeID = game.PlaceId  -- Get the current place ID

-- Check if the current place ID matches any of the specified IDs
if placeID == 7449423635 or placeID == 4442272183 or placeID == 2753915549 then
    -- Create the Rayfield Window
    local Window = Rayfield:CreateWindow({
        Name = "Rancar Hub",
        Icon = 0,
        LoadingTitle = "Rancar Hub",
        LoadingSubtitle = "by Hanan481",
        Theme = "Default",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
    })

    -- Create a Tab for Blox Fruits
    local Tab = Window:CreateTab("Blox Fruits", 4483362458)

    -- Create a Section for the Blox Fruits features
    local Section = Tab:CreateSection("Blox Fruits Options")

    -- Create a Button for the Trade Scam feature
    local TradeButton = Tab:CreateButton({
        Name = "Trade Scam",
        Callback = function()
            -- When clicked, destroy the buttons and execute the script
            TradeButton:Destroy()
            DupeButton:Destroy()
            -- Execute the external script from the URL
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua', true))()
        end,
    })

    -- Create a Button for the Dupe Fruits feature
    local DupeButton = Tab:CreateButton({
        Name = "Dupe Fruits",
        Callback = function()
            -- When clicked, destroy the buttons and execute the script
            TradeButton:Destroy()
            DupeButton:Destroy()
            -- Execute the external script from the URL
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua', true))()
        end,
    })
else
    -- If the place ID doesn't match, show a message
    Rayfield:Notify({
        Title = "Rancar Hub",
        Content = "This script is only available for specified game places.",
        Duration = 4,
        Image = "rbxassetid://4483362458", -- Error icon
    })
end
