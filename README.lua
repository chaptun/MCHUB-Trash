local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Soza13234342/Soza13234342/main/README.lua"))()
local venyx = library.new("SAD HUB", 5013109572)

local themes = {
Glow = Color3.fromRGB(0, 0, 0)
}



local page = venyx:addPage("Auto Farm", 5012544693)
local AutoFarm = page:addSection("Auto Farm")


AutoFarm:addToggle("AutoTap", nil, function(vu)
      _G.autoTap = vu
      while _G.autoTap do wait()
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Tap
Event:FireServer()
      end
end)


AutoFarm:addToggle("Auto Combo", nil, function(a)
      _G.autocombo = a
      while _G.autocombo do wait()
      local Event = game:GetService("ReplicatedStorage").Remotes.Events.UpdateCombo
Event:FireServer()
      end
end)
 --true/false

 AutoFarm:addToggle("Auto UesSuper Tap", nil, function(t)
      _G.UesSuper = t
      while _G.UesSuper do wait()
    game:GetService("ReplicatedStorage").Remotes.Events.UseSuperTap:FireServer()
      end
end)

Worlds = {}
for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
      table.insert(Worlds,v.Name)
end

AutoFarm:addDropdown("Select Rebirth", {1, 2, 3 , 4, 5, 6, 7, 8, 9, 10}, function(string)
      Select = string
   end)

AutoFarm:addToggle("Auto Rebirth", nil, function(t)
      _G.autore = t
      while _G.autore do wait()
            local args = {
                  [1] = Select
              }
              
              game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(unpack(args))
            end
end)
Yens = {}
for i,v in pairs(game:GetService("Workspace").Worlds:GetChildren()) do
      table.insert(Worlds,v.Name)
end
AutoFarm:addDropdown("Select Worlds", Yens, function(string)
      word = string
   end)

   AutoFarm:addToggle("Auto Yen", nil, function(t)
      _G.autoyen = t
while _G.autoyen do wait()
      for i,v in pairs(game:GetService("Workspace").Worlds.StarterWorld.Yen:GetDescendants()) do
          if v.Name == "TouchInterest" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
end
end
end
end)






local page = venyx:addPage("Credit", 5012544693)
local Credit = page:addSection("Credit")




Credit:addButton("Copy Discord", function()
      setclipboard("https://discord.gg/QEbwDH9jC7")
      venyx:Notify("Copy success", "MC HUB      ")
      end)


Credit:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end


local ui = theme:addSection("UI")
ui:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("MC HUB NO.1")
venyx:toggle()
end, function()
print("MC HUB NO.1")
end)
venyx:SelectPage(venyx.pages[1], true) -- no default for more freedom
