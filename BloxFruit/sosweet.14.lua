repeat wait()
NAMEHUB  = "Rezy Hub - Premium | " ..os.date("%d ")..os.date("%A ")..os.date("%B ")..os.date("%Y")
do
	local ui = game.CoreGui:FindFirstChild(NAMEHUB)
	if ui then
		ui:Destroy()
		game.Players.LocalPlayer:Kick("อย่ารันซ้ำ")
	end
end
join = game.Players.localPlayer.Neutral == false
if _G.Team == nil then
    _G.Team = "Pirates"
end
if (_G.Team == "Pirates" or _G.Team == "Marines") and not join then
    repeat wait()
        pcall(function()
            join = game.Players.localPlayer.Neutral == false
            if _G.Team == "Pirates" then
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end
            elseif _G.Team == "Marines" then
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end
            else
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end
            end
        end)
    until join == true
    game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
end
wait(1)
local Config = {
    WindowName = NAMEHUB,
    Color = Color3.fromRGB(0,183,255),
    Keybind = Enum.KeyCode.RightControl
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MCHUB-Trash/MCHUB-Trash/main/UI_Library.Lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Auto")
local Section1 = Tab1:CreateSection("Main")
Magnet = true
local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    ThreeWorld = true
else
    game.Players.LocalPlayer:Kick("รันผิดเกม อย่า เล่น เก")
end
spawn(function()
    game_pid = game.PlaceId
    asiufdl = 0
    repeat wait(1)
        print("Is GAME LOADED CHEKER : "..tostring(asiufdl))
        asiufdl += 1
    until asiufdl > 240 or game:IsLoaded()
    repeat wait()
        if not game:IsLoaded() then
            if game_pid == nil then
                game_pid = game.PlaceId
            end
            pcall(function()
                print("re - joining 1")
                game:GetService('TeleportService'):TeleportToPlaceInstance(game_pid, game.JobId, game.Players.LocalPlayer)
                print("rejoined 1")
            end)
            pcall(function()
                print("re - joining 2")
                game:GetService('TeleportService'):Teleport(game_pid)
                print("rejoined 2")
            end)
            wait(2)
        end
    until game:IsLoaded()
end)
joingame_timr = 0
repeat 
	wait(0.1)
    joingame_timr += 0.1
until game:IsLoaded()
spawn(function()
    while wait(1) do
        pcall(function()
            game_pid = game.PlaceId
            repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
            local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
            po.ChildAdded:connect(function(a)
                if a.Name == 'ErrorPrompt' then
                    gujaef = 0
                    repeat wait(1)
                        print("waiting to rejoin if  found ErrorPrompt "..tostring(gujaef))
                        gujaef += 1
                    until gujaef > 40
                    if a.Name == 'ErrorPrompt' then
                        while wait() do
                            --ts:Teleport(game.PlaceId)
                            if game_pid == nil then
                                game_pid = game.PlaceId
                            end
                            pcall(function()
                                print("re - joining 1")
                                game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                                print("rejoined 1")
                            end)
                            pcall(function()
                                print("re - joining 2")
                                game:GetService('TeleportService'):Teleport(game.PlaceId)
                                print("rejoined 2")
                            end)
                            wait(2)
                        end
                    end
                end
            end)
        end)
    end
end)
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
local a = Instance.new('Part',workspace)
--
local a = Instance.new("Part")
a.Name = "BIGDICK"
a.Parent = game.Workspace
a.Anchored = true 
a.Transparency = 1
a.Size = Vector3.new(40,0.5,40)
---
game:GetService("RunService").Heartbeat:Connect(function()
   pcall(function()
   if not game:GetService("Workspace"):FindFirstChild("BIGDICK") then
    local a = Instance.new("Part")
    a.Name = "ez"
    a.Parent = game.Workspace
    a.Anchored = true 
    a.Transparency = 1
    a.Size = Vector3.new(40,0.5,40)
   end
   --[[if x then
    changestate()
   end]]
   end)
end)
function changestate()
   game.Workspace["BIGDICK"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,-4,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if OldWorld then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
			Ms = "Bandit [Lv. 5]"
			NaemQuest = "BanditQuest1"
			LevelQuest = 1
			NameMon = "Bandit"
			ISLANDPOS = CFrame.new(1211.88525, 36.7203407, 1500.03467, 0.615429699, -0.788191795, -6.02006912e-06, 6.02006912e-06, 1.23977661e-05, -1, 0.788191795, 0.615429759, 1.23977661e-05)
			CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
			CFrameMon = CFrame.new(1158.19287, 16.7761078, 1598.75024, 0.728623271, -2.60434244e-05, -0.684914768, 5.54633402e-07, 1, -3.74343144e-05, 0.684914768, 2.68956283e-05, 0.728623271)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 600 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
			Ms = "Monkey [Lv. 14]"
			NaemQuest = "JungleQuest"
			LevelQuest = 1
			NameMon = "Monkey"
			ISLANDPOS = CFrame.new(-1180.99561, 21.0006905, 187.688171, -0.866141438, -2.23321149e-05, -0.499799222, 2.23321149e-05, 1, -8.33832528e-05, 0.499799222, -8.33832528e-05, -0.866141438)
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1612.77039, 37.1953545, 150.217361, -0.325320244, 5.01602138e-09, -0.945603907, -1.28536748e-09, 1, 5.74677994e-09, 0.945603907, 3.08499248e-09, -0.325320244)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 600 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
			Ms = "Gorilla [Lv. 20]"
			NaemQuest = "JungleQuest"
			LevelQuest = 2
			NameMon = "Gorilla"
			ISLANDPOS = CFrame.new(-1180.99561, 21.0006905, 187.688171, -0.866141438, -2.23321149e-05, -0.499799222, 2.23321149e-05, 1, -8.33832528e-05, 0.499799222, -8.33832528e-05, -0.866141438)
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
			Ms = "Pirate [Lv. 35]"
			NaemQuest = "BuggyQuest1"
			LevelQuest = 1
			NameMon = "Pirate"
			ISLANDPOS = CFrame.new(-825.657349, 3.63657403, 4123.30811, -0.138172507, 0.0225743353, -0.990150809, 0.0865087882, 0.996194243, 0.0106400847, 0.98662281, -0.0841865838, -0.139599562)
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1169.5365, 5.09531212, 3933.84082, -0.971822679, -3.73200315e-09, 0.235713184, -4.16762763e-10, 1, 1.41145424e-08, -0.235713184, 1.3618596e-08, -0.971822679)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 600 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
			Ms = "Brute [Lv. 45]"
			NaemQuest = "BuggyQuest1"
			LevelQuest = 2
			NameMon = "Brute"
			ISLANDPOS = CFrame.new(-825.657349, 3.63657403, 4123.30811, -0.138172507, 0.0225743353, -0.990150809, 0.0865087882, 0.996194243, 0.0106400847, 0.98662281, -0.0841865838, -0.139599562)
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1165.09985, 15.1531372, 4363.51514, -0.962800264, 1.17564889e-06, 0.270213336, 2.60172015e-07, 1, -3.4237969e-06, -0.270213336, -3.22613073e-06, -0.962800264)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
			Ms = "Desert Bandit [Lv. 60]"
			NaemQuest = "DesertQuest"
			LevelQuest = 1
			NameMon = "Desert Bandit"
			ISLANDPOS = CFrame.new(921.289673, 6.45703602, 4334.47803, -0.207233012, 8.06497269e-08, 0.978291631, 3.10611412e-08, 1, -7.58596244e-08, -0.978291631, 1.46662362e-08, -0.207233012)
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
			Ms = "Desert Officer [Lv. 70]"
			NaemQuest = "DesertQuest"
			LevelQuest = 2
			NameMon = "Desert Officer"
			ISLANDPOS = CFrame.new(1658.85876, 4.64293623, 4318.07129, -0.0864315033, -0.000185585552, 0.996257842, -6.89026783e-05, 1, 0.000180304938, -0.996257842, -5.30608231e-05, -0.0864315033)
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
			Ms = "Snow Bandit [Lv. 90]"
			NaemQuest = "SnowQuest"
			LevelQuest = 1
			NameMon = "Snow Bandits"
			ISLANDPOS = CFrame.new(1336.02625, 34.1970673, -1331.23267, 0.671367824, 0.741124272, -1.77025795e-05, 1.77025795e-05, -3.9935112e-05, -1, -0.741124272, 0.671367764, -3.9935112e-05)
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1328.92578, 87.6160507, -1374.14551, -0.548407137, 5.60746427e-09, 0.836211503, 2.07008033e-09, 1, -5.34818945e-09, -0.836211503, -1.2019602e-09, -0.548407137)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
			Ms = "Snowman [Lv. 100]"
			NaemQuest = "SnowQuest"
			LevelQuest = 2
			NameMon = "Snowman"
			ISLANDPOS = CFrame.new(1336.02625, 34.1970673, -1331.23267, 0.671367824, 0.741124272, -1.77025795e-05, 1.77025795e-05, -3.9935112e-05, -1, -0.741124272, 0.671367764, -3.9935112e-05)
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1046.19983, 106.109909, -1486.0741, 0.455472827, -1.03902529e-07, -0.89024967, 1.33861127e-08, 1, -1.09863016e-07, 0.89024967, 3.81226357e-08, 0.455472827)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
			Ms = "Chief Petty Officer [Lv. 120]"
			NaemQuest = "MarineQuest2"
			LevelQuest = 1
			NameMon = "Chief Petty Officer"
			ISLANDPOS = CFrame.new(-5138.81104, 23.1043854, 4103.9624, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
			CFrameMon = CFrame.new(-4850.8623, 21.0520386, 4390.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
			Ms = "Sky Bandit [Lv. 150]"
			NaemQuest = "SkyQuest"
			LevelQuest = 1
			NameMon = "Sky Bandit"
			ISLANDPOS = CFrame.new(-4899.46777, 723.834229, -2575.20142, 0.933587551, 0, 0.358349502, 0, -1.00000048, 0, 0.358349502, 0, -0.933587909)
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
			CFrameMon = CFrame.new(-4996.53906, 278.410187, -2828.92822, -0.984909654, 0, 0.173069984, 0, 1, 0, -0.173069984, 0, -0.984909654)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 175 or MyLevel <= 249 then 
			Ms = "Dark Master [Lv. 175]"
			NaemQuest = "SkyQuest"
			LevelQuest = 2
			NameMon = "Dark Master"
			ISLANDPOS = CFrame.new(-4899.46777, 723.834229, -2575.20142, 0.933587551, 0, 0.358349502, 0, -1.00000048, 0, 0.358349502, 0, -0.933587909)
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
			CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 250 or MyLevel <= 274 then 
			Ms = "Toga Warrior [Lv. 250]"
			NaemQuest = "ColosseumQuest"
			LevelQuest = 1
			NameMon = "Toga Warrior"
			ISLANDPOS = CFrame.new(-1690.47278, 10.2532501, -3086.04272, 0.74314785, -0, -0.669127226, 0, 1, -0, 0.669127226, 0, 0.74314785)
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
			CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
			Ms = "Gladiator [Lv. 275]"
			NaemQuest = "ColosseumQuest"
			LevelQuest = 2
			NameMon = "Gladiato"
			ISLANDPOS = CFrame.new(-1690.47278, 10.2532501, -3086.04272, 0.74314785, -0, -0.669127226, 0, 1, -0, 0.669127226, 0, 0.74314785)
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1279.38416, 7.78580666, -3268.23047, -0.385674238, -3.25503358e-08, -0.922634542, 5.95089811e-10, 1, -3.55285259e-08, 0.922634542, -1.42514862e-08, -0.385674238)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier
			Ms = "Military Soldier [Lv. 300]"
			NaemQuest = "MagmaQuest"
			LevelQuest = 1
			NameMon = "Military Soldier"
			ISLANDPOS = CFrame.new(-5213.3374, 3.3397336, 8443.05957, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5483.29248, 9.33393669, 8413.07031, 0.909917235, -1.46153933e-09, -0.414789826, -6.77904288e-10, 1, -5.01067277e-09, 0.414789826, 4.84048535e-09, 0.909917235)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
			Ms = "Military Spy [Lv. 325]"
			NaemQuest = "MagmaQuest"
			LevelQuest = 2
			NameMon = "Military Spy"
			ISLANDPOS = CFrame.new(-5213.3374, 3.3397336, 8443.05957, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5883.50049, 77.5739212, 8823.88965, 0.983678341, -1.19359456e-08, 0.179935962, -8.52669757e-09, 1, 1.12948371e-07, -0.179935962, -1.12639128e-07, 0.983678341)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
			Ms = "Fishman Warrior [Lv. 375]"
			NaemQuest = "FishmanQuest"
			LevelQuest = 1
			NameMon = "Fishman Warrior"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
			CFrameMon = CFrame.new(60889.6328, 18.8148994, 1432.98425, 0.345049709, 0, -0.938584328, 0, 1, 0, 0.938584328, 0, 0.345049709)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
			Ms = "Fishman Commando [Lv. 400]"
			NaemQuest = "FishmanQuest"
			LevelQuest = 2
			NameMon = "Fishman Commando"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
			CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
			Ms = "God's Guard [Lv. 450]"
			NaemQuest = "SkyExp1Quest"
			LevelQuest = 1
			NameMon = "God's Guards"
			CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
			CFrameMon = CFrame.new(-4720.3291, 845.620422, -1859.63074, 0.712942302, 0, -0.701222718, -0, 1, -0, 0.701222718, 0, 0.712942302)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
		elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
			Ms = "Shanda [Lv. 475]"
			NaemQuest = "SkyExp1Quest"
			LevelQuest = 2
			NameMon = "Shandas"
			CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
			CFrameMon = CFrame.new(-7636.17285, 5545.83643, -551.851685, 0.995675743, 0, -0.0928966552, 0, 1, 0, 0.0928966552, 0, 0.995675743)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
			Ms = "Royal Squad [Lv. 525]"
			NaemQuest = "SkyExp2Quest"
			LevelQuest = 1
			NameMon = "Royal Squad"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7654.80615, 5607.22168, -1497.61304, 0.655299842, -1.01422131e-07, -0.75536871, 8.79199114e-09, 1, -1.26641098e-07, 0.75536871, 7.63466659e-08, 0.655299842)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
			Ms = "Royal Soldier [Lv. 550]"
			NaemQuest = "SkyExp2Quest"
			LevelQuest = 2
			NameMon = "Royal Soldier"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7966.58252, 5637.42529, -1744.18347, 0.116254926, -8.58390649e-07, -0.99321878, 2.4797064e-08, 1, -8.61348838e-07, 0.99321878, 7.55070602e-08, 0.116254926)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
			Ms = "Galley Pirate [Lv. 625]"
			NaemQuest = "FountainQuest"
			LevelQuest = 1
			NameMon = "Galley Pirate"
			ISLANDPOS = CFrame.new(5454.30957, 136.634079, 4622.60059, 0.74314785, 0, -0.669127226, 0, -1, -0, -0.669127226, 0, -0.74314785)
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5684.73096, 38.8443985, 3927.60498, 0.999752343, -6.81844494e-06, -0.0222478025, 5.87542536e-06, 1, -4.24524987e-05, 0.0222478025, 4.2311276e-05, 0.999752343)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel >= 650 then -- Galley Captain
			Ms = "Galley Captain [Lv. 650]"
			NaemQuest = "FountainQuest"
			LevelQuest = 2
			NameMon = "Galley Captain"
			ISLANDPOS = CFrame.new(5454.30957, 136.634079, 4622.60059, 0.74314785, 0, -0.669127226, 0, -1, -0, -0.669127226, 0, -0.74314785)
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		end
	end
	
	if NewWorld then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
			Ms = "Raider [Lv. 700]"
			NaemQuest = "Area1Quest"
			LevelQuest = 1
			NameMon = "Raider"
			ISLANDPOS = CFrame.new(63.6118584, 38.9141617, 2409.98584, -0.141843796, -0, -0.989889026, -0, 1, -0, 0.989889145, 0, -0.141843781)
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameMon = CFrame.new(-111.252747, 39.079628, 2356.24902, 0.912541151, 0, -0.408985078, -0, 1, -0, 0.408985138, 0, 0.91254)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2500 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			Ms = "Mercenary [Lv. 725]"
			NaemQuest = "Area1Quest"
			LevelQuest = 2
			NameMon = "Mercenary"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameMon = CFrame.new(-963.474182, 73.3029785, 1621.55615, -0.240057707, 1.84067176e-05, 0.970759094, 1.62304809e-06, 1, -1.85598001e-05, -0.970759094, -2.87983494e-06, -0.240057707)
		elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
			Ms = "Swan Pirate [Lv. 775]"
			NaemQuest = "Area2Quest"
			LevelQuest = 1
			NameMon = "Swan Pirate"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(920.630493, 73.3029785, 1215.57788, 0.0843675211, -6.10855466e-07, -0.996434748, 8.82118467e-09, 1, -6.12294457e-07, 0.996434748, 4.28682476e-08, 0.0843675211)
		elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
			Ms = "Factory Staff [Lv. 800]"
			NaemQuest = "Area2Quest"
			LevelQuest = 2
			NameMon = "Factory Staff"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
			CFrameMon = CFrame.new(656.395874, 73.2930374, 16.6564388, 0.469020009, -2.35162702e-06, -0.883186936, -6.14859175e-07, 1, -2.98918417e-06, 0.883186936, 1.94502309e-06, 0.469020009)
		elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
			Ms = "Marine Lieutenant [Lv. 875]"
			NaemQuest = "MarineQuest3"
			LevelQuest = 1
			NameMon = "Marine Lieutenant"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameMon = CFrame.new(-2900.26367, 73.0011826, -3060.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
		elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
			Ms = "Marine Captain [Lv. 900]"
			NaemQuest = "MarineQuest3"
			LevelQuest = 2
			NameMon = "Marine Captain"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
		elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
			Ms = "Zombie [Lv. 950]"
			NaemQuest = "ZombieQuest"
			LevelQuest = 1
			NameMon = "Zombie"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
			CFrameMon = CFrame.new(-5708.22412, 48.8234634, -624.017639, -0.870171368, 4.65824801e-09, 0.492749333, 1.08052509e-08, 1, 9.62796065e-09, -0.492749333, 1.37022553e-08, -0.870171368)
		elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
			Ms = "Vampire [Lv. 975]"
			NaemQuest = "ZombieQuest"
			LevelQuest = 2
			NameMon = "Vampire"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
			CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
		elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
			Ms = "Snow Trooper [Lv. 1000]"
			NaemQuest = "SnowMountainQuest"
			LevelQuest = 1
			NameMon = "Snow Trooper"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
			if raMon == 1 then
				CFrameMon = CFrame.new(524.627808, 401.75528, -5330.55713, -0.994629502, -8.5718499e-09, -0.103499621, -8.32684499e-09, 1, -2.79928347e-09, 0.103499621, -1.92242466e-09, -0.994629502)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(611.354431, 401.75528, -5550.23047, 0.853058696, 0, -0.521815121, 0, 1, 0, 0.521815121, 0, 0.853058696)
			end
		elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
			Ms = "Winter Warrior [Lv. 1050]"
			NaemQuest = "SnowMountainQuest"
			LevelQuest = 2
			NameMon = "Winter Warrior"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
			CFrameMon = CFrame.new(1178.53345, 429.755219, -5229.08936, 0.984771967, -4.45901769e-08, 0.173851088, 4.67088519e-08, 1, -8.09536616e-09, -0.173851088, 1.60924731e-08, 0.984771967)
		elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
			Ms = "Lab Subordinate [Lv. 1100]"
			NaemQuest = "IceSideQuest"
			LevelQuest = 1
			NameMon = "Lab Subordinate"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.413000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.413000341)
			CFrameMon = CFrame.new(-5814.82813, 16.295023, -4404.57178, -0.401097834, 0, -0.916034997, 0, 1, 0, 0.916035295, 0, -0.401097775)
		elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
			Ms = "Horned Warrior [Lv. 1125]"
			NaemQuest = "IceSideQuest"
			LevelQuest = 2
			NameMon = "Horned Warrior"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.413000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.413000341)
			if raMon == 1 then
				CFrameMon = CFrame.new(-6194.78809, 16.295023, -5834.56396, 0.998856664, -1.22505064e-08, 0.0478047207, 1.2099993e-08, 1, 3.43792972e-09, -0.0478047207, -2.85556334e-09, 0.998856664)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-6448.07129, 16.295023, -5696.91455, 0.831638515, 0, 0.555316865, 0, 1, 0, -0.555316865, 0, 0.831638396)
			end
		elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
			Ms = "Magma Ninja [Lv. 1175]"
			NaemQuest = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
			if raMon == 1 then
				CFrameMon = CFrame.new(-5179.7251, 16.295145, -6096.40186, 0.992225349, 9.1818757e-09, -0.124452204, -8.40349657e-09, 1, 6.7793966e-09, 0.124452204, -5.68086156e-09, 0.992225349)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-5702.36914, 16.295023, -5815.15625, 0.782760024, -2.44621674e-08, 0.622323692, 2.52116834e-08, 1, 7.59647989e-09, -0.622323692, 9.74360592e-09, 0.782760024)
			end
		elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
			Ms = "Lava Pirate [Lv. 1200]"
			NaemQuest = "FireSideQuest"
			LevelQuest = 2
			NameMon = "Lava Pirate"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
			if raMon == 1 then
				CFrameMon = CFrame.new(-5158.70459, 16.295023, -4809.7251, -0.461655736, 1.11142299e-07, -0.88705945, 1.56168909e-07, 1, 4.40174333e-08, 0.88705945, -1.18210167e-07, -0.461655736)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-5275.35938, 16.295023, -4525.39063, -0.962011635, 1.43568997e-07, 0.273009181, 7.33507136e-07, 1, 2.0588061e-06, -0.273009181, 2.18084892e-06, -0.962011635)
			end
		elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
			Ms = "Ship Deckhand [Lv. 1250]"
			NaemQuest = "ShipQuest1"
			LevelQuest = 1
			NameMon = "Ship Deckhand"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(1210.67188, 126.072403, 33100.5234, 0.999746263, -2.13878309e-07, 0.02253142, 2.00175933e-07, 1, 6.10398388e-07, -0.02253142, -6.05733021e-07, 0.999746263)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
			Ms = "Ship Engineer [Lv. 1275]"
			NaemQuest = "ShipQuest1"
			LevelQuest = 2
			NameMon = "Ship Engineer"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			if raMon == 1 then
				CFrameMon = CFrame.new(826.81781, 40.7861328, 32941.9844, 0.999941945, 1.33665878e-07, 0.0108040757, -1.34262933e-07, 1, 5.45359313e-08, -0.0108040757, -5.59833566e-08, 0.999941945)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(1016.63544, 40.7861328, 32914.0078, 0.999860346, 0, 0.0167181492, 0, 1.00000012, 0, -0.0167181492, 0, 0.999860346)
			end
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			--[[if (game:GetService("Workspace")["_WorldOrigin"].Locations["Cursed Ship"].Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 30000 and not Melee_raid and not raidiing then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6500.81738, 80.5203018, -120.303497)
				pcall(function() 
					tween:Cancel()
				end)
			end]]
		elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
			Ms = "Ship Steward [Lv. 1300]"
			NaemQuest = "ShipQuest2"
			LevelQuest = 1
			NameMon = "Ship Steward"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
			CFrameMon = CFrame.new(917.003113, 125.530045, 33374.3242, -0.999823153, 7.35499661e-09, 0.0187826175, 5.88230575e-09, 1, -7.84633158e-08, -0.0187826175, -7.83389922e-08, -0.999823153)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
			Ms = "Ship Officer [Lv. 1325]"
			NaemQuest = "ShipQuest2"
			LevelQuest = 2
			NameMon = "Ship Officer"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
			if raMon == 1 then
				CFrameMon = CFrame.new(653.202271, 181.492416, 33283.1445, 0.185309321, -2.65862159e-08, -0.982680261, 2.62600128e-08, 1, -2.21028067e-08, 0.982680261, -2.17093401e-08, 0.185309321)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(1196.45581, 181.492416, 33290.1055, -0.995656252, 3.13454578e-08, -0.0931043476, 3.28741834e-08, 1, -1.48857353e-08, 0.0931043476, -1.78818027e-08, -0.995656252)
			end
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
			Ms = "Arctic Warrior [Lv. 1350]"
			NaemQuest = "FrostQuest"
			LevelQuest = 1
			NameMon = "Arctic Warrior"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
			CFrameMon = CFrame.new(6089.84424, 28.7104149, -6245.37598, 0.678283334, -0.000102871556, -0.734799802, 2.63827023e-05, 1, -0.000115645897, 0.734799802, 5.90546915e-05, 0.678283334)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
		elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
			Ms = "Snow Lurker [Lv. 1375]"
			NaemQuest = "FrostQuest"
			LevelQuest = 2
			NameMon = "Snow Lurker"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
			CFrameMon = CFrame.new(5484.50244, 29.1916904, -6772.12646, -0.958640397, 1.44434409e-06, -0.284620196, -8.71146639e-08, 1, 5.36805146e-06, 0.284620196, 5.17082526e-06, -0.958640397)
		elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
			Ms = "Sea Soldier [Lv. 1425]"
			NaemQuest = "ForgottenQuest"
			LevelQuest = 1
			NameMon = "Sea Soldier"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
			if raMon == 1 then
				CFrameMon = CFrame.new(-2702.00928, 83.0680695, -9784.88477, -0.320579231, 2.50017251e-08, -0.947221696, 4.82084372e-09, 1, 2.47632226e-08, 0.947221696, 3.37216743e-09, -0.320579231)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-3386.50391, 27.2969704, -9804.72168, 0.863355398, 6.21813427e-08, 0.504596353, -5.64368108e-08, 1, -2.66674931e-08, -0.504596353, -5.45428458e-09, 0.863355398)
			end
		elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
			Ms = "Water Fighter [Lv. 1450]"
			NaemQuest = "ForgottenQuest"
			LevelQuest = 2
			NameMon = "Water Fighter"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
			CFrameMon = CFrame.new(-3505.21533, 239.189392, -10511.4473, 0.0196854305, -6.42505825e-07, -0.999806046, 2.47450398e-08, 1, -6.42142993e-07, 0.999806046, -1.20996466e-08, 0.0196854305)
		end
	end
	--w3q
	if ThreeWorld then
		if MyLevel == 1500 or MyLevel <= 1524 then
			Ms = "Pirate Millionaire [Lv. 1500]"
			NaemQuest = "PiratePortQuest"
			LevelQuest = 1
			NameMon = "Pirate Millionaire"
			ISLANDPOS = CFrame.new(-627.095825, 68.8230591, 5444.96973, 1.2755394e-05, 0.965938866, 0.258770198, -0.99999994, 1.2755394e-05, 1.66893005e-06, -1.66893005e-06, -0.258770198, 0.965938926)
			CFrameQuest = CFrame.new(-288.5224, 43.8218307, 5580.43408, -0.999959528, -8.31576159e-08, 0.0089966096, -8.37007832e-08, 1, -5.99984915e-08, -0.0089966096, -6.07490875e-08, -0.999959528)
			CFrameMon = CFrame.new(-30.9287148, 44.1632271, 5626.03564, -0.984395564, 6.69860825e-08, 0.175970018, 6.64483224e-08, 1, -8.94841801e-09, -0.175970018, 2.88413116e-09, -0.984395564)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 1525 or MyLevel <= 1624 then
			Ms = "Pistol Billionaire [Lv. 1525]"
			NaemQuest = "PiratePortQuest"
			LevelQuest = 2
			NameMon = "Pistol Billionaire"
			ISLANDPOS = CFrame.new(-627.095825, 68.8230591, 5444.96973, 1.2755394e-05, 0.965938866, 0.258770198, -0.99999994, 1.2755394e-05, 1.66893005e-06, -1.66893005e-06, -0.258770198, 0.965938926)
			CFrameQuest = CFrame.new(-288.5224, 43.8218307, 5580.43408, -0.999959528, -8.31576159e-08, 0.0089966096, -8.37007832e-08, 1, -5.99984915e-08, -0.0089966096, -6.07490875e-08, -0.999959528)
			CFrameMon = CFrame.new(-27.2507839, 73.7850037, 6110.73438, 0.94821614, 2.10991633e-08, -0.317625821, -1.09169083e-08, 1, 3.3837221e-08, 0.317625821, -2.86175066e-08, 0.94821614)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Ms = "Female Islander [Lv. 1625]"
			NaemQuest = "AmazonQuest2"
			LevelQuest = 1
			NameMon = "Female Islander"
			ISLANDPOS = CFrame.new(5406.33643, 655.403625, 594.461853, -0.417002439, -0.417307526, -0.807442605, -0.388651222, 0.884923458, -0.256633431, 0.821619928, 0.206796795, -0.531202316)
			CFrameQuest = CFrame.new(5447.18555, 601.684814, 750.161804, -0.0492943414, 5.47278347e-08, -0.998784304, 1.11371856e-10, 1, 5.4788952e-08, 0.998784304, 2.5895488e-09, -0.0492943414)
			CFrameMon = CFrame.new(5635.42676, 782.124878, 857.546997, -0.990593493, 2.96959286e-07, 0.136837229, 1.91843185e-07, 1, -7.81369522e-07, -0.136837229, -7.47768354e-07, -0.990593493)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 1650 or MyLevel <= 1724 then
			Ms = "Giant Islander [Lv. 1650]"
			NaemQuest = "AmazonQuest2"
			LevelQuest = 2
			NameMon = "Giant Islander"
			ISLANDPOS = CFrame.new(5406.33643, 655.403625, 594.461853, -0.417002439, -0.417307526, -0.807442605, -0.388651222, 0.884923458, -0.256633431, 0.821619928, 0.206796795, -0.531202316)
			CFrameQuest = CFrame.new(5447.18555, 601.684814, 750.161804, -0.0492943414, 5.47278347e-08, -0.998784304, 1.11371856e-10, 1, 5.4788952e-08, 0.998784304, 2.5895488e-09, -0.0492943414)
			CFrameMon = CFrame.new(4803.53516, 601.884644, 21.1627445, -0.945538223, -9.67994662e-09, -0.3255108, 9.0386223e-09, 1, -5.59929489e-08, 0.3255108, -5.58856534e-08, -0.945538223)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Ms = "Marine Commodore [Lv. 1700]"
			NaemQuest = "MarineTreeIsland"
			LevelQuest = 1
			NameMon = "Marine Commodore"
			ISLANDPOS = CFrame.new(2661.02368, 42.0330811, -6470.3667, 0.365655482, 0.720300019, 0.589461029, -0.890152395, 0.455640078, -0.00459471345, -0.271891713, -0.523029923, 0.807783842)
			CFrameQuest = CFrame.new(2181.47559, 29.3805466, -6739.75488, 0.972898781, 3.13111634e-08, -0.231231317, -4.68299923e-08, 1, -6.1625208e-08, 0.231231317, 7.07836563e-08, 0.972898781)
			CFrameMon = CFrame.new(2879.39746, 73.1276932, -7823.78613, 0.987131357, 2.83766557e-08, -0.159911677, -3.10919681e-08, 1, -1.4477993e-08, 0.159911677, 1.92636502e-08, 0.987131357)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel >= 1725 and MyLevel <= 1774 then
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NaemQuest = "MarineTreeIsland"
			LevelQuest = 2
			NameMon = "Marine Rear Admiral"
			ISLANDPOS = CFrame.new(2661.02368, 42.0330811, -6470.3667, 0.365655482, 0.720300019, 0.589461029, -0.890152395, 0.455640078, -0.00459471345, -0.271891713, -0.523029923, 0.807783842)
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(3684.00586, 160.514099, -7128.87354, -0.570743263, 0, 0.821128547, 0, 1, -0, -0.821128547, 0, -0.570743)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel >= 1775 and MyLevel <= 1799 then
			Ms = "Fishman Raider [Lv. 1775]"
			NaemQuest = "DeepForestIsland3"
			LevelQuest = 1
			NameMon = "Fishman Raider"
			ISLANDPOS = CFrame.new(-11478.541, 333.637207, -10379.043, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-10364.5967, 332.095978, -8353.88672, 0.923343658, 1.48868907e-07, -0.383972943, -5.46038343e-08, 1, 2.56400227e-07, 0.383972943, -2.15779068e-07, 0.923343658)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel >= 1800 and MyLevel <= 1824 then
			Ms = "Fishman Captain [Lv. 1800]"
			NaemQuest = "DeepForestIsland3"
			LevelQuest = 2
			NameMon = "Fishman Captain"
			ISLANDPOS = CFrame.new(-11478.541, 333.637207, -10379.043, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-10973.4004, 331.752991, -8883.54004, 0.678526163, 1.54081761e-08, 0.734575987, 4.41213963e-08, 1, -6.17304465e-08, -0.734575987, 7.42963024e-08, 0.678526163)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel >= 1825 and MyLevel <= 1849 then
			Ms = "Forest Pirate [Lv. 1825]"
			NaemQuest = "DeepForestIsland"
			LevelQuest = 1
			NameMon = "Forest Pirate"
			ISLANDPOS = CFrame.new(-12550.3164, 332.712402, -7492.83398, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13594.2119, 332.368225, -7930.59912, 0.955262423, 2.26471002e-08, -0.295761019, -1.30703626e-08, 1, 3.43570647e-08, 0.295761019, -2.89543038e-08, 0.955262423)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Ms = "Mythological Pirate [Lv. 1850]"
			NaemQuest = "DeepForestIsland"
			LevelQuest = 2
			NameMon = "Mythological Pirate"
			ISLANDPOS = CFrame.new(-12550.3164, 332.712402, -7492.83398, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			CFrameQuest = CFrame.new(-13230.9658, 332.413177, -7624.93457, 0.455187887, -8.75483792e-08, 0.890395403, -4.99329189e-10, 1, 9.85805499e-08, -0.890395403, -4.53172717e-08, 0.455187887)
			CFrameMon = CFrame.new(-13654.9893, 469.822784, -6970.78369, 0.952340543, 2.57623842e-08, -0.305036813, 8.97913299e-09, 1, 1.1248995e-07, 0.305036813, -1.09867713e-07, 0.952340543)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Ms = "Jungle Pirate [Lv. 1900]"
			NaemQuest = "DeepForestIsland2"
			LevelQuest = 1
			NameMon = "Jungle Pirate"
			ISLANDPOS = CFrame.new(-11478.541, 333.637207, -10379.043, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-11775.0195, 332.071625, -10628.4648, 0.0879710168, 3.94232338e-05, 0.996122956, 6.06110871e-06, 1, -4.01119505e-05, -0.996122956, 9.56629265e-06, 0.0879710168)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 1974 then
			Ms = "Musketeer Pirate [Lv. 1925]"
			NaemQuest = "DeepForestIsland2"
			LevelQuest = 2
			NameMon = "Musketeer Pirate"
			ISLANDPOS = CFrame.new(-11478.541, 333.637207, -10379.043, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-13305.2227, 391.878998, -9774.5791, 0.373675853, 1.90769788e-05, 0.927559018, 7.93608251e-07, 1, -2.08865713e-05, -0.927559018, 8.54091832e-06, 0.373675853)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 1999 then
			Ms = "Reborn Skeleton [Lv. 1975]"
			NaemQuest = "HauntedQuest1"
			LevelQuest = 1
			NameMon = "Reborn Skeleton"
			ISLANDPOS = CFrame.new(-9538.98145, 140.898499, 5513.27588, 0.998163939, 0, -0.0605702288, 0, 1, 0, 0.0605702288, 0, 0.998163939)
			CFrameQuest = CFrame.new(-9480.87012, 142.43811, 5566.2002, -0.00248356303, -5.78340327e-08, -0.999996901, -2.37339948e-09, 1, -5.78283164e-08, 0.999996901, 2.2297717e-09, -0.00248356303)
			CFrameMon = CFrame.new(-8759.74316, 142.43811, 6018.50879, 0.995956361, 1.53021293e-08, -0.089838393, -1.4131051e-08, 1, 1.3671424e-08, 0.089838393, -1.23466313e-08, 0.995956361)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2024 then
			Ms = "Living Zombie [Lv. 2000]"
			NaemQuest = "HauntedQuest1"
			LevelQuest = 2
			NameMon = "Living Zombie"
			ISLANDPOS = CFrame.new(-9538.98145, 140.898499, 5513.27588, 0.998163939, 0, -0.0605702288, 0, 1, 0, 0.0605702288, 0, 0.998163939)
			CFrameQuest = CFrame.new(-9480.87012, 142.43811, 5566.2002, -0.00248356303, -5.78340327e-08, -0.999996901, -2.37339948e-09, 1, -5.78283164e-08, 0.999996901, 2.2297717e-09, -0.00248356303)
			CFrameMon = CFrame.new(-10147.8926, 139.959961, 5972.49316, 0.917640984, 0.000120363518, -0.397410452, -1.50241667e-05, 0.99999994, 0.000268177944, 0.397410452, -0.000240120396, 0.917640984)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2049 then
			Ms = "Demonic Soul [Lv. 2025]"
			NaemQuest = "HauntedQuest2"
			LevelQuest = 1
			NameMon = "Demonic Soul"
			ISLANDPOS = CFrame.new(-9538.98145, 140.898499, 5513.27588, 0.998163939, 0, -0.0605702288, 0, 1, 0, 0.0605702288, 0, 0.998163939)
			CFrameQuest = CFrame.new(-9514.59668, 172.43811, 6077.85791, -0.025661787, -1.8103858e-08, 0.999670684, -2.63411728e-08, 1, 1.74336368e-08, -0.999670684, -2.58851198e-08, -0.025661787)
			CFrameMon = CFrame.new(-9502.1377, 172.43811, 6153.22559, 0.998965919, 8.14885152e-06, -0.0454591215, -3.61834987e-06, 1, 9.97435855e-05, 0.0454591215, -9.94759685e-05, 0.998965919)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2074 then
			Ms = "Posessed Mummy [Lv. 2050]"
			NaemQuest = "HauntedQuest2"
			LevelQuest = 2
			NameMon = "Posessed Mummy"
			ISLANDPOS = CFrame.new(-9538.98145, 140.898499, 5513.27588, 0.998163939, 0, -0.0605702288, 0, 1, 0, 0.0605702288, 0, 0.998163939)
			CFrameQuest = CFrame.new(-9514.59668, 172.43811, 6077.85791, -0.025661787, -1.8103858e-08, 0.999670684, -2.63411728e-08, 1, 1.74336368e-08, -0.999670684, -2.58851198e-08, -0.025661787)
			CFrameMon = CFrame.new(-9579.89551, 6.1257925, 6194.25684, -0.994989395, -9.60423137e-08, -0.0999803767, -9.48566452e-08, 1, -1.66128302e-08, 0.0999803767, -7.04578706e-09, -0.994989395)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2099 then
			Ms = "Peanut Scout [Lv. 2075]"
			NaemQuest = "NutsIslandQuest"
			LevelQuest = 1
			NameMon = "Peanut Scout"
			ISLANDPOS = CFrame.new(-2120.65259, 42.5805931, -10177.0498, 0.769644201, 0, 0.638473034, 0, 1, 0, -0.638473034, 0, 0.769644201)
			CFrameQuest = CFrame.new(-2105.16504, 38.4474411, -10193.708, 0.786417007, -1.17257759e-08, 0.617695928, -2.06460027e-09, 1, 2.16116245e-08, -0.617695928, -1.82710451e-08, 0.786417007)
			CFrameMon = CFrame.new(-2235.11646, 88.5827332, -10398.1094, -0.832571924, -2.27626842e-07, -0.553917289, -2.47123836e-07, 1, -3.94977633e-08, 0.553917289, 1.04001408e-07, -0.832571924)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2124 then
			Ms = "Peanut President [Lv. 2100]"
			NaemQuest = "NutsIslandQuest"
			LevelQuest = 2
			NameMon = "Peanut President"
			ISLANDPOS = CFrame.new(-2120.65259, 42.5805931, -10177.0498, 0.769644201, 0, 0.638473034, 0, 1, 0, -0.638473034, 0, 0.769644201)
			CFrameQuest = CFrame.new(-2105.16504, 38.4474411, -10193.708, 0.786417007, -1.17257759e-08, 0.617695928, -2.06460027e-09, 1, 2.16116245e-08, -0.617695928, -1.82710451e-08, 0.786417007)
			CFrameMon = CFrame.new(-2235.11646, 88.5827332, -10398.1094, -0.832571924, -2.27626842e-07, -0.553917289, -2.47123836e-07, 1, -3.94977633e-08, 0.553917289, 1.04001408e-07, -0.832571924)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2149 then
			Ms = "Ice Cream Chef [Lv. 2125]"
			NaemQuest = "IceCreamIslandQuest"
			LevelQuest = 1
			NameMon = "Ice Cream Chef"
			ISLANDPOS = CFrame.new(-779.823547, 65.9448471, -10919.1182, -0.786368072, 0, 0.617758334, 0, 1, 0, -0.617758334, 0, -0.786368072)
			CFrameQuest = CFrame.new(-820.017212, 66.1628113, -10965.9189, 0.764226615, 5.82622519e-08, -0.644947827, -5.33253548e-08, 1, 2.71488592e-08, 0.644947827, 1.36441916e-08, 0.764226615)
			CFrameMon = CFrame.new(-830.885742, 144.121704, -11091.0156, -0.329080194, 5.0881642e-08, 0.944301963, 6.449892e-08, 1, -3.14055519e-08, -0.944301963, 5.05715114e-08, -0.329080194)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2150 then
			Ms = "Ice Cream Commander [Lv. 2150]"
			NaemQuest = "IceCreamIslandQuest"
			LevelQuest = 2
			NameMon = "Ice Cream Commander"
			ISLANDPOS = CFrame.new(-779.823547, 65.9448471, -10919.1182, -0.786368072, 0, 0.617758334, 0, 1, 0, -0.617758334, 0, -0.786368072)
			CFrameQuest = CFrame.new(-820.017212, 66.1628113, -10965.9189, 0.764226615, 5.82622519e-08, -0.644947827, -5.33253548e-08, 1, 2.71488592e-08, 0.644947827, 1.36441916e-08, 0.764226615)
			CFrameMon = CFrame.new(-830.885742, 144.121704, -11091.0156, -0.329080194, 5.0881642e-08, 0.944301963, 6.449892e-08, 1, -3.14055519e-08, -0.944301963, 5.05715114e-08, -0.329080194)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2224 then
			Ms = "Cookie Crafter [Lv. 2200]"
			NaemQuest = "CakeQuest1"
			LevelQuest = 1
			NameMon = "Cookie Crafter"
			ISLANDPOS = CFrame.new(-2099.33154, 66.9970703, -12128.585, 0.997561574, 0, 0.0697919354, 0, 1, 0, -0.0697919354, 0, 0.997561574)
			CFrameQuest = CFrame.new(-2021.40833, 36.5925713, -12029.417, 0.940247118, -1.22227597e-08, 0.340492785, 1.01512621e-08, 1, 7.86525867e-09, -0.340492785, -3.93885546e-09, 0.940247118)
			CFrameMon = CFrame.new(-2123.25659, 111.625145, -11933.5938, 0.908894241, 1.12659599e-07, 0.417026669, -1.22163556e-07, 1, -3.89866006e-09, -0.417026669, -4.74019899e-08, 0.908894241)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2249 then
			Ms = "Cake Guard [Lv. 2225]"
			NaemQuest = "CakeQuest1"
			LevelQuest = 2
			NameMon = "Cake Guard"
			ISLANDPOS = CFrame.new(-2099.33154, 66.9970703, -12128.585, 0.997561574, 0, 0.0697919354, 0, 1, 0, -0.0697919354, 0, 0.997561574)
			CFrameQuest = CFrame.new(-2021.40833, 36.5925713, -12029.417, 0.940247118, -1.22227597e-08, 0.340492785, 1.01512621e-08, 1, 7.86525867e-09, -0.340492785, -3.93885546e-09, 0.940247118)
			CFrameMon = CFrame.new(-1559.19348, 89.0205154, -12584.1943, 0.843241334, -3.36266659e-08, 0.537535131, -8.12348055e-09, 1, 7.53006049e-08, -0.537535131, -6.78632404e-08, 0.843241334)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel <= 2274 then
			Ms = "Baking Staff [Lv. 2250]"
			NaemQuest = "CakeQuest2"
			LevelQuest = 1
			NameMon = "Baking Staff"
			ISLANDPOS = CFrame.new(-2099.33154, 66.9970703, -12128.585, 0.997561574, 0, 0.0697919354, 0, 1, 0, -0.0697919354, 0, 0.997561574)
			CFrameQuest = CFrame.new(-1927.9281, 36.6931343, -12842.1777, -0.999484241, -1.02355763e-07, 0.0321136042, -1.04146537e-07, 1, -5.40911991e-08, -0.0321136042, -5.74078207e-08, -0.999484241)
			CFrameMon = CFrame.new(-1819.08472, 93.1109695, -12884.9492, -0.761556745, -7.28589171e-08, 0.64809829, -7.16595849e-08, 1, 2.82149788e-08, -0.64809829, -2.49551455e-08, -0.761556745)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		elseif MyLevel > 2275 then
			Ms = "Head Baker [Lv. 2275]"
			NaemQuest = "CakeQuest2"
			LevelQuest = 2
			NameMon = "Head Baker"
			ISLANDPOS = CFrame.new(-2099.33154, 66.9970703, -12128.585, 0.997561574, 0, 0.0697919354, 0, 1, 0, -0.0697919354, 0, 0.997561574)
			CFrameQuest = CFrame.new(-1927.9281, 36.6931343, -12842.1777, -0.999484241, -1.02355763e-07, 0.0321136042, -1.04146537e-07, 1, -5.40911991e-08, -0.0321136042, -5.74078207e-08, -0.999484241)
			CFrameMon = CFrame.new(-2103.4707, 101.819008, -12790.4863, 0.914387882, 1.96595877e-08, 0.404839277, 1.38365364e-09, 1, -5.16866443e-08, -0.404839277, 4.78217963e-08, 0.914387882)
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
			end
		end
	end
end
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            -- delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(.1)
            end
        end
    end
end

function Teleport() 
    while wait(1) do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
spawn(function()
	pcall(function()
		while wait() do
			require(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
		end
	end)
end)
    CheckQuest()
	function EquipWeapon(ToolSe)
		pcall(function()
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
			end
		end)
	end
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				if _G.AutoFarm or Noclip or raidiing or getgenv().AutoNew or Autothird or _G.AutoTEST or statetp1 then
					setfflag("HumanoidParallelRemoveNoPhysics", "False")
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
				--game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
				end
			end
		end)
	end)
	function Tween(gotoCFrame)
		pcall(function()
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end)
		if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
			pcall(function() 
				tween:Cancel()
			end)
			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
		else
			local tween_s = game:service"TweenService"
			local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/320, Enum.EasingStyle.Linear)
			local tween, err = pcall(function()
				tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
				tween:Play()
			end)
			if not tween then return err end
		end
	end
	function loadcheck()
		if isfile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json") then
			else
				writefile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json",game:GetService("HttpService"):JSONEncode(_G.Save))
			return
		end
	end
	pcall(function()
		_G.Save = {
			["AutoFarm"] = false,
			["FastAttack"] = true,
			["FastFarm"] = true,
			["SelectToolWeapon"] = {""},
			["AutoFarm M"] = false,
			["AutoFarm G"] = false,
			["Auto Third"] = false,
			["Auto New World"] = false,
			["Ken"] = false,
			["KenHop"] = false,
			["SkillZ"] = true,
			["SkillX"] = true,
			["SkillC"] = true,
			["SkillV"] = true,
			["Legendary"] = false,
			["LegendaryHop"] = false,
			["Melee"] = false,
			["Defense"] = false,
			["Sword"] = false,
			["Gun"] = false,
			["Blox Fruit"] = false,
			["Raids"] = false,
			["Next"] = false,
			["Awakener"] = false,
			['Weapon'] = "",
			['Yamma'] = false,
			['Canvender'] = false,
		}
	end)
	function LoadSetting()
		if isfile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json") then
			vb = game:GetService("HttpService"):JSONDecode(readfile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json"))
			_G.Save = vb
		else
			loadcheck()
		end
	end
	
	function SaveSetting()
		if isfile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json") then
			writefile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json",game:GetService("HttpService"):JSONEncode(_G.Save))
		else
			loadcheck()
		end
	end
	
	loadcheck()
	LoadSetting()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            -- delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(.1)
            end
        end
    end
end

function Teleport() 
    while wait(1) do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end
spawn(function()
	while wait() do
		if _G.AutoFarm then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0
		end
	end
 end)


local Toggle1 = Section1:CreateToggle("Auto Farm", _G.Save["AutoFarm"], function(vu)
	_G.AutoFarm = vu
	_G.Save["AutoFarm"] = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
spawn(function()
    while wait() do
        if _G.FARMPLAYERS then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == v.HumanoidRootPart.CFrame then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0
                                wait(0.5)
                                local args = {
                                    [1] = "SetSpawnPoint"
                                }
                                
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                            end
                        end
    			    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if game:GetService("Workspace").Characters:FindFirstChild(v.Name) then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                                repeat wait()
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        local args = {
                                            [1] = "Buso"
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
									EquipWeapon(_G.SelectToolWeapon)
									if sethiddenproperty then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
									_G.Fast_Attack = true
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(1,10,1))								
                                until _G.FARMPLAYERS == false or v.Humanoid.Health <= 0
                            end
						else
							for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
								if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")  
								end
							end
                        end
                    end
                end
            end
            )
        end
    end
end
)

spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoFarm then
				game.Players.LocalPlayer.Character.Humanoid.Sit = false
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					StartMagnet = false
					CheckQuest()
					if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == ISLANDPOS then
						local args = {
							[1] = "SetSpawnPoint"
						}
						
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					else
						Tween(CFrameQuest)
					end
					if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and not raidiing then
						CheckQuest()
						wait(1)
						if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 and not raidiing then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						else
							Tween(CFrameQuest)
						end
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					pcall(function()
						CheckQuest()
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Ms and v:FindFirstChild("Humanoid") then
									if v.Humanoid.Health > 0 then
										repeat wait()
											pcall(function()
												PosMon = v.HumanoidRootPart.CFrame 
												if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
													if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
													EquipWeapon(_G.SelectToolWeapon)
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													v.Humanoid.Sit = false
													v.HumanoidRootPart.CanCollide = false
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
													StartMagnet = true
													else
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")  
													end
												else
													if (CFrameMon.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 600 and not raidiing then
														StatrMagnet = false
														CheckQuest()
														Tween(CFrameMon)
													end
												end
											end)
										until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarm == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(Ms) or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
									end
								end
							end
						else
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest") end
							StartMagnet = false
							Tween(CFrameMon)
							CheckQuest()
						end
					end)
				end
			end
		end)
	end
end)
Section1:CreateToggle("Fast Farm v2 (beta)", _G.Save["FastFarm"], function(vu)
	_G.AutoFarmv2 = vu
	_G.Save["FastFarm"] = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoFarmv2 then
				if game:GetService("Players").LocalPlayer.Data.Level.Value == 70 then
					_G.FARMPLAYERS = true
					_G.AutoFarm = false
				end
			end
		end)
	end
