local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MC HUB | Anime Tappers", "BloodTheme")

local Tab = Window:NewTab("AutoFarm")
local Section = Tab:NewSection("AutoFarm")


Section:NewToggle("AutoTap", "ToggleInfo", function(vu)
     _G.autoTap = vu
      while _G.autoTap do wait()
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Tap
Event:FireServer()
      end
end)

Section:NewToggle("Auto Combo", "ToggleInfo", function(a)
     _G.autocombo = a
      while _G.autocombo do wait()
      local Event = game:GetService("ReplicatedStorage").Remotes.Events.UpdateCombo
Event:FireServer()
      end
end)

Section:NewToggle("Auto UesSuper Tap", "ToggleInfo", function(t)
     _G.UesSuper = t
      while _G.UesSuper do wait()
    game:GetService("ReplicatedStorage").Remotes.Events.UseSuperTap:FireServer()
      end
end)

Yens = {}
for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
      table.insert(Yens,v.Name)
end
Section:NewDropdown("Select Worlds", "DropdownInf", Yens, function(string)
      word = string
   end)


Section:NewToggle("Auto Yen", "ToggleInfo", function(t)
    _G.autoyen = t
while _G.autoyen do wait()
      for i,v in pairs(game:GetService("Workspace").Worlds.StarterWorld.Yen:GetDescendants()) do
          if v.Name == "TouchInterest" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
end
end
end
end)

local Rebirth = Tab:NewSection("Rebirth")
Worlds = {}
for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
      table.insert(Worlds,v.Name)
end


Rebirth:NewDropdown("Select Rebirth", "DropdownInf", {1, 2, 3 , 4, 5, 6, 7, 8, 9, 10}, function(string)
    Select = string
end)


Rebirth:NewToggle("Auto Rebirth", "ToggleInfo", function(t)
      _G.autore = t
      while _G.autore do wait()
            local args = {
                  [1] = Select
              }
              
              game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(unpack(args))
            end
end)


local Tab = Window:NewTab("Credit")
local Credit = Tab:NewSection("Credit")


Credit:NewButton("Copy Discord", "ButtonInfo", function()
    setclipboard("https://discord.gg/QEbwDH9jC7")
      end)
