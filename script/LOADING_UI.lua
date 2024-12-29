local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Password = "123"  -- Password for accessing the UI

-- Create a Password Input Window
local function showPasswordWindow()
    local PasswordWindow = Rayfield:CreateWindow({
        Name = "Password Required",
        Icon = 0, -- No icon
        LoadingTitle = "Fruit Duplication Script",
        LoadingSubtitle = "Enter Password",
        Theme = "Default",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
    })

    local PasswordTab = PasswordWindow:CreateTab("Enter Password", 4483362458)

    local PasswordSection = PasswordTab:CreateSection("Password Entry")

    -- Create a Textbox for entering the password
    local PasswordInput = PasswordTab:CreateInput({
        Name = "Password",
        CurrentValue = "",
        PlaceholderText = "Enter the password",
        RemoveTextAfterFocusLost = false, -- Keep the value after losing focus
        Flag = "PasswordInput", -- Unique identifier for saving
        Callback = function(Text)
            if Text == Password then
                -- If the password is correct, proceed with the fruit duplication UI
                Rayfield:Notify({
                    Title = "Access Granted",
                    Content = "Password correct! You now have access to the Fruit Duplication UI.",
                    Duration = 4,
                    Image = "rbxassetid://4483342458", -- Optional success icon
                })

                -- Close the password window and show the main UI
                PasswordWindow:Close()
                showMainUI()
            else
                -- If the password is incorrect, show an error message
                Rayfield:Notify({
                    Title = "Error",
                    Content = "Incorrect password. Please try again.",
                    Duration = 4,
                    Image = "rbxassetid://4483342458", -- Optional error icon
                })
            end
        end,
    })
end

-- Function to show the main fruit duplication UI
local function showMainUI()
    local Window = Rayfield:CreateWindow({
        Name = "Rancar Fruit Duper V2.4",
        Icon = 0, -- No icon
        LoadingTitle = "Fruit Duplication Script",
        LoadingSubtitle = "By Rancar",
        Theme = "Default",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
    })

    -- Create a Tab in the Window
    local Tab = Window:CreateTab("Fruit Duplication", 4483362458) -- Title, Image

    -- Create a Section in the Tab
    local Section = Tab:CreateSection("Fruit Duplication Settings")

    -- Create a Toggle to enable/disable fruit duplication
    local Toggle = Tab:CreateToggle({
        Name = "Enable Duplication",
        CurrentValue = false, -- Default to off
        Flag = "Toggle1", -- Unique identifier for saving
        Callback = function(Value)
            print("Fruit Duplication is now " .. (Value and "Enabled" or "Disabled"))
        end,
    })

    -- Create a Textbox for inputting the number of fruits to duplicate (maximum 99)
    local Input = Tab:CreateInput({
        Name = "Number of Fruits",
        CurrentValue = "1", -- Default value is "1"
        PlaceholderText = "Enter number of fruits (max 99)",
        RemoveTextAfterFocusLost = false, -- Keep the value after losing focus
        Flag = "Input1", -- Unique identifier for saving
        Callback = function(Text)
            -- Validate input: ensure it's a number between 1 and 99
            local numFruits = tonumber(Text) or 1  -- Default to 1 if invalid input
            if numFruits > 99 then
                numFruits = 99
                Input:Set("99")  -- Set the input value to 99 if it's over the limit
                print("Maximum allowed fruits is 99. Setting to 99.")
            elseif numFruits < 1 then
                numFruits = 1
                Input:Set("1")  -- Set the input value to 1 if it's less than the limit
                print("Minimum allowed fruits is 1. Setting to 1.")
            end
            print("Number of fruits set to: " .. numFruits)
        end,
    })

    -- Create a Button to simulate fruit duplication (just prints a message)
    local Button = Tab:CreateButton({
        Name = "Dupe Fruits",
        Callback = function()
            local numFruits = tonumber(Input:Get()) or 1  -- Get the value from the input textbox
            if Toggle.CurrentValue then
                for i = 1, numFruits do
                    -- Simulate fruit duplication
                    print("Fruit Duped: " .. i)
                end
            else
                Rayfield:Notify({
                    Title = "Error",
                    Content = "You need to enable duplication first.",
                    Duration = 4,
                    Image = "rbxassetid://4483342458", -- Optional error icon
                })
            end
        end,
    })

    -- Optionally, set values on elements programmatically
    Input:Set("5")  -- Set the number of fruits to 5 by default
    Toggle:Set(true) -- Enable fruit duplication by default

    -- Show a notification when the script starts
    Rayfield:Notify({
       Title = "Rancar Fruit Duper",
       Content = "Welcome to the fruit duplicator! Press the button to duplicate fruits.",
       Duration = 5,
       Image = "rewind", -- Optional image, you can replace with a valid image ID or leave it out
    })
end

-- Show the password window when the script runs
showPasswordWindow()