end)
require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.Particle.SlashHit).playAt = function() return true end

coroutine.wrap(function()
   pcall(function()
       game:GetService("RunService").Heartbeat:Connect(function()
           if _G.AutoFarm or _G.Canvender or _G.Yamma or AutoShrakman or Auto_Bone or _G.FARMPLAYERS or _G.autoraid or getgenv().AutoNew or statetp1 or Autothird or _G.AutoTEST or _G.AutoFarmMBF or _G.AutoFarmGun or _G.KenHaki then
               if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                   local Noclip = Instance.new("BodyVelocity")
                   Noclip.Name = "BodyClip"
                   Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                   Noclip.MaxForce = Vector3.new(100000,100000,100000)
                   Noclip.Velocity = Vector3.new(0,0,0)
               end
           else
               if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                   game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
               end
           end
       end)
   end)
end)()
 spawn(function()
	while game:GetService("RunService").Stepped:wait(10) do
		character = game.Players.LocalPlayer.Character 
		if _G.NoClip or _G.Canvender or Auto_Bone or _G.Yamma or _G.AutoFarm or KillPlayer or getgenv().AutoNew or Autothird or Autothird or Factory or NextIsland or TweenIsland or _G.AutoTEST or _G.AutoFarmMBF or _G.AutoFarmGun then
			pcall(function()
				for _, v in pairs(character:GetDescendants()) do
					pcall(function()
						if v:IsA("BasePart") then
							pcall(function()
							v.CanCollide = false
							end)
						end
					end)
				end
			end)
		end
	end
 end)
 
 spawn(function()
	pcall(function()
		while task.wait() do
			if _G.AutoFarm then
				function UseCode(Text)
					game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
				end
				UseCode("Sub2Fer999")
				UseCode("Enyu_is_Pro")
				UseCode("Magicbus")
				UseCode("JCWK")
				UseCode("Starcodeheo")
				UseCode("Bluxxy")
				UseCode("fudd10_v2")
				UseCode("FUDD10")
				UseCode("BIGNEWS")
				UseCode("SUB2NOOBMASTER123")
				UseCode("Sub2Daigrock")
				UseCode("Axiore")
				UseCode("TantaiGaming")
				UseCode("STRAWHATMAINE")
				UseCode("3BVISITS")
				UseCode("THEGREATACE")
				UseCode("Bignews ")
				UseCode("TantaiGaming")
				UseCode("SUB2GAMERROBOT_EXP1")
			end
		end
	end)
 end)

