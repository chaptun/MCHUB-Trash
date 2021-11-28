
if game:GetService("CoreGui"):FindFirstChild("SAD HUB | Bounty") then
    game:GetService("CoreGui"):FindFirstChild("SAD HUB | Bounty"):Destroy()
 end

 local ScreenGui = Instance.new("ScreenGui")
 local ImageLabel = Instance.new("ImageLabel")
 
 ScreenGui.Parent = game.CoreGui
 
 ImageLabel.Parent = ScreenGui
 ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 ImageLabel.Position = UDim2.new(0.128361851, 0, 0.0297951587, 0)
 ImageLabel.Size = UDim2.new(0.492665023, 0, 0.40595904, 0)
 ImageLabel.Image = "rbxassetid://8109671499"
 
 wait(3)
 ImageLabel.Visible = false
 
 local ScreenGui = Instance.new("ScreenGui")
 local ImageLabel = Instance.new("ImageLabel")
 
 ScreenGui.Parent = game.CoreGui
 
 ImageLabel.Parent = ScreenGui
 ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 ImageLabel.Position = UDim2.new(0.128361851, 0, 0.0297951587, 0)
 ImageLabel.Size = UDim2.new(0.492665023, 0, 0.40595904, 0)
 ImageLabel.Image = "rbxassetid://7749679874"
 wait(5)
 ImageLabel.Visible = false

 local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local venyx = library.new("SAD HUB | Bounty", 7100202580)




local page = venyx:addPage("Bounty", 5012544693)
local Players = page:addSection("Bounty")


players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end


   Players:addDropdown("Select Players", players, function(abc)
      Select = abc
   end)

   Players:addButton("Refresh", function()
      table.clear(players,v.Name)
      for i,v in pairs(game:GetService("Players"):GetChildren()) do
         table.insert(players,v.Name)
      end
  end)
Players:addButton("Teleport", function()
   local sp = 10, Enum.EasingStyle.Linear
local tws = game:GetService('TweenService')
local info = TweenInfo.new(sp)
local tw = tws:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame})
tw:Play()
end)


Players:addToggle("Spectate Player", nil, function(value)
   Sp = value
           local plr1 = game.Players.LocalPlayer.Character.Humanoid
           local plr2 = game.Players:FindFirstChild(Select)
           repeat
               wait(.1)
               game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
           until Sp == false
           game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
   end)

   Players:addDropdown("Select Gun", {"Kabucha"}, function(abc)
      _G.GUNSELECT = abc
  end)
  Players:addToggle("Aimbot", nil, function(value)
   if Select == "" and value then
       else
           AimbotLock = value
       end
end)
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()

mouse.Button1Down:Connect(
    function()
        if AimbotLock and game.Players.LocalPlayer.Character:FindFirstChild(_G.GUNSELECT) then
            local args = {
                [1] = game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.HumanoidRootPart.Position,
                [2] = game:GetService("Players"):FindFirstChild(_G.PLAYERSELECT).Character.HumanoidRootPart
            }
            game:GetService("Players").LocalPlayer.Character[_G.GUNSELECT].RemoteFunctionShoot:InvokeServer(
                unpack(args)
            )
        end
    end
)

Players:addToggle("AutoKill Players", nil, function(value)
   _G.Shoot = value
   if _G.Shoot == true then
      while _G.Shoot do wait()
      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.timeToNextAttack = 1
      game:GetService'VirtualUser':CaptureController()
      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.timeToNextAttack = 1
      game:GetService'VirtualUser':CaptureController()
      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.timeToNextAttack = 1
      game:GetService'VirtualUser':CaptureController()
      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1}
      v.HumanoidRootPart.Size = Vector3.new(50,50,50)

      end
   end
   end)


   Players:addToggle("KillTeleport", nil, function(kt)
      AimbotLock = kt
    _G.TT = kt
    if _G.TT == true then
    while _G.TT do wait(0.1)
    game:GetService "VirtualUser":CaptureController()
    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
local sp = 35,Enum.EasingStyle.Linear
local tws = game:GetService('TweenService')
local info = TweenInfo.new(sp)
local tw = tws:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = game.Players[Select ].Character.HumanoidRootPart.CFrame * CFrame.new(0,-15,0)})
tw:Play()
	wait()
local sp2 = 30,Enum.EasingStyle.Linear
local tws = game:GetService('TweenService')
local info = TweenInfo.new(sp2)
local tw = tws:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, info, {CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame * CFrame.new(0,-15,0)})
tw:Play()
    end
end
_G.WalkWater = true
if _G.WalkWater == true then
	game.Players.LocalPlayer.Data.DevilFruit.Value = ("Ice-Ice")
elseif _G.WalkWater == false then
	game.Players.LocalPlayer.Data.DevilFruit.Value = ("")
end
  end)
