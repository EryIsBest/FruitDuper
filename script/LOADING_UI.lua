local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Function to show the Blox Fruit Script UI
local function showBloxFruitUI()
    local Window = Rayfield:CreateWindow({
        Name = "Blox Fruit Script",
        Icon = 0, -- No icon
        LoadingTitle = "Blox Fruit Script",
        LoadingSubtitle = "By Rancar",
        Theme = "Default",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
    })

    -- Create a Tab in the Window for Scripts
    local Tab = Window:CreateTab("Scripts", 4483362458) -- Title, Image

    -- Create a Section for the "Trade Scam" button
    local TradeScamSection = Tab:CreateSection("Trade Scam")
    TradeScamSection:CreateButton({
        Name = "Trade Scam", 
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua', true))()
        end,
    })

    -- Create a Section for the "Dupe Fruits" button
    local DupeFruitsSection = Tab:CreateSection("Dupe Fruits")
    DupeFruitsSection:CreateButton({
        Name = "Dupe Fruits", 
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua', true))()
        end,
    })

    -- Create a Section for UI Controls
    local DestroyUISection = Tab:CreateSection("UI Controls")
    DestroyUISection:CreateButton({
        Name = "Destroy UI", 
        Callback = function()
            Window:Destroy()
        end,
    })
end

-- Call the function to show the Blox Fruit Script UI
showBloxFruitUI()