game:GetService("RunService").Heartbeat:Connect(function()
	for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
		pcall(function()
			if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("DamageCounter") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
				v:Destroy()
			end
		end)
	end
 end)
local Section2 = Tab1:CreateSection("Setting Auto Farm")

Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(Wapon ,v.Name)
	end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(Wapon, v.Name)
	end
end
_G.SelectToolWeapon = _G.Save['Weapon']
local SelectWeapona = Section2:CreateDropdown("Select Weapon / Combat", Wapon, function(Value)
	_G.SelectWeapon = Value
	_G.SelectToolWeapon = Value
	_G.Save['Weapon'] = Value
	SaveSetting()
end)
Section2:CreateButton("Reset Weapon", function()
	SelectWeapona:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			SelectWeapona:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			SelectWeapona:Add(v.Name)
		end
	end
end)
local Toggle2 = Section2:CreateToggle("Fast Attack", _G.Save["FastAttack"], function(vu)
    _G.Fast_Attack = vu
	_G.Save["FastAttack"] = vu
	SaveSetting()
end)
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
local Attack = 0.1
local backup = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local Crit = getupvalues(backup)[2]
local CombatFrameworkR = getupvalues(backup)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
function maxincrement()
	return #Crit.activeController.anims.basic
end
spawn(function()
    local old
    old = hookmetamethod(game, "__namecall",function(self,...)
        local method = getnamecallmethod() local args = {...}

        if method:lower() == "fireserver" then
            if args[1] == "hit" then
                args[3] = maxincrement()
                return old(self,unpack(args))
            end end
        return old(self,...)
	end) 
end)
do
    CameraShakerR:Stop()
