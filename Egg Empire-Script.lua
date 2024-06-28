--[[
=========≠=========
Private Hub Presents..
Egg Empire Script.
=========≠=========
Features:
- Auto Farm - ✓
- Auto Collect - ✓
- Auto Deposit - ✓
- Inf/Add Chickens - ✓
- Auto Buy Workers - ✓
- Auto Upgrade (Lv.1 - ✓
=========≠=========
Status: 🙂
(🙂 = Work, 😢 = No Work, 😭 = patched)
Created by @Toilet#71
=========≠=========
--]]

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Egg Empire - "..tostring(identifyexecutor()))

--fuctions
local function GetAge(plr)
return plr.AccountAge
end

local function GetName(plr)
return plr.Name
end

local function GetGameId()
return game.PlaceId
end

local function GetGameName()
--Script by Infinite Yield
local PlaceId = game.PlaceId
local MarketplaceService = game:GetService("MarketplaceService")
local Asset = MarketplaceService:GetProductInfo(PlaceId)
return Asset.Name
end

local Farm = Window:NewSection("[ #Farm ]")

Farm:CreateToggle("Auto Collect", function(value)
    getgenv().Ro = value
   
   while Ro do
   wait()
   game:GetService("ReplicatedStorage").events.remotes.collectEggs:FireServer()
            
    end
end)

Farm:CreateToggle("Auto Deposit", function(value)
    getgenv().Ros = value
   
   while Ros do
   wait()
   game:GetService("ReplicatedStorage").events.remotes.depositEggs:FireServer()
            
    end
end)

Farm:CreateToggle("Add Chickens", function(value)
    getgenv().Ross = value
   
   while Ross do
   wait()
   
            local args = {
    [1] = 1,
    [2] = 0
}

game:GetService("ReplicatedStorage").events.remotes.addChickens:FireServer(unpack(args))

    end
end)

Farm:CreateToggle("Auto Upgrade", function(value)
    getgenv().Ross = value
   
   while Ross do
   wait()
   local args = {
    [1] = "1",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyUpgrade:FireServer(unpack(args))

            local args = {
    [1] = "1",
    [2] = "2"
}

game:GetService("ReplicatedStorage").events.remotes.buyUpgrade:FireServer(unpack(args))

local args = {
    [1] = "1",
    [2] = "3"
}

game:GetService("ReplicatedStorage").events.remotes.buyUpgrade:FireServer(unpack(args))

local args = {
    [1] = "1",
    [2] = "4"
}

game:GetService("ReplicatedStorage").events.remotes.buyUpgrade:FireServer(unpack(args))

    end
end)

Farm:CreateToggle("Auto Buy Workers", function(value)
    getgenv().Rosss = value
   
   while Rosss do
   wait()
   

local args = {
    [1] = "Noob",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))
local args = {
    [1] = "Zombie",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Peasant",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Lumberjack",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Farmer",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Builderman",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Agent",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "CowBoy",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Drew",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Robot",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))

local args = {
    [1] = "Buff Noob",
    [2] = "1"
}

game:GetService("ReplicatedStorage").events.remotes.buyWorker:FireServer(unpack(args))



    end
end)

local InfoSection = Window:NewSection("[ #Info ]")

InfoSection:CreateButton("Game ID : "..GetGameId(), function()

end)

InfoSection:CreateButton("Game Name : "..GetGameName(), function()

end)

InfoSection:CreateButton("Local Age : "..GetAge(game.Players.LocalPlayer), function()

end)

InfoSection:CreateButton("Local Name : @"..GetName(game.Players.LocalPlayer), function()

end)

InfoSection:CreateButton("Executor : "..tostring(identifyexecutor()), function()

end)

local Farm = Window:NewSection("[ Private Hub ]")

local Farm = Window:NewSection("[ Status: 🙂 ]")