end
function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end
            end)
			if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
				game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
				game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
				game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
			end
        end
    end
end
local cac
if SuperFastMode then 
    cac=task.wait
else
    cac=wait
end
spawn(function()
    while cac() do 
		pcall(function()
			if _G.Fast_Attack == true and (_G.AutoFarm or _G.Yamma or _G.Canvender or AutoShrakman or Auto_Bone or _G.AUTOFARM or _G.FARMPLAYERS or StartMagnet or AutoSaber or Autothird or getgenv().AutoNew or _G.AutoTEST or _G.AutoFarmMBF or _G.AutoFarmGun or raidiing) then
				AttackNoCD() 
			end
		end)
    end
end
)
function Random()
	Tween(CFrame.new(0,500000,0))
end
local Section3 = Tab1:CreateSection("Auto Sword")
Section3:CreateToggle("Hop For Auto Sword only", true, function(vu)
    _G.Hopsword = vu
end)
Section3:CreateToggle("Auto Canvender", _G.Save['Canvender'], function(vu)
    _G.Canvender = vu
	_G.Save['Canvender'] = vu
	SaveSetting()
end)
spawn(function()
	while wait() do
		if _G.Canvender then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
							if v:WaitForChild("Humanoid").Health > 0 then
								repeat task.wait()
									Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									EquipWeapon(_G.SelectToolWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
								until not _G.Canvender or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817383, -125.94227600098))
					wait(3)
					if _G.Hopsword then
						if not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
							game:GetService("RunService"):Set3dRenderingEnabled(false)
							Random()
							print("HOP !!!")
							pcall(function()
								for count = math.random(1, math.random(40, 75)), 100 do
									local args = {
									[1] = count
									}
									TableCahce = {}
									remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
									for _i ,v in pairs(remote) do
										for _i2 ,v2 in pairs(v) do
											if tonumber(v['Count']) < 12 then
												if string.find(v['Region'], 'Sing') then
													game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
												end
											end
										end    
									end    
								end
							end)
						end
					end
				end
			end)
		end
	end
end)
Section3:CreateToggle("Auto Yamma", _G.Save['Yamma'], function(vu)
    _G.Yamma = vu
	_G.Save['Yamma'] = vu
	SaveSetting()
end)
PosGhostYamma = nil
spawn(function()
	while wait(.1) do
		if _G.Yamma then
				if ThreeWorld then
					pcall(function() 
					if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter", "Progress") < 30 then
						pcall(function()
							local args = {
								[1] = "EliteHunter"
							}
						
							remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if string.find(remote, "I don't have anything") then
									PosElite = nil
									for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if string.find(v.Name, 'God') then
												if _G.Yamma then
													GodSummon = true
												end
											end
										end
									end
									for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
										if v:IsA("Tool") then
											if string.find(v.Name, 'God') then
												if _G.Yamma then
													GodSummon = true
												end
											end
										end
									end
								if _G.Hopsword and not GodSummon then
									pcall(function()
										for count = math.random(1, math.random(40, 75)), 100 do
											local args = {
											[1] = count
										}
										TableCahce = {}
										remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
										for _i ,v in pairs(remote) do
											for _i2 ,v2 in pairs(v) do
												if tonumber(v['Count']) < 12 then
													if string.find(v['Region'], 'Sing') then
														game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
													end
												end
											end    
										end    
										end
										
								end)
								end
								PosElite = nil
							end
							if string.find(remote, 'Hydra Island') then
		
								EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
								for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if v:IsA('Model') then
											if string.find(v.Name, EliteHunterName) then
												if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
													local args = {
														[1] = "requestEntrance",
														[2] = Vector3.new(5742.9599609375, 613.9691772460938, -283.685546875)
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(20,20,20)
												end
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
											end
										end
								end
								for _i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if string.find(v.Name, EliteHunterName) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then

										repeat wait()
											if not PosElite then
												PosElite = v.HumanoidRootPart.CFrame
											end
											v.HumanoidRootPart.CFrame = PosElite
											EquipWeapon(_G.SelectToolWeapon)
											_G.Fastattack = true
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
												[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Humanoid.JumpPower = 0
												v.HumanoidRootPart.Size = Vector3.new(10,10,10)
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
										until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.Yamma
									end
							end
							end
							if string.find(remote, 'Turtle') then
		
								EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
								for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if v:IsA('Model') then
											if string.find(v.Name, EliteHunterName) then
												if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
													-- Script generated by SimpleSpy - credits to exx#9394
														local args = {
															[1] = "requestEntrance",
															[2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(20,20,20)
												end
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
											end
										end
								end
								for _i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if string.find(v.Name, EliteHunterName) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											if not PosElite then
												PosElite = v.HumanoidRootPart.CFrame
											end
											v.HumanoidRootPart.CFrame = PosElite
											EquipWeapon(_G.SelectToolWeapon)
											_G.Fastattack = true
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
												[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Humanoid.JumpPower = 0
												v.HumanoidRootPart.Size = Vector3.new(10,10,10)
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
										until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.Yamma
									end
							end
							end
							if not string.find(remote, 'Turtle') and not string.find(remote, 'Hydra Island')  then
		
								EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
								for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if v:IsA('Model') then
											if string.find(v.Name, EliteHunterName) then
												if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
													ISLANDPOS = CFrame.new(2181.47559, 29.3805466, -6739.75488, 0.972898781, 3.13111634e-08, -0.231231317, -4.68299923e-08, 1, -6.1625208e-08, 0.231231317, 7.07836563e-08, 0.972898781)
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ISLANDPOS
													game.Players.LocalPlayer.Character.Humanoid.Health = 0
													wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}

													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
											end
										end
								end
								for _i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if string.find(v.Name, EliteHunterName) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											if not PosElite then
												PosElite = v.HumanoidRootPart.CFrame
											end
											v.HumanoidRootPart.CFrame = PosElite
											EquipWeapon(_G.SelectToolWeapon)
											_G.Fastattack = true
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
												[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
												v.Humanoid:ChangeState(14)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Humanoid.JumpPower = 0
												v.HumanoidRootPart.Size = Vector3.new(10,10,10)
												if v.Humanoid:FindFirstChild("Animator") then
													v.Humanoid.Animator:Destroy()
												end
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
										until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.Yamma
									end
							end
							end
						end)
					else
						wait(Tween(CFrame.new(5227.13037109375, 8.086737632751465, 1100.6697998046875) * CFrame.new(0, 40,0)))
						for _i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if string.find(v.Name, 'Ghost') and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									if not PosGhostYamma then
										PosGhostYamma = v.HumanoidRootPart.CFrame
									end
									v.HumanoidRootPart.CFrame = PosGhostYamma
									EquipWeapon(_G.SelectToolWeapon)
									_G.Fastattack = true
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
										[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
									Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
										v.Humanoid:ChangeState(14)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Humanoid.JumpPower = 0
										v.HumanoidRootPart.Size = Vector3.new(10,10,10)
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy()
										end
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
							end
					end
					Tween(CFrame.new(5227.13037109375, 8.086737632751465, 1100.6697998046875) * CFrame.new(0, 40,0))
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new(5227.13037109375, 8.086737632751465, 1100.6697998046875) * CFrame.new(0, 40,0)).Position).Magnitude <= 10 then
						fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
					end
					end
				end)
				end
			
			end
	end
end)
local Section4 = Tab1:CreateSection("Stats")
BlackLeg2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuyBlackLeg",
				[2] = true
			}
			
			BlackLeg = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if BlackLeg == 1 then
				BlackLeg2:UpdateText("BlackLeg : ✔️")
			else
				BlackLeg2:UpdateText("BlackLeg : ❌")
			end
		end)
	end
end)
Electro2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuyElectro",
				[2] = true
			}
			
			Electro = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if Electro == 1 then
				Electro2:UpdateText("Electro : ✔️")
			else
				Electro2:UpdateText("Electro : ❌")
			end
		end)
	end
end)
FishmanKarate2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuyFishmanKarate",
				[2] = true
			}
			
			FishmanKarate = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if FishmanKarate == 1 then
				FishmanKarate2:UpdateText("FishmanKarate : ✔️")
			else
				FishmanKarate2:UpdateText("FishmanKarate : ❌")
			end
		end)
	end
end)
SharkmanKarate2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuySharkmanKarate",
				[2] = true
			}
			
			SharkmanKarate = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if SharkmanKarate == 1 then
				SharkmanKarate2:UpdateText("SharkmanKarate : ✔️")
			else
				SharkmanKarate2:UpdateText("SharkmanKarate : ❌")
			end
		end)
	end
end)
Superhuman2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuySuperhuman",
				[2] = true
			}
			
			Superhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if Superhuman == 1 then
				Superhuman2:UpdateText("Superhuman : ✔️")
			else
				Superhuman2:UpdateText("Superhuman : ❌")
			end
		end)
	end
end)
DragonClaw2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BlackbeardReward",
				[2] = "DragonClaw",
				[3] = "1",
				[4] = true
			}
			
			DragonClaw3 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if DragonClaw3 == 1 then
				DragonClaw2:UpdateText("DragonClaw : ✔️")
			else
				DragonClaw2:UpdateText("DragonClaw : ❌")
			end
		end)
	end
end)
ElectricClaw2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuyElectricClaw",
				[2] = true
			}
			
			ElectricClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if ElectricClaw == 1 then
				ElectricClaw2:UpdateText("ElectricClaw : ✔️")
			else
				ElectricClaw2:UpdateText("ElectricClaw : ❌")
			end
		end)
	end
end)
DragonTalon2 = Section4:CreateLabel("N/A")
spawn(function()
	while wait() do
		pcall(function()
			local args = {
				[1] = "BuyDragonTalon",
				[2] = true
			}
			
			DragonTalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if DragonTalon == 1 then
				DragonTalon2:UpdateText("DragonTalon : ✔️")
			else
				DragonTalon2:UpdateText("DragonTalon : ❌")
			end
		end)
	end
end)
local Tab2 = Window:CreateTab("Player")
local Statssssss = Tab2:CreateSection("Auto Stats")

Statssssss:CreateToggle("Melee", _G.Melee, function(bool)
    _G.Melee = bool
end)
Statssssss:CreateToggle("Defense", _G.Defense, function(bool)
	_G.Defense = bool
end)
Statssssss:CreateToggle("Sword", _G.Sword, function(bool)
	_G.Sword = bool
end)
Statssssss:CreateToggle("Sword", _G.Gun, function(bool)
	_G.Gun = bool
end)
Statssssss:CreateToggle("Blox Fruit", _G.Blox_Fruit, function(bool)
	_G.Blox_Fruit = bool
end)
local Slider1 = Statssssss:CreateSlider("Point", 1,100,nil,true, function(Value)
    PointStats = Value
end)
Slider1:SetValue(1)
spawn(function()
	while wait() do
		pcall(function()
			if game.Players.localPlayer.Data.Points.Value >= PointStats then
				if _G.Melee then
					local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Defense then
					local args = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Sword then
					local args = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Gun then
					local args = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
				if _G.Blox_Fruit then
					local args = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)
local Tab3 = Window:CreateTab("Settings")
local UIIIIII = Tab3:CreateSection("Menu")
local Toggle3 = UIIIIII:CreateToggle("UI Toggle", nil, function(State)
    Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
    Config.Keybind = Enum.KeyCode[Key]
end)
spawn(function()
	while task.wait() do
		pcall(function()
			CheckQuest()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.AutoFarm or AutoShrakman and StartMagnet and Magnet then
					if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						if v.Name == "Factory Staff [Lv. 800]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == Ms then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if Auto_Bone and StartMagnetBoneMon and Magnet then
					if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 300 then
						v.Head.CanCollide = false
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						v.HumanoidRootPart.CFrame = MainMonBone
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
				end
			end
		end)
	end)
end)
warn("Anti AFK : Work")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
until game:IsLoaded()
