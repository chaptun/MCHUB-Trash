local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.107579462, 0, 0.0167597625, 0)
ImageLabel.Size = UDim2.new(0.492665023, 0, 0.463687211, 0)
ImageLabel.Image = "rbxassetid://7749989101"

wait(2)
ImageLabel.Visible = false

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/Achitsak/Flux-Edit/main/Centerhub%20ui")()

local win = Flux:Window("BLOX FRUIT", "MC HUB", Color3.fromRGB(78, 203, 255), Enum.KeyCode.RightControl)

local AutoFarm = win:Tab("Auto Farm", "http://www.roblox.com/asset/?id=6023426915")
 local placeId = game.PlaceId
  Magnet = true
  if placeId == 2753915549 then
     OldWorld = true
  elseif placeId == 4442272183 then
     NewWorld = true
elseif placeId == 7449423635 then
    Third = true
  end
  function Click()
     game:GetService'VirtualUser':CaptureController()
     game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
  end
  function CheckQuest()
     local MyLevel = game.Players.LocalPlayer.Data.Level.Value
     if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then -- Bandit
              Ms = "Bandit [Lv. 5]"
              NaemQuest = "BanditQuest1"
              LevelQuest = 1
              NameMon = "Bandit"
              CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
              CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
        elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
              Ms = "Monkey [Lv. 14]"
              NaemQuest = "JungleQuest"
              LevelQuest = 1
              NameMon = "Monkey"
              CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
              CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
        elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
              Ms = "Gorilla [Lv. 20]"
              NaemQuest = "JungleQuest"
              LevelQuest = 2
              NameMon = "Gorilla"
              CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
              CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
        elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
              Ms = "Pirate [Lv. 35]"
              NaemQuest = "BuggyQuest1"
              LevelQuest = 1
              NameMon = "Pirate"
              CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
              CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
        elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
              Ms = "Brute [Lv. 45]"
              NaemQuest = "BuggyQuest1"
              LevelQuest = 2
              NameMon = "Brute"
              CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
              CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
        elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
              Ms = "Desert Bandit [Lv. 60]"
              NaemQuest = "DesertQuest"
              LevelQuest = 1
              NameMon = "Desert Bandit"
              CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
              CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
        elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
              Ms = "Desert Officer [Lv. 70]"
              NaemQuest = "DesertQuest"
              LevelQuest = 2
              NameMon = "Desert Officer"
              CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
              CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
        elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
              Ms = "Snow Bandit [Lv. 90]"
              NaemQuest = "SnowQuest"
              LevelQuest = 1
              NameMon = "Snow Bandits"
              CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
              CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
              Ms = "Snowman [Lv. 100]"
              NaemQuest = "SnowQuest"
              LevelQuest = 2
              NameMon = "Snowman"
              CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
              CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
              Ms = "Chief Petty Officer [Lv. 120]"
              NaemQuest = "MarineQuest2"
              LevelQuest = 1
              NameMon = "Chief Petty Officer"
              CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
              CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
        elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
              Ms = "Sky Bandit [Lv. 150]"
              NaemQuest = "SkyQuest"
              LevelQuest = 1
              NameMon = "Sky Bandit"
              CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
              CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
        elseif MyLevel == 175 or MyLevel <= 224 then -- Dark Master
              Ms = "Dark Master [Lv. 175]"
              NaemQuest = "SkyQuest"
              LevelQuest = 2
              NameMon = "Dark Master"
              CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
              CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
        elseif MyLevel == 225 or MyLevel <= 274 then -- Toga Warrior
              Ms = "Toga Warrior [Lv. 225]"
              NaemQuest = "ColosseumQuest"
              LevelQuest = 1
              NameMon = "Toga Warrior"
              CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
              CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
        elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
              Ms = "Gladiator [Lv. 275]"
              NaemQuest = "ColosseumQuest"
              LevelQuest = 2
              NameMon = "Gladiato"
              CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
              CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
        elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
              Ms = "Military Soldier [Lv. 300]"
              NaemQuest = "MagmaQuest"
              LevelQuest = 1
              NameMon = "Military Soldier"
              CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
              CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
        elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
              Ms = "Military Spy [Lv. 330]"
              NaemQuest = "MagmaQuest"
              LevelQuest = 2
              NameMon = "Military Spy"
              CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
              CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
        elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
              Ms = "Fishman Warrior [Lv. 375]"
              NaemQuest = "FishmanQuest"
              LevelQuest = 1
              NameMon = "Fishman Warrior"
              CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
              CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
        elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
              Ms = "Fishman Commando [Lv. 400]"
              NaemQuest = "FishmanQuest"
              LevelQuest = 2
              NameMon = "Fishman Commando"
              CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
              CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
        elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
              Ms = "God's Guard [Lv. 450]"
              NaemQuest = "SkyExp1Quest"
              LevelQuest = 1
              NameMon = "God's Guards"
              CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
              CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
        elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
              Ms = "Shanda [Lv. 475]"
              NaemQuest = "SkyExp1Quest"
              LevelQuest = 2
              NameMon = "Shandas"
              CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
              CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
        elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
              Ms = "Royal Squad [Lv. 525]"
              NaemQuest = "SkyExp2Quest"
              LevelQuest = 1
              NameMon = "Royal Squad"
              CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
              CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
        elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
              Ms = "Royal Soldier [Lv. 550]"
              NaemQuest = "SkyExp2Quest"
              LevelQuest = 2
              NameMon = "Royal Soldier"
              CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
              CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
              Ms = "Galley Pirate [Lv. 625]"
              NaemQuest = "FountainQuest"
              LevelQuest = 1
              NameMon = "Galley Pirate"
              CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
              CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
        elseif MyLevel >= 650 then -- Galley Captain
              Ms = "Galley Captain [Lv. 650]"
              NaemQuest = "FountainQuest"
              LevelQuest = 2
              NameMon = "Galley Captain"
              CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
              CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
        end
     end
     if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
              Ms = "Raider [Lv. 700]"
              NaemQuest = "Area1Quest"
              LevelQuest = 1
              NameMon = "Raider"
              CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
              CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
        elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
              Ms = "Mercenary [Lv. 725]"
              NaemQuest = "Area1Quest"
              LevelQuest = 2
              NameMon = "Mercenary"
              CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
              CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
        elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
              Ms = "Swan Pirate [Lv. 775]"
              NaemQuest = "Area2Quest"
              LevelQuest = 1
              NameMon = "Swan Pirate"
              CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
              CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
        elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
              Ms = "Factory Staff [Lv. 800]"
              NaemQuest = "Area2Quest"
              LevelQuest = 2
              NameMon = "Factory Staff"
              CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
              CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
        elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
              Ms = "Marine Lieutenant [Lv. 875]"
              NaemQuest = "MarineQuest3"
              LevelQuest = 1
              NameMon = "Marine Lieutenant"
              CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
              CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
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
              CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
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
              CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
        elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
              Ms = "Winter Warrior [Lv. 1050]"
              NaemQuest = "SnowMountainQuest"
              LevelQuest = 2
              NameMon = "Winter Warrior"
              CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
              CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
        elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
              Ms = "Lab Subordinate [Lv. 1100]"
              NaemQuest = "IceSideQuest"
              LevelQuest = 1
              NameMon = "Lab Subordinate"
              CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
              CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
        elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
              Ms = "Horned Warrior [Lv. 1125]"
              NaemQuest = "IceSideQuest"
              LevelQuest = 2
              NameMon = "Horned Warrior"
              CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
              CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
        elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
              Ms = "Magma Ninja [Lv. 1175]"
              NaemQuest = "FireSideQuest"
              LevelQuest = 1
              NameMon = "Magma Ninja"
              CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
              CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
        elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
              Ms = "Lava Pirate [Lv. 1200]"
              NaemQuest = "FireSideQuest"
              LevelQuest = 2
              NameMon = "Lava Pirate"
              CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
              CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
        elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
              Ms = "Ship Deckhand [Lv. 1250]"
              NaemQuest = "ShipQuest1"
              LevelQuest = 1
              NameMon = "Ship Deckhand"
              CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
              CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
        elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
              Ms = "Ship Engineer [Lv. 1275]"
              NaemQuest = "ShipQuest1"
              LevelQuest = 2
              NameMon = "Ship Engineer"
              CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
              CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
        elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
              Ms = "Ship Steward [Lv. 1300]"
              NaemQuest = "ShipQuest2"
              LevelQuest = 1
              NameMon = "Ship Steward"
              CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
              CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
        elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
           Ms = "Ship Officer [Lv. 1325]"
           NaemQuest = "ShipQuest2"
           LevelQuest = 2
           NameMon = "Ship Officer"
           CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
           CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
        elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
           Ms = "Arctic Warrior [Lv. 1350]"
           NaemQuest = "FrostQuest"
           LevelQuest = 1
           NameMon = "Arctic Warrior"
           CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
           CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
        elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
           Ms = "Snow Lurker [Lv. 1375]"
           NaemQuest = "FrostQuest"
           LevelQuest = 2
           NameMon = "Snow Lurker"
           CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
           CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
        elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
           Ms = "Sea Soldier [Lv. 1425]"
           NaemQuest = "ForgottenQuest"
           LevelQuest = 1
           NameMon = "Sea Soldier"
           CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
           CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
        elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
           Ms = "Water Fighter [Lv. 1450]"
           NaemQuest = "ForgottenQuest"
           LevelQuest = 2
           NameMon = "Water Fighter"
           CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
           CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
        end
     elseif Third then
         if MyLevel == 1500 or MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
           NaemQuest = "PiratePortQuest"
           LevelQuest = 1
           NameMon = "Pirate Millionaire"
           CFrameQuest = CFrame.new(-290.169861, 39.691246, 5581.43408, 0.25875926, 0, 0.965941846, 0, 1, 0, -0.965941846, 0, 0.25875926)
           CFrameMon = CFrame.new(-350.896179, 35.8283691, 5799.72607, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
         elseif MyLevel == 1525 or MyLevel <= 1574 then
        Ms = "Pistol Billionaire [Lv. 1525]"
           NaemQuest = "PiratePortQuest"
           LevelQuest = 2
           
           NameMon = "Pistol Billionaire"
           CFrameQuest = CFrame.new(-290.169861, 39.691246, 5581.43408, 0.25875926, 0, 0.965941846, 0, 1, 0, -0.965941846, 0, 0.25875926)
           CFrameMon = CFrame.new(-350.896179, 35.8283691, 5799.72607, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
         elseif MyLevel == 1575  or MyLevel <= 1599  then
             Ms = "Dragon Crew Warrior [Lv. 1575]"
           NaemQuest = "AmazonQuest"
           LevelQuest = 1
           NameMon = "Dragon Crew Warrior"
           CFrameQuest = CFrame.new(5832.79688, 53.2015953, -1101.43604, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
           CFrameMon = CFrame.new(6130.97705, 36.111084, -1175.04663, -1, 0, 0, 0, 1, 0, 0, 0, -1)  
         elseif MyLevel == 1600 or MyLevel <= 1624 then
              Ms = "Dragon Crew Archer [Lv. 1600]"
           NaemQuest = "AmazonQuest"
           LevelQuest = 2
           NameMon = "Dragon Crew Archer"
           CFrameQuest = CFrame.new(5832.79688, 53.2015953, -1101.43604, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
           CFrameMon = CFrame.new(6786.99609, 398.514587, 449.414917, 0.681973696, -0, -0.731376648, 0, 1, -0, 0.731376648, 0, 0.681973696)
         elseif MyLevel == 1625 or MyLevel <= 1649 then
           Ms = "Female Islander [Lv. 1625]"
           NaemQuest = "AmazonQuest2"
           
           LevelQuest = 1
           NameMon = "Female Islander"
           CFrameQuest = CFrame.new(5448.86133, 603.349365, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
           CFrameMon = CFrame.new(4659.69775, 647.820557, 834.697205, 0, 0, -1, 0, 1, 0, 1, 0, 0)
          elseif MyLevel == 1650 or MyLevel <= 1699 then
           Ms = "Giant Islander [Lv. 1650]"
           NaemQuest = "AmazonQuest2"
           
           LevelQuest = 2
           NameMon = "Giant Islander"
                     CFrameQuest = CFrame.new(5448.86133, 603.349365, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
           CFrameMon = CFrame.new(4869.33643, 596.635315, 37.1867523, -0.958187938, 0, -0.286139995, 0, 1, 0, 0.286139995, 0, -0.958187938)
          elseif MyLevel == 1700 or MyLevel <= 1724 then
             Ms = "Marine Commodore [Lv. 1700]"
           NaemQuest = "MarineTreeIsland"
           
           LevelQuest = 1
           NameMon = "Marine Commodore"
           CFrameQuest = CFrame.new(2180.54126, 30.3531189, -6741.55029, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
           CFrameMon = CFrame.new(2996.99634, 65.6201782, -7282.29541, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337) 
           elseif MyLevel == 1725 or MyLevel <= 1774 then
             Ms = "Marine Rear Admiral [Lv. 1725]"
           NaemQuest = "MarineTreeIsland"
           
           LevelQuest = 2
           NameMon = "Marine Rear Admiral"
           CFrameQuest = CFrame.new(2180.54126, 30.3531189, -6741.55029, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
           CFrameMon = CFrame.new(3695.38403, 155.158585, -7004.74805, -0.325602531, 0, -0.945506752, 0, 1, 0, 0.945506752, 0, -0.325602531) 
                      elseif MyLevel == 1775 or MyLevel <= 1800 then
             Ms = "Fishman Raider [Lv. 1775]"
           NaemQuest = "DeepForestIsland3"
           
           LevelQuest = 1
           NameMon = "Fishman Raider"
           CFrameQuest = CFrame.new(-10581.6563, 333.41037, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
           CFrameMon = CFrame.new(-10457.1738, 323.998352, -8450.38086, -1, 0, 0, 0, 1, 0, 0, 0, -1) 
          
                                  elseif MyLevel == 1800 or MyLevel <= 1824 then
             Ms = "Fishman Captain [Lv. 1800]"
           NaemQuest = "DeepForestIsland3"
           
           LevelQuest = 2
           NameMon = "Fishman Captain"
           CFrameQuest = CFrame.new(-10581.6563, 333.41037, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
           CFrameMon = CFrame.new(-11120.0332, 313.449188, -8791.31348, -1, 0, 0, 0, 1, 0, 0, 0, -1) 
                                             elseif MyLevel == 1825 or MyLevel <= 1849 then
             Ms = "Forest Pirate [Lv. 1825]"
           NaemQuest = "DeepForestIsland"
           
           LevelQuest = 1
           NameMon = "Forest Pirate"
           CFrameQuest = CFrame.new(-13234.04, 334.025909, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
           CFrameMon = CFrame.new(-13614.1426, 343.146973, -7756.50977, -0.515632391, 0, 0.856810033, 0, 1, 0, -0.856810033, 0, -0.515632391) 
                                                       elseif MyLevel == 1850 or MyLevel <= 1899 then
             Ms = "Mythological Pirate [Lv. 1850]"
           NaemQuest = "DeepForestIsland"
           
           LevelQuest = 2
           NameMon = "Mythological Pirate"
           CFrameQuest = CFrame.new(-13234.04, 334.025909, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
           CFrameMon = CFrame.new(-13681.8945, 420.407867, -7004.06641, -0.345898986, 0, 0.938271761, 0, 1, 0, -0.938271761, 0, -0.345898986) 
                                                                  elseif MyLevel == 1900 or MyLevel <= 1924 then
             Ms = "Jungle Pirate [Lv. 1900]"
           NaemQuest = "DeepForestIsland2"
           
           LevelQuest = 1
           NameMon = "Jungle Pirate"
           CFrameQuest = CFrame.new(-12680.3818, 392.508453, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
           CFrameMon = CFrame.new(-11861.918, 325.507813, -10098.6348, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                                                                             elseif MyLevel >= 1925 then
             Ms = "Musketeer Pirate [Lv. 1925]"
           NaemQuest = "DeepForestIsland2"
           
           LevelQuest = 2
           NameMon = "Musketeer Pirate"
           CFrameQuest = CFrame.new(-12680.3818, 392.508453, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
           CFrameMon = CFrame.new(-13457.0059, 386.467651, -9819.51953, 0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, 0.374604106) 
        end
    
     end
  end
  CheckQuest()
 -- Equip Weapon
  SelectToolWeapon = ""
  function EquipWeapon(ToolSe)
     if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
     end
  end
AutoFarm:Toggle("Auto Farm","",false,function(vu)
     
    if  SelectToolWeapon == "" and vu then
        Flux:Notification("SelectWeapon First","OK")
    else
        AFM = vu
        AFMMain = vu
        SaveSetting()
    end
  end)
  spawn(function()
     while wait() do
        if AFM then
            pcall(function()
                autofarm()
            end)
        end
     end
  end)
  game:GetService("RunService").Heartbeat:Connect(
     function()
        if AFM or Observation or AutoNew or Factory or Superhuman or DeathStep or Mastery or GunMastery or FramBoss or FramAllBoss or AutoBartilo or AutoNear or AutoRengoku or AutoSharkman or AutoFramEctoplasm or ST or _G.Tishita or Selctcan or _G.Training or HakiV2 or _G.v then
           if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
              game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
           end
        end
     end
     )
AutoFarm:Toggle("Auto Quest","",true,function(a)

        if a == true then
        GetQuest = false
        FarmQuest = true
        else
        GetQuest = true
        FarmQuest = false
        end
        SaveSetting()
end)
AutoFarm:Toggle("FastAttk","",true,function(a)
    FastAttk = a
end)
local c = game.Workspace.CurrentCamera
repeat wait() until game.Players.LocalPlayer.Character
local hed = game.Players.LocalPlayer.Character:WaitForChild("Head")
local r = math.random
local rad = math.rad
  local LocalPlayer = game:GetService("Players").LocalPlayer
  local VirtualUser = game:GetService('VirtualUser')
  function autofarm()
     if AFM then
        if LocalPlayer.PlayerGui.Main.Quest.Visible == GetQuest then
           StatrMagnet = false
           CheckQuest()
           print()
           LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
           wait(1.1)
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == FarmQuest then
           CheckQuest()
         LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
           if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
              pcall(
                 function()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                       CheckQuest()
                       if v.Name == Ms then
                          repeat wait()
                              
                             EquipWeapon(SelectToolWeapon)
                             if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                   if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                      local args = {
                                            [1] = "Buso"
                                      }
                                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                   end
                                    if FastAttk then
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
      game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
      game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
      game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
    
   game:GetService'VirtualUser':Button1Down(Vector2.new(0.1, 0.1))
   else
   game:GetService'VirtualUser':Button1Down(Vector2.new(999, 999))
                                    end
                                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(14)
                                   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10,0)
                                   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                                   game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                                   if HideHitBlox then
                                      v.HumanoidRootPart.Transparency = 1
                                   else
                                      v.HumanoidRootPart.Transparency = 0.75
                                   end
                                   v.HumanoidRootPart.CanCollide = false
                                   v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                   v.Head.CFrame = v.Head.CFrame
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999)
                                   if Magnet then
                                        PosMon = v.HumanoidRootPart.CFrame
                                      StatrMagnet = true
                                   end
                                   v.HumanoidRootPart.CanCollide = false
                                else
                                 
                                   StatrMagnet = false
                                   CheckQuest()
                                   print()
                                   LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                   wait(1.5)
                                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                end
                             else
                                CheckQuest()
                             end
                          until not v.Parent or v.Humanoid.Health <= 0 or AFM == false or LocalPlayer.PlayerGui.Main.Quest.Visible == GetQuest
                          StatrMagnet = false
                          CheckQuest()
                       end
                    end
                 end
              )
           else
              CheckQuest()
           end
        end
     end
  end
local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
 function stopweaponcd()
        pcall(function()
            RigC.activeController.timeToNextAttack = 0
        end)
 end
 pcall(function()
     spawn(function()
         while true do
             wait()
            stopweaponcd()
        end
    end)
end)
                        kkii = require(game.ReplicatedStorage.Util.CameraShaker)
  kkii:Stop()
        pcall(function()
            spawn(function()
                while true do
                    wait()
                    if AFM then
                        CheckQuest()
                        kkii = require(game.ReplicatedStorage.Util.CameraShaker)
  kkii:Stop()
                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.HumanoidRootPart)
                                box.Archivable = true
                                                                                          box.P = 0
                    end
                                        if not game.Workspace.Camera:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Workspace.Camera)
                                box.Archivable = true
                                                                                          box.P = 0
                    end
                                        if not game.Players.LocalPlayer.Character.LeftLowerArm:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.LeftLowerArm)
                                box.Archivable = true
                                                                                          box.P = 0
                                        end
                                                        if not game.Players.LocalPlayer.Character.LeftUpperArm:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.LeftUpperArm)
                                box.Archivable = true
                                                                                          box.P = 0
                                                        end
                                                                        if not game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.Head)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                        end
                                                                                        if not game.Players.LocalPlayer.Character.RightLowerArm:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.RightLowerArm)
                                box.Archivable = true                                                          
                                box.P = 0
                                                                                        end
                                                                                                        if not game.Players.LocalPlayer.Character.RightUpperArm:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.RightUpperArm)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                        end
                                                                                                                        if not game.Players.LocalPlayer.Character.LeftFoot:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.LeftFoot)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                        end
                                                                                                                                        if not game.Players.LocalPlayer.Character.LeftFoot:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.LeftFoot)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                                                        end
                                                                                                                                        if not game.Players.LocalPlayer.Character.LeftLowerLeg:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.LeftLowerLeg)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                        end
                                                                                                                                                        if not game.Players.LocalPlayer.Character.LeftUpperLeg:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.LeftUpperLeg)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                                        end
                                                                                                                                                                        if not game.Players.LocalPlayer.Character.RightFoot:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.RightFoot)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                                                        end
                                                                                                                                                                                        if not game.Players.LocalPlayer.Character.RightLowerLeg:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.RightLowerLeg)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                                                                        end
                                                                                                                                                                                                        if not game.Players.LocalPlayer.Character.RightUpperLeg:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.RightUpperLeg)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                                          end
                                                                                                                                                                                                                        if not game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.UpperTorso)
                                box.Archivable = true
                                                                                          box.P = 0

                                                                                                                                                                                                                                        end
                                                                                                                                                                                     if not game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyVelocity") then
                                box = Instance.new('BodyVelocity',game.Players.LocalPlayer.Character.Humanoid)
                                box.Archivable = true
                                                                                          box.P = 0
                                                                                                                                                                                     end
                            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.HumanoidRootPart)
                                box.Archivable = true
                                box.P = 0
                                box.D = 0
                    end
                                        if not game.Players.LocalPlayer.Character.LeftLowerArm:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.LeftLowerArm)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                        end
                                                        if not game.Players.LocalPlayer.Character.LeftUpperArm:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.LeftUpperArm)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                        end
                                                                        if not game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.Head)
                                box.Archivable = true
                                
                                                                box.P = 0
                                box.D = 0
                                                                        end
                                                                                        if not game.Players.LocalPlayer.Character.RightLowerArm:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.RightLowerArm)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                        end
                                                                                                        if not game.Players.LocalPlayer.Character.RightUpperArm:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.RightUpperArm)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                        end
                                                                                                                        if not game.Players.LocalPlayer.Character.LeftFoot:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.LeftFoot)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                        end
                                                                                                                                        if not game.Players.LocalPlayer.Character.LeftFoot:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.LeftFoot)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                        end
                                                                                                                                        if not game.Players.LocalPlayer.Character.LeftLowerLeg:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.LeftLowerLeg)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                        end
                                                                                                                                                        if not game.Players.LocalPlayer.Character.LeftUpperLeg:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.LeftUpperLeg)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                                        end
                                                                                                                                                                        if not game.Players.LocalPlayer.Character.RightFoot:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.RightFoot)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                                                        end
                                                                                                                                                                                        if not game.Players.LocalPlayer.Character.RightLowerLeg:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.RightLowerLeg)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                                                                        end
                                                                                                                                                                                                        if not game.Players.LocalPlayer.Character.RightUpperLeg:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.RightUpperLeg)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                                                                                        end
                                                                                                                                                                                                                        if not game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.UpperTorso)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0

                                                                                                                                                                                                                                        end
                                                                                                                                                                                     if not game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("BodyPosition") then
                                box = Instance.new('BodyPosition',game.Players.LocalPlayer.Character.Humanoid)
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                                                                                                                                                                     end
                        
                                box = Instance.new('BodyPosition',game.Workspace.Enemies:FindFirstChild(Ms))
                                box.Archivable = true
                                                                box.P = 0
                                box.D = 0
                                end
                end
            end)
        end)
AutoFarm:Toggle("Auto New World","",false,function(vu)
   AutoNew = vu
end)
AutoFarm:Toggle("Auto New World 3 st","",false,function(a)
    ST = a
end)
function Newbn()
    if ST then
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
   local args = {
         [1] = "Buso"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
         local MyLevel = game.Players.localPlayer.Data.Level.Value
         if MyLevel >= 1525 and NewWorld then
             AFM = false
             HJ = true
if HJ == true then
    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1938.46362, 7.63781738, 1734.47144, 0.29242152, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, 0.29242152)
    wait(1)
local args = {
    [1] = "ZQuestProgress",
    [2] = "Begin"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
HJ = false
end
wait(1)
Newq = false
if Newq == false then
    wait(120)
    Newq = true
end
        New = true
        if New == true then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                        repeat wait()
                            game:GetService'VirtualUser':CaptureController()
                                   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    v.HumanoidRootPart.CanCollide = false
                                   v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                                   v.HumanoidRootPart.Transparency = 1
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                        until Newq == true or ST == false
                        New = false
                        end
            end
                end
            if New == false then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1946.14075, 4.97466373, -2591.95679, 0.815817952, 0, 0.578308821, 0, 1, 0, -0.578308821, 0, 0.815817952)
                wait(1)
local args = {
    [1] = "TravelZou"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

            end
        end
    end
end
spawn(function()
    while wait() do
        if ST then
            Newbn()
        end
    end
end)
spawn(function()
   while wait(.1) do
      if AutoNew then
game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
   local args = {
         [1] = "Buso"
   }
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
         local MyLevel = game.Players.localPlayer.Data.Level.Value
         if MyLevel >= 700 and OldWorld then
            AFM = false
            SelectToolWeapon = "Key"
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4849.29883, 5.65138149, 719.611877)
            wait(0.5)
            local args = {
               [1] = "DressrosaQuestProgress",
               [2] = "Detective"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait(0.5)
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
               local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
               wait(.4)
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
            wait(0.5)
            function click()
               game:GetService'VirtualUser':CaptureController()
               game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end
            if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
               CheckBoss = true
               SelectToolWeapon = SelectToolWeaponOld
               for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                     repeat wait(.1)
                        pcall(function() 
                           v.HumanoidRootPart.Transparency = 0.5
                           v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                           v.HumanoidRootPart.BrickColor = BrickColor.new("White")
                           v.HumanoidRootPart.CanCollide = false
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10)
                           click()
                        end)
                     until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0 or AutoNew == false
                  end
               end
               CheckBoss = false
               wait(0.5)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1166.23743, 7.65220165, 1728.36487)
               wait(0.5)
               local args = {
                   [1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            else
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                  local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                  wait(.4)
                  game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
               end
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
            end 
         end
      end 
   end
end)
Checka = true
AutoFarm:Toggle("Auto Canvandit Sworld + Hop","",false,function(A)
    Canvandit = A
    while Canvandit do wait()
        if Checka == true then
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5310.53027, 18.8935547, 110.599594, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            Checka = false
        end
        if Checka == false then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                    repeat wait()
                        v.HumanoidRootPart.Size = Vector3.new(35,35,35)
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Transparency = 0
                game:GetService'VirtualUser':CaptureController()
               game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,5)
                    until v.Humanoid.Health <= 0 or Canvandit == false
                if v.Humanoid.Health <= 0 then
                    Hop()
                end
                end
            end
        end
    end 
end)
AutoFarm:Toggle("Auto Saber","",false,function(Value)
AutoOpenSaber = Value
end)
spawn(function()
	while wait(.1) do
		if AutoOpenSaber then
			local off = game:GetService("Workspace").Map.Jungle.Final:FindFirstChild("Part")
			local MyLevel = game.Players.localPlayer.Data.Level.Value
			if MyLevel >= 200 and AFM == true then
				repeat wait(.1)
					AFM = false
					function accept1()
						local string_1 = "ProQuestProgress";
						local string2 = "SickMan";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string_2);
					end

					function accept2()
						local string_1 = "ProQuestProgress";
						local string2 = "RichSon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string2);
					end
					function saber()
						if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Mob Leader [Lv. 120] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										pcall(function()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
											end
											EquipWeapon(SelectToolWeapon)
											v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
											v.HumanoidRootPart.CanCollide = false
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 10, 10)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end)
									until v.Humanoid.Health == 0
								end
							end
						end

						function accept3()
							local string_1 = "ProQuestProgress";
							local string2 = "RichSon";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
							Target:InvokeServer(string_1, string_2);
						end

						wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1421.87024, 55.4666862, 21.7750397)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1647.19556, 29.1544189, 438.299408)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1324.10144, 31.4560413, -461.404114)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1152.38464, 9.74718285, -700.309875)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587)
						wait()
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Torch")
						wait()
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.55762, 4.9214654, 4349.2334, -0.618430376, -1.56903435e-09, 0.785839617, -5.04992048e-09, 1, -1.97748973e-09, -0.785839617, -5.19136734e-09, -0.618430376)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.26721, 4.16943789, 4366.15332)
						wait()
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Cup")
						wait()
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.0614, 37.3480072, -1321.03955, -0.0699888021, -5.05999473e-08, 0.997547925, -7.48410045e-08, 1, 4.54734241e-08, -0.997547925, -7.14748296e-08, -0.0699888021)
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1457.87976, 88.2521744, -1390.39575)
						wait()
						accept1()
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
						wait()
						accept2()
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2852.90234, 7.56227827, 5367.72412)
						wait()
						EquipWeapon(SelectToolWeapon)
						wait()
						saber()
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
						wait()
						accept3()
						wait()
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Relic")
						wait()
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.84094, 29.8519993, 5.05432224, 0.859020233, -4.18967083e-08, 0.511941671, 4.07572731e-09, 1, 7.49999103e-08, -0.511941671, -6.23399004e-08, 0.859020233)
						wait()
						if off.CanCollide == false then
							AutoOpenSaber = false
							AFM = true
						end
					end
				until AutoOpenSaber == false or off.CanCollide == false or AFM == true

			elseif MyLevel >= 200 then
				repeat wait()
					function accept1()
						local string_1 = "ProQuestProgress";
						local string2 = "SickMan";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string_2);
					end

					function accept2()
						local string_1 = "ProQuestProgress";
						local string2 = "RichSon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string2);
					end
					function saber()
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Mob Leader [Lv. 120] [Boss]" then
								repeat wait()
									for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Mob Leader [Lv. 120] [Boss]" then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
											end
											EquipWeapon(SelectToolWeapon)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
										end
									end
								until v.Humanoid.Health == 0
							end
						end
					end

					function accept3()
local string_1 = "ProQuestProgress";
						local string2 = "RichSon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF"];
						Target:InvokeServer(string_1, string_2);
					end

					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1421.87024, 55.4666862, 21.7750397)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1647.19556, 29.1544189, 438.299408)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1324.10144, 31.4560413, -461.404114)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1152.38464, 9.74718285, -700.309875)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587)
					wait()
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Torch")
					wait()
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.55762, 4.9214654, 4349.2334, -0.618430376, -1.56903435e-09, 0.785839617, -5.04992048e-09, 1, -1.97748973e-09, -0.785839617, -5.19136734e-09, -0.618430376)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.26721, 4.16943789, 4366.15332)
					wait()
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Cup")
					wait()
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.0614, 37.3480072, -1321.03955, -0.0699888021, -5.05999473e-08, 0.997547925, -7.48410045e-08, 1, 4.54734241e-08, -0.997547925, -7.14748296e-08, -0.0699888021)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1457.87976, 88.2521744, -1390.39575)
					wait()
					accept1()
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
					wait()
					accept2()
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2852.90234, 7.56227827, 5367.72412)
					wait()
					EquipWeapon(SelectToolWeapon)
					wait()
					saber()
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909.106689, 13.7520342, 4077.34888)
					wait()
					accept3()
					wait()
local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Relic")
					wait()
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.84094, 29.8519993, 5.05432224, 0.859020233, -4.18967083e-08, 0.511941671, 4.07572731e-09, 1, 7.49999103e-08, -0.511941671, -6.23399004e-08, 0.859020233)
					wait()
					if off.CanCollide == false then
						AutoOpenSaber = false
					end
				until AutoOpenSaber == false or off.CanCollide == false
				if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Saber Expert [Lv. 200] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat wait(.1)
								pcall(function()
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
											[1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer(unpack(args))
									end
									EquipWeapon(SelectToolWeapon)
									v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
									v.HumanoidRootPart.CanCollide = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0, 15, 10)
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
								end)
							until AutoOpenSaber == true or v.Humanoid.Health <= 0
						end
					end
				end
			end
		end
	end
end)
AutoFarm:Toggle("Auto Factory","",false,function(vu)
     Factory = vu
     while Factory do wait()
        if game.Workspace.Enemies:FindFirstChild("Core") then
           Core = true
           AFM = false
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if Core and v.Name == "Core" and v.Humanoid.Health > 0 then
                 repeat wait(.1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
                    EquipWeapon(SelectToolWeapon)
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                 until not Core or v.Humanoid.Health <= 0  or Factory == false
              end
           end
        elseif game.ReplicatedStorage:FindFirstChild("Core") then
           Core = true
           AFM = false
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
        elseif AFMMain then
           Core = false
           AFM = true
        end
     end
  end)
AutoFarm:Toggle("Auto Superhuman","",false,function(vu)
     Superhuman = vu
     spawn(function()
      while wait(.1) do
         if Superhuman then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
               local args = {
                  [1] = "BuyBlackLeg"
               }
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end   
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                  SelectToolWeapon = "Black Leg"
               end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                  SelectToolWeapon = "Electro"
               end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                  SelectToolWeapon = "Fishman Karate"
               end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                  SelectToolWeapon = "Dragon Claw"
               end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                  local args = {
                     [1] = "BuyElectro"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
               if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                  local args = {
                     [1] = "BuyElectro"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                  local args = {
                     [1] = "BuyFishmanKarate"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
               if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                  local args = {
                     [1] = "BuyFishmanKarate"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                   if Fully then
                       if game.Players.LocalPlayer.Data.Fragments.Value <= 1499 then
                           _G.autoraid = true
                       elseif game.Players.LocalPlayer.Data.Fragments.Value <= 1499 then
                            local args = {
                       [1] = "BlackbeardReward",
                       [2] = "DragonClaw",
                       [3] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                       [1] = "BlackbeardReward",
                       [2] = "DragonClaw",
                       [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                       end
                   elseif not Fully then
                         local args = {
                       [1] = "BlackbeardReward",
                       [2] = "DragonClaw",
                       [3] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                       [1] = "BlackbeardReward",
                       [2] = "DragonClaw",
                       [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                   end
                end
               if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                  local args = {
                     [1] = "BuySuperhuman"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
               if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                  local args = {
                     [1] = "BuySuperhuman"
                  }
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
               end
            end
         end
      end
   end)
  end)
AutoFarm:Toggle("Auto Rengoku","",false,function(v)
    if OldWorld then
        Flux:Notification("Use in New World","OK")
     elseif RengokuWeapon == "" and v then
        Flux:Notification("Select Wapon First","OK")
     else
    AutoRengoku = v
     end
end)
     while AutoRengoku do wait()
        if AutoRengoku then
           if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or  game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
              EquipWeapon("Hidden Key")
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6571.81885, 296.689758, -6966.76514, 0.825126112, 8.412257e-10, 0.564948559, -2.42370835e-08, 1, 3.39100339e-08, -0.564948559, -4.16727595e-08, 0.825126112)
           elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
              for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                 if v.Name == "Snow Lurker [Lv. 1375]" and v.Humanoid.Health > 0 then
                    repeat wait()
                       if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
                          EquipWeapon(RengokuWeapon)
                          PosMonRengoku = v.HumanoidRootPart.CFrame
                          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                          game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                          VirtualUser:CaptureController()
                          VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                          StatrMagnetRengoku = true
                       else
                          StatrMagnetRengoku = false
                          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                       end
                    until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                    StatrMagnetRengoku = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                 end
              end
           else
              StatrMagnetRengoku = false
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
           end
        end
     end
AutoFarm:Toggle("Auto Sharkman Katate","",false,function(v)
     if OldWorld then
        Flux:Notification("Use New World","OK")
     elseif SharkmanWeapon == "" and v then
        Flux:Notification("Select Wapon First","OK")
     else
        local args = {
           [1] = "BuyFishmanKarate"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        AutoSharkman = v
     end
     while AutoSharkman do wait()
        if AutoSharkman then
           if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
              if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
              elseif game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
              else
                 Ms = "Tide Keeper [Lv. 1475] [Boss]"
                 if game.Workspace.Enemies:FindFirstChild(Ms) then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                       if v.Name == Ms then
                          repeat wait()
                             EquipWeapon(SharkmanWeapon)
                             game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                             if HideHitBlox then
                                v.HumanoidRootPart.Transparency = 1
                             else
                                v.HumanoidRootPart.Transparency = 0.75
                             end
                             v.HumanoidRootPart.CanCollide = false
                             v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                             game:GetService'VirtualUser':CaptureController()
                             game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                          until not v.Parent or v.Humanoid.Health <= 0 or AutoSharkman == false or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
                       end
                    end
                 else
                    CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
                 end
              end
           else
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy SharkmanKarate")
           end
        end
     end
  end)
AutoFarm:Toggle("Auto Electric v2","",false,function(a)
      Electric = a
       while Electric do wait()
            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") then
                local args = {
                     [1] = "BuyElectro"
                  }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                
            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                    SelectToolWeapon = "Electro"
                elseif  game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                if FullyE then
                    if game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
                        AFM = false
                        _G.autoraid = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.6201, 330.80191, -10131.6211, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                    wait(1)
                    local args = {
                        [1] = "BuyElectricClaw",
                        [2] = "Start"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12550.4258, 331.903687, -7496.61035, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.6201, 330.80191, -10131.6211, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                    local args = {
                        [1] = "BuyElectricClaw"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    AFM = true
                    elseif game.Players.LocalPlayer.Data.Fragments.Value <= 4999 and FullyE then
                        _G.autoraid = true
                    end
                    elseif not FullyE then
                                                AFM = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.6201, 330.80191, -10131.6211, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                    wait(1)
                    local args = {
                        [1] = "BuyElectricClaw",
                        [2] = "Start"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12550.4258, 331.903687, -7496.61035, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10371.6201, 330.80191, -10131.6211, -0.804111481, 0, -0.594478488, 0, 1, 0, 0.594478488, 0, -0.804111481)
                    local args = {
                        [1] = "BuyElectricClaw"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    AFM = true
                    end
                end
            end
        end
    end)
AutoFarm:Toggle("Auto DeathStep","",false,function(vu)
     DeathStep = vu
    while DeathStep do wait()
        if DeathStep then
           if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                 local args = {
                       [1] = "Buy DeathStep"
                 }
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                 SelectToolWeapon = "Death Step"
              end
              if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                 local args = {
                       [1] = "Buy DeathStep"
                 }
                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
                 SelectToolWeapon = "Death Step"
              end
              if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                 SelectToolWeapon = "Black Leg"
              end
           else
              local args = {
                 [1] = "BuyBlackLeg"
              }
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
        end
     end
  end)
AutoFarm:Toggle("Auto Yama","",false,function(a)
      Tishita = a
 while Tishita do wait()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5417.83545, 313.063538, -2823.35913, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
local args = {
    [1] = "EliteHunter"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
                        repeat wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                        until Tishita == false or game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                        
                    for _,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v2.Name == "Diablo [Lv. 1750]" or v2.Name == "Urban [Lv. 1750]" or v2.Name == "Deandre [Lv. 1750]" then
                            repeat wait()
                            game:GetService'VirtualUser':CaptureController()
                                   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    v.HumanoidRootPart.CanCollide = false
                                   v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
											v.HumanoidRootPart.Transparency = 1
									game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                            until Tishita == false or v2.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                end
            end
        end
  end)
AutoFarm:Toggle("Auto PlayersHunter","",false,function(a)
    Training = a
 while Training do wait()
        if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
  wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5417.83545, 313.063538, -2823.35913, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
        elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                    repeat wait()
                        game:GetService'VirtualUser':CaptureController()
                                   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                          v.HumanoidRootPart.CanCollide = false
                                   v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
											v.HumanoidRootPart.Transparency = 1
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
                    until Training == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or v.Humanoid.Health == 0
                end
            end
        end
    end
  end
 )
 WaponAccessories = {}
AutoFarm:Toggle("Auto Accessories","",false,function(Value)
  if SelectTooAccessories == "" and Value then
        Flux:Notification("Select Accessories First","OK")
     else
        AutoAccessories = Value
     end
  end)
 spawn(function()
     while wait() do
        if AutoAccessories then
           CheckAccessories = game.Players.LocalPlayer.Character
           if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
              if CheckAccessories:FindFirstChild("CoolShades") or CheckAccessories:FindFirstChild("BlackSpikeyCape") or CheckAccessories:FindFirstChild("BlueSpikeyCape") or CheckAccessories:FindFirstChild("RedSpikeyCape") or CheckAccessories:FindFirstChild("Chopper") or CheckAccessories:FindFirstChild("MarineCape") or CheckAccessories:FindFirstChild("GhoulMask") or CheckAccessories:FindFirstChild("MarineCap") or CheckAccessories:FindFirstChild("PinkCape") or CheckAccessories:FindFirstChild("SaboTopHat") or CheckAccessories:FindFirstChild("SwanGlasses") or CheckAccessories:FindFirstChild("UsoapHat") or CheckAccessories:FindFirstChild("Corrida") or CheckAccessories:FindFirstChild("ZebraCap") or CheckAccessories:FindFirstChild("TomoeRing") or CheckAccessories:FindFirstChild("BlackCape") or CheckAccessories:FindFirstChild("SwordsmanHat") or CheckAccessories:FindFirstChild("SantaHat") or CheckAccessories:FindFirstChild("ElfHat") or CheckAccessories:FindFirstChild("DarkCoat") then
              else
                 EquipWeapon(SelectTooAccessories)
                 wait(0.1)
                 game:GetService'VirtualUser':CaptureController()
                 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                 wait(0.1)
                 if game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories) then
                    game.Players.LocalPlayer.Character:FindFirstChild(SelectTooAccessories).Parent = game.Players.LocalPlayer:FindFirstChild("Backpack")
                 end
                 wait(1)
              end
           end
        end
     end
  end)
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
     if v:IsA("Tool") then
        if v.ToolTip == "Wear" then
           table.insert(WaponAccessories, v.Name)
        end
     end
  end
  SelectTooAccessories = ""
local SelectAccessories = AutoFarm:Dropdown("Select Accessories",WaponAccessories, function(Value)
     SelectTooAccessories = Value
end)
AutoFarm:Button("Refresh Accessories","",function()
     SelectAccessories:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
           if v.ToolTip == "Wear" then
              SelectAccessories:Add(v.Name)
           end
        end
     end
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
           if v.ToolTip == "Wear" then
              SelectAccessories:Add(v.Name)
           end
        end
     end
  end)
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

    local SelectWeapon = AutoFarm:Dropdown("Select Weapon",Wapon,function(Value)
        SelectToolWeapon = Value
    end)
  AutoFarm:Button("Refresh Weapon","",function()
        SelectWeapon:Clear()
        Wapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapon:Add(v.Name)
        end
    end
    end)
AutoFarm:Line()
  game:GetService("RunService").Heartbeat:Connect(
     function()
        if Mastery then
           game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        if GunMastery then
           game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
     end
  )
  WeaponMastery = ""
AutoFarm:Toggle("Auto Farm Mastery DevilFruit","",false,function(Value)
     if WeaponMastery == "" and v then
        Flux:Notification("Select Weapon First","OK")
     else
         CheckQuest()
        Mastery = v
        Ms = ""
     end
     while Mastery do wait()
        AutoDevilFruitMastery()
     end
  end)
 function AutoDevilFruitMastery()
     if Mastery then
        if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
           StatrMagnetDevilFruitMastery = false
           CheckQuest()
           print()
           LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
           wait(1.1)
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
           CheckQuest()
           LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
           if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
              pcall(
                 function()
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                       CheckQuest()
                       if v.Name == Ms then
                          repeat wait() CheckQuest()
                             if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                   if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                      local args = {
                                            [1] = "Buso"
                                      }
                                      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                   end
                                   HealthMin = v.Humanoid.MaxHealth*Persen/100
                                   PosMon = v.HumanoidRootPart.CFrame
                                   if v.Humanoid.Health <= HealthMin then
                                      UseDF = true
                                      EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                      v.HumanoidRootPart.Transparency = 0.75
                                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,20)
                                      if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                         if SkillZ and v.Humanoid.Health <= HealthMin then
                                            local args = {
                                               [1] = v.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                               [1] = "Z",
                                               [2] = Vector3.new(0,0,0)
                                            }
                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                         end
                                         if SkillX and v.Humanoid.Health <= HealthMin then
                                            local args = {
                                               [1] = v.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                               [1] = "X"
                                            }
                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                         end
                                      elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                         if SkillZ and v.Humanoid.Health <= HealthMin then
                                            local args = {
                                               [1] = v.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                               [1] = "Z",
                                               [2] = Vector3.new(0,0,0)
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                         end
                                         if SkillX and v.Humanoid.Health <= HealthMin then
                                            local args = {
                                               [1] = v.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                               [1] = "X",
                                               [2] = Vector3.new(0,0,0)
                                            }
 
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                         end
                                         if SkillC and v.Humanoid.Health <= HealthMin then
                                            local args = {
                                               [1] = v.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                               [1] = "C",
                                               [2] = Vector3.new(0,0,0)
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                         end
                                         if SkillV and v.Humanoid.Health <= HealthMin then
                                            local args = {
                                               [1] = v.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                               [1] = "V",
                                               [2] = Vector3.new(0,0,0)
                                            }
                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                         end
                                      end
                                   else
                                      UseDF = false
                                      EquipWeapon(WeaponMastery)
                                      if HideHitBlox then
                                         v.HumanoidRootPart.Transparency = 1
                                      else
                                         v.HumanoidRootPart.Transparency = 0.75
                                      end
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                   end
                                   StatrMagnetDevilFruitMastery = true
                                else
                                   StatrMagnet = false
                                   CheckQuest()
                                   print()
                                   LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                   wait(1.5)
                                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                end
                             else
                                CheckQuest()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                             end
                          until not v.Parent or v.Humanoid.Health <= 0 or AFM == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
                          StatrMagnetDevilFruitMastery = false
                          CheckQuest()
                          game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                       end
                    end
                 end
              )
           else
              CheckQuest()
              game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
           end
        end
     end
  end
  spawn(function()
     while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
           if v:IsA("Tool") then
              if v:FindFirstChild("RemoteFunctionShoot") then
                 SelectToolWeaponGun = v.Name
              end
           end
        end
     end
  end)
AutoFarm:Toggle("Auto Farm Gun Mastery","",false,function(Value)
if WeaponMastery == "" and v then
        Flux:Notification("Select Weapon First","ok")
     else
        CheckQuest()
   GunMastery = v
        Ms = ""
     end
     while GunMastery do wait()
        AutoGunMastery()
     end
end)
 function AutoGunMastery()
     if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
        CheckQuest()
        print()
        StatrMag  = true
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
        wait(1.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
     elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        CheckQuest()
              pcall(function()
                 if game.Workspace.Enemies:FindFirstChild(Ms) then
                    if GunMastery and v.Name == Ms then
                       repeat wait()
                          pcall(function()
                             if game.Workspace.Enemies:FindFirstChild(Ms) then
                                if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                   HealthMin = v.Humanoid.MaxHealth*Persen/100
                                   if v.Humanoid.Health <= HealthMin then
                                      EquipWeapon(SelectToolWeaponGun)
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                      v.HumanoidRootPart.Transparency = 0.75
                                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,10,15)
                                      local args = {
                                         [1] = v.HumanoidRootPart.Position,
                                         [2] = v.HumanoidRootPart
                                      }
                                      game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                   else
                                      EquipWeapon(WeaponMastery)
                                      if HideHitBlox then
                                       v.HumanoidRootPart.Transparency = 1
                                       Statsar = true
                                    else
                                      Statsar = false
                                       v.HumanoidRootPart.Transparency = 0.75
                                    end
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                                    if Magnet then
                                     
                                      PosMonF = v.HumanoidRootPart.CFrame
                                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = PosMon * CFrame.new(0, 15, 0)
                                    end
                                      v.HumanoidRootPart.CanCollide = false
                                      v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                                      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                                      game:GetService'VirtualUser':CaptureController()
                                      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                   end
                                   StatrMag = false
                                else
                                   CheckQuest()
                                   print()
                                   LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                   wait(1.1)
                                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
                                   wait(0.5)
                                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                end
                             else
                                CheckQuest()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                             end
                          end)
                       until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or GunMastery == false or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                    end
                 else
                    CheckQuest()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                 end
              end)
        end
     end
  end
  Persen = 15
AutoFarm:Slider("Health Defense", "Makes your faster.", 1, 100,10,function(v)
     Persen = v
end)
  local AMS = AutoFarm:Dropdown("Select Weapon",Wapon,function(v)
     WeaponMastery = v
     WeaponOldMastery = v
end)
 AutoFarm:Button("Refresh Weapon","",function()
   AMS:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
           AMS:Add(v.Name)
        end
     end
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
           AMS:Add(v.Name)
        end
     end
  end)
AutoFarm:Line()
  function CheckQuestBoss()
   if SelectBoss == "Diamond [Lv. 750] [Boss]" then
      MsBoss = "Diamond [Lv. 750] [Boss]"
      NaemQuestBoss = "Area1Quest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
      CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
   elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
      MsBoss = "Jeremy [Lv. 850] [Boss]"
      NaemQuestBoss = "Area2Quest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
      CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
   elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
      MsBoss = "Fajita [Lv. 925] [Boss]"
      NaemQuestBoss = "MarineQuest3"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
      CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
   elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
      MsBoss = "Don Swan [Lv. 1000] [Boss]"
      CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
   elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
      MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
      NaemQuestBoss = "IceSideQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
      CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
   elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
      MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
      CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
   elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
      MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
      NaemQuestBoss = "FrostQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
      CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
       MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
       NaemQuestBoss = "ForgottenQuest"             
       LevelQuestBoss = 3
       CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
       CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
      -- Old World
   elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
      MsBoss = "Saber Expert [Lv. 200] [Boss]"
      CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
   elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
      MsBoss = "The Gorilla King [Lv. 25] [Boss]"
      NaemQuestBoss = "JungleQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
      CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
   elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
      MsBoss = "Bobby [Lv. 55] [Boss]"
      NaemQuestBoss = "BuggyQuest1"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
      CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
   elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
      MsBoss = "Yeti [Lv. 110] [Boss]"
      NaemQuestBoss = "SnowQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
      CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
   elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
      MsBoss = "Mob Leader [Lv. 120] [Boss]"
      CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
      --The Gorilla King [Lv. 25] [Boss]
   elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
      MsBoss = "Vice Admiral [Lv. 130] [Boss]"
      NaemQuestBoss = "MarineQuest2"
      LevelQuestBoss = 2
      CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
      CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
   elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
      MsBoss = "Warden [Lv. 175] [Boss]"
      NaemQuestBoss = "ImpelQuest"
      LevelQuestBoss = 1
      CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
      CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
   elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
      MsBoss = "Chief Warden [Lv. 200] [Boss]"
      NaemQuestBoss = "ImpelQuest"
      LevelQuestBoss = 2
      CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
      CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
   elseif SelectBoss == "Flamingo [Lv. 225] [Boss]" then
      MsBoss = "Flamingo [Lv. 225] [Boss]"
      NaemQuestBoss = "ImpelQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
      CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
   elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
      MsBoss = "Magma Admiral [Lv. 350] [Boss]"
      NaemQuestBoss = "MagmaQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
      CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
   elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
      MsBoss = "Fishman Lord [Lv. 425] [Boss]"
      NaemQuestBoss = "FishmanQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
      CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
   elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
      MsBoss = "Wysper [Lv. 500] [Boss]"
      NaemQuestBoss = "SkyExp1Quest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
      CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
   elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
      MsBoss = "Thunder God [Lv. 575] [Boss]"
      NaemQuestBoss = "SkyExp2Quest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
      CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
   elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
      MsBoss = "Cyborg [Lv. 675] [Boss]"
      NaemQuestBoss = "FountainQuest"
      LevelQuestBoss = 3
      CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
      CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
   elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
       MsBoss = "Stone [Lv. 1550] [Boss]"
       NaemQuestBoss = "PiratePortQuest"
       LevelQuestBoss = 3
       CFrameQuestBoss = CFrame.new(-290.074768, 45.4408989, 5581.59033, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
       CFrameBoss = CFrame.new(-628.062195, 33.3545532, 6783.93848, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
   elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NaemQuestBoss = "DeepForestIsland"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
        CFrameBoss = CFrame.new(-13406.6875, 306.187927, -8394.31641, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
   elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
        NaemQuestBoss = "AmazonQuest2"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5448.86133, 603.349365, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        CFrameBoss = CFrame.new(5543.10498, 598.135254, 197.907257, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    
   end
end
Don = false
SelectToolWeaponBoss = ""
function EquipWeaponBoss()
   if game.Players.LocalPlayer.Backpack:FindFirstChild(SelectToolWeaponBoss) then
      local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(SelectToolWeaponBoss)
      wait(.4)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
   end
end
local VirtualUser = game:GetService('VirtualUser')
function AutoFramBoss()
 CheckQuestBoss()
 if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
       if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
          for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
             if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                repeat
                   pcall(function() wait() 
                      if HideHitBlox then
                            v.HumanoidRootPart.Transparency = 1
                      else
                            v.HumanoidRootPart.Transparency = 0.75
                      end
                      v.HumanoidRootPart.CanCollide = false
                      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 17, 5)
                      game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                      VirtualUser:CaptureController()
                      VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                   end)
                until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
             end
          end
       else
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
       end
    elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
       if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
          for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
             if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                repeat
                   pcall(function() wait() 
                      if HideHitBlox then
                         v.HumanoidRootPart.Transparency = 1
                      else
                         v.HumanoidRootPart.Transparency = 0.75
                      end
                      v.HumanoidRootPart.CanCollide = false
                      v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 25)
                      game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                      VirtualUser:CaptureController()
                      VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                   end)
                until not FramBoss or not v.Parent or v.Humanoid.Health <= 0
             end
          end
       else
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
       end
    else
       if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
          if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
             print()
             CheckQuestBoss()
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuestBoss
             wait(1.5)
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
          elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
             for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                   if FramBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                      repeat
                         pcall(function() wait() 
                               if HideHitBlox then
                                  v.HumanoidRootPart.Transparency = 1
                               else
                                  v.HumanoidRootPart.Transparency = 0.75
                               end
                               v.HumanoidRootPart.CanCollide = false
                               v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                               game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 17, 5)
                               game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                               VirtualUser:CaptureController()
                               VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                         end)
                      until not FramBoss or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                   end
             end
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameBoss
          end
       end
 end
end
local Boss = {}
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
   if string.find(v.Name, "Boss") then
      if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
      else
         table.insert(Boss, v.Name)
      end
   end
end
for i, v in pairs(game.workspace.Enemies:GetChildren()) do
   if string.find(v.Name, "Boss") then
      if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
      else
         table.insert(Boss, v.Name)
      end
   end
end
AutoFarm:Toggle(
  "Auto Farm Boss","",
  false
  ,
  function(Value)
      wait(.1)
      local args = {
          [1] = "AbandonQuest"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      FramBoss = Value
  end
)
local BossName =
   AutoFarm:Dropdown(
   "Select Boss",
   Boss,
   function(Value)
      SelectBoss = Value
      Don = false
   end
)
Wapon = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
      table.insert(Wapon, v.Name)
   end
end
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
      table.insert(Wapon, v.Name)
   end
end
local SelectWeaponBoss =
  AutoFarm:Dropdown(
  "Select Weapon Kill Boss",
  Wapon,
  function(Value)
     SelectToolWeaponBoss = Value
  end
)
AutoFarm:Button(
  "Refresh Weapon Boss","",
  function()
     SelectWeaponBoss:Clear()
     Wapon = {}
     for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
           SelectWeaponBoss:Add(v.Name)
        end
     end
     for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
           SelectWeaponBoss:Add(v.Name)
        end
     end
  end
)
AutoFarm:Button(
  "Refresh Boss","",
  function()
     Boss = {}
     BossName:Clear()
     for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if string.find(v.Name, "Boss") then
           if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
           else
              BossName:Add(v.Name)
           end
        end
     end
     for i, v in pairs(game.workspace.Enemies:GetChildren()) do
        if string.find(v.Name, "Boss") then
           if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
           else
              BossName:Add(v.Name)
           end
        end
     end
  end
)

spawn(function()
   while wait(.1) do
      if FramBoss then
         EquipWeaponBoss()
      end
   end
end)
spawn(function()
   while wait(.1) do
      if FramBoss then
         AutoFramBoss()
      end 
   end
end)
AutoFarm:Line()
AutoFarm:Toggle("Auto Buy LegendarySword","",false,function(Value)
     LegebdarySword = Value
    while LegebdarySword do wait()
        if LegebdarySword then
              local args = {
                 [1] = "LegendarySwordDealer",
                 [2] = "2"
              }
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
     end
  end)
AutoFarm:Toggle("Auto Buy LegendarySword + Hop","",false,function(Value)
   LegebdarySword = Value
  while LegebdarySword do wait()
      if LegebdarySword then
            local args = {
               [1] = "LegendarySwordDealer",
               [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
          wait(1)
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
               wait(4)
            end
         end
      end
   end
   function Teleport()
      while wait() do
         pcall(function()
            TPReturner()
            if foundAnything ~= "" then
               TPReturner()
            end
         end)
      end
   end
   Teleport()
      end
   end
end)
AutoFarm:Toggle("Auto Buy Enhancement","",false,function(Value)
     Enhancement = Value
   while Enhancement do wait()
        if Enhancement then
           local args = {
              [1] = "ColorsDealer",
              [2] = "2"
           }
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
     end
  end)
AutoFarm:Line()
  WeaponBartilo = ""
  local args = {
     [1] = "getInventoryWeapons"
  }
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  game:GetService("RunService").Heartbeat:Connect(
     function()
        if AutoBartilo then
              game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
     end
  )
AutoFarm:Toggle("Auto Quest Bartilo","",false,function(v)
    Bool = v
end)
  if game.Players.LocalPlayer.Backpack:FindFirstChild("Warrior Helmet") then
       HaveWarriorHelmet = true
    elseif game.Players.LocalPlayer.Character:FindFirstChild("Warrior Helmet") then
       HaveWarriorHelmet = true
    end
    if HaveWarriorHelmet and Bool == true then
       Flux:Notification("Quest Bartilo Successfully","OK")
    elseif WeaponBartilo == "" and Bool == true then
       Flux:Notification("Selecte Weapon First","OK")
    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 and Bool == true then
       Flux:Notification("Successfully","OK")
    else
       AutoBartilo = v
    end
     while AutoBartilo do wait()
       if AutoBartilo then
          if game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
             if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                   Ms = "Swan Pirate [Lv. 775]"
                   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                      if v.Name == Ms then
                         pcall(function()
                            repeat wait()
                               if HideHitBlox then
                                  v.HumanoidRootPart.Transparency = 1
                               else
                                  v.HumanoidRootPart.Transparency = 0.75
                               end
                               v.HumanoidRootPart.CanCollide = false
                               v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                               PosMonBarto =  v.HumanoidRootPart.CFrame
                               game:GetService'VirtualUser':CaptureController()
                               game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                               AutoBartiloBring = true                             
                            until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            AutoBartiloBring = false
                         end)
                      end
                   end
                else
                   CFramMon = CFrame.new(1057.92761, 137.614319, 1242.08069)
                   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFramMon
                end
             else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
                wait(1.1)
                local args = {
                   [1] = "StartQuest",
                   [2] = "BartiloQuest",
                   [3] = 1
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
             end
          elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
             if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                Ms = "Jeremy [Lv. 850] [Boss]"
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                   if v.Name == Ms then
                      repeat wait()
                         if HideHitBlox then
                            v.HumanoidRootPart.Transparency = 1
                         else
                            v.HumanoidRootPart.Transparency = 0.75
                         end
                         v.HumanoidRootPart.CanCollide = false
                         v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
                         game:GetService'VirtualUser':CaptureController()
                         game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                      until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false
                   end
                end
             elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
                wait(1.1)
                local args = {
                      [1] = "BartiloQuestProgress",
                      [2] = "Bartilo"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                wait(2)
             else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
             end
          elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
             wait(1)
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
          end
       end
    end
 local BartiloWeapon = AutoFarm:Dropdown("Select Weapon",Wapon,function(A)
    WeaponBartilo = A
end)
 AutoFarm:Button("Refresh Weapon","",function()
    BartiloWeapon:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       if v:IsA("Tool") then
          BartiloWeapon:Add(v.Name)
       end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
       if v:IsA("Tool") then
          BartiloWeapon:Add(v.Name)
       end
    end
 end)
AutoFarm:Line()
 NearWeapon = ""
AutoFarm:Toggle("Auto Farm Near","",false,function(v)
     if NearWeapon == "" and v then
               Flux:Notification("Select Wapon First","OK")
     else
       AutoNear = v
     end
     while AutoNear do wait()
        if AutoNear then
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if AutoNear and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceNear then
                 repeat wait()
                       EquipWeapon(NearWeapon)
                       game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                       VirtualUser:CaptureController()
                       VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                       game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame  * CFrame.new(0, 15, 0)
                       if HideHitBlox then
                          v.HumanoidRootPart.Transparency = 1
                          Statsar = true
                       else
                         Statsar = false
                          v.HumanoidRootPart.Transparency = 0.75
                       end
                       v.HumanoidRootPart.CanCollide = false
                       v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                       if Magnet then
                        
                         PosMonA = v.HumanoidRootPart.CFrame
                         game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = PosMonA * CFrame.new(0, 15, 0)
                         print(PosMonA)
                       end
                       
                       
                 until AutoNear == false or not v.Parent or v.Humanoid.Health <= 0
              end
           end
        end
     end
  end)
    DistanceNear = 100
AutoFarm:Slider("Distance",1,1,10000,DistanceNear,function(A)
 DistanceNear = A
end)
  local WeaponNear =  AutoFarm:Dropdown("Select Weapon",Wapon,function(Value)
     NearWeapon = Value
  end)
  AutoFarm:Button("Refresh Weapon","",function()
     WeaponNear:Clear()
     for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
           WeaponNear:Add(v.Name)
        end
     end
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
           WeaponNear:Add(v.Name)
        end
     end
  end)
AutoFarm:Line()
  local ObservationVirtualUser = game:GetService('VirtualUser')
AutoFarm:Toggle("Auto Farm Observation","",false,function(a)
     Observation = a
     if Observation then
        ObservationVirtualUser:CaptureController()
        ObservationVirtualUser:SetKeyDown('0x65')
        wait(2)
        ObservationVirtualUser:SetKeyUp('0x65')
     end
     while Observation do wait()
        if NewWorld then
           if game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") then
              if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                 repeat wait()
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                 until Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
              else
                 repeat wait()
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]").HumanoidRootPart.CFrame * CFrame.new(10,15,0)
                 until Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
              end
           else
              game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.558777, 40.0827065, 32766.498)
           end
        elseif OldWorld then
           if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
              if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                 repeat wait()
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                 until Observation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
              else
                 repeat wait()
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(10,15,0)
                 until Observation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
              end
           else
              game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5533.29785, 88.1079102, 4852.3916)
           end
        end
     end
  end)
  spawn(function()
     while wait() do wait(40)
        pcall(function()
           if Observation and not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
              ObservationVirtualUser:CaptureController()
              ObservationVirtualUser:SetKeyDown('0x65')
              wait(2)
              ObservationVirtualUser:SetKeyUp('0x65')
           end
        end)
     end
  end)
 AutoFarm:Button("Check Observation Haki level","",function()
     Flux:Notification("Observation Haki Level : "..game.Players.LocalPlayer.VisionRadius.Value,"OK")
  end)
   AutoFarm:Line()
  AutoFarm:Toggle("Auto Fram Ectoplasm","",false,function(A)
   if NewWorld then
      AutoFramEctoplasm = A
   else
      Flux:Notification("Use in New World","OK")
   end
   while AutoFramEctoplasm do wait()
      if AutoFramEctoplasm then
         if game.Workspace.Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game.Workspace.Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game.Workspace.Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game.Workspace.Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
               if string.find(v.Name, "Ship") then
                  repeat wait()
                     if string.find(v.Name, "Ship") then
                        if setsimulationradius then 
                           setsimulationradius(1e+1598, 1e+1599)
                        end
                        EquipWeapon(EctoplasmWeaponSelect)
                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                        -- ÂµÃ•Ã ÃÂ§
                        PosMonEctoplasm = v.HumanoidRootPart.CFrame
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                        StatrMagnetEctoplasm = true
                     else
                        StatrMagnetEctoplasm = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812)
                     end
                  until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoFramEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                  StatrMagnetEctoplasm = false
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812)
               end
            end
         else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
         end
      end
   end
end)
  -- Magnet
  spawn(function()
     while wait() do
        if Mastery and StatrMagnetDevilFruitMastery and Magnet then
           for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
              CheckQuest()
              if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                 if v.Name == "Factory Staff [Lv. 800]" and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
                    wait()
                    v.HumanoidRootPart.CanCollide = false
                    if HideHitBlox then
                       v.HumanoidRootPart.Transparency = 1
                    else
                       v.HumanoidRootPart.Transparency = 0.75
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    if UseDF then
                       v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                    elseif UseDF == false then
                       v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                    end
                    v.HumanoidRootPart.CFrame = PosMon
                 elseif v.Name == Ms and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                    wait()
                    v.HumanoidRootPart.CanCollide = false
                    if HideHitBlox then
                       v.HumanoidRootPart.Transparency = 1
                    else
                       v.HumanoidRootPart.Transparency = 0.75
                    end
                    if UseDF then
                       v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                    elseif UseDF == false then
                       v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                    end
                    v.HumanoidRootPart.CFrame = PosMon
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                 end
              end
           end
        end
        if AutoBartilo and AutoBartiloBring and Magnet then
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if v.Name == "Swan Pirate [Lv. 775]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                 if v.Name == "Swan Pirate [Lv. 775]" then
                    if HideHitBlox then
                       v.HumanoidRootPart.Transparency = 1
                    else
                       v.HumanoidRootPart.Transparency = 0.75
                    end
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                    v.HumanoidRootPart.CFrame = PosMonBarto
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                 end
              end
           end
        end
        if AutoRengoku and StatrMagnetRengoku and Magnet then
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if v.Name ==  "Snow Lurker [Lv. 1375]" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                 if v.Name == "Snow Lurker [Lv. 1375]" then
                    if HideHitBlox then
                       v.HumanoidRootPart.Transparency = 1
                    else
                       v.HumanoidRootPart.Transparency = 0.75
                    end
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                    v.HumanoidRootPart.CFrame = PosMonRengoku
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                 end
              end
           end
        end
        if AutoFramEctoplasm and StatrMagnetEctoplasm and Magnet then
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                 if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                    if HideHitBlox then
                       v.HumanoidRootPart.Transparency = 1
                    else
                       v.HumanoidRootPart.Transparency = 0.75
                    end
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                    v.HumanoidRootPart.CFrame = PosMonEctoplasm
                    
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                 end
              end
           end
        end
        if AFM and StatrMagnet and Magnet then
         CheckQuest()
         for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == Ms and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
               if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 600 then
                  if HideHitBlox then
                     v.HumanoidRootPart.Transparency = 1
                  else
                     v.HumanoidRootPart.Transparency = 0.75
                  end
                  v.HumanoidRootPart.CanCollide = false
                  v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
                  v.HumanoidRootPart.CFrame = PosMon
                  v.Head.CFrame = PosMon
                  sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
               end
            end
         end
        end
     if AutoNear and Statsar and Magnet then
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
               if HideHitBlox then
                  v.HumanoidRootPart.Transparency = 1
               else
                  v.HumanoidRootPart.Transparency = 0.75
               end
               v.HumanoidRootPart.CanCollide = false
               v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
               v.HumanoidRootPart.CFrame = PosMonA
               sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
         end
      end
   end
     end
     if HakiV2 and Statsar and Magnet then
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v.Name == "Forest Pirate [Lv. 1825]" then
            if (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 800 then
               if HideHitBlox then
                  v.HumanoidRootPart.Transparency = 1
               else
                  v.HumanoidRootPart.Transparency = 0.75
               end
               v.HumanoidRootPart.CanCollide = false
               v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
               v.HumanoidRootPart.CFrame = osPos
               sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            end
         end
      end
   end
     if GunMastery and Statsar and Magnet then
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
         if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
               if HideHitBlox then
                  v.HumanoidRootPart.Transparency = 1
               else
                  v.HumanoidRootPart.Transparency = 0.75
               end
               v.HumanoidRootPart.CanCollide = false
               v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
               v.HumanoidRootPart.CFrame = PosMonF
               sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
         end
      end
   end

  end)
local Stats = win:Tab("Stats", "http://www.roblox.com/asset/?id=7100881079")
Stats:Toggle("Melee","",false,function(vu)
    M = vu
    while M do wait(.1)
        Melee()
    end
end)

Stats:Toggle("Defense","",false,function(vu)
    D = vu
    while D do wait(.1)
        Defense()
    end
end)

Stats:Toggle("Sword","",false,function(vu)
    S = vu
    while S do wait(.1)
        Sword()
    end
end)

Stats:Toggle("Gun","",false,function(vu)
    G = vu
    while G do wait(.1)
        Gun()
    end
end)

Stats:Toggle("Devil Fruit","",false,function(vu)
    Dv = vu
    while Dv do wait(.1)
        Devil()
    end
end)

SelectPoint = 1
Stats:Slider("Point", "Makes your faster.", 0, 10,1,function(Point)
    SelectPoint = Point
end)
function Melee()
    local args = {
    [1] = "AddPoint",
    [2] = "Melee",
    [3] = SelectPoint
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

function Defense()
    local args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = SelectPoint
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

function Sword()
    local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = SelectPoint
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

function Gun()
    local args = {
    [1] = "AddPoint",
    [2] = "Gun",
    [3] = SelectPoint
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

function Devil()
local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = SelectPoint
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
 local Teleport = win:Tab("Teleport","http://www.roblox.com/asset/?id=7100840693")
    Teleport:Toggle("Ctrl + Click = TP","",false,function(vu)
        CTRL = vu
    end)
    local Plr = game:GetService("Players").LocalPlayer
    local Mouse = Plr:GetMouse()
    Mouse.Button1Down:connect(
        function()
            if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                return
            end
            if not Mouse.Target then
                return
            end
            if CTRL then
                Plr.Character:MoveTo(Mouse.Hit.p)
            end
        end
    )
 if NewWorld then
            Teleport:Button("Thrid World","",function()
          local args = {
    [1] = "TravelZou"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end)
     Teleport:Button("Old World","",function()
        local args = {
           [1] = "TravelMain" -- OLD WORLD to NEW WORLD
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        
     end)
  else
     Teleport:Button("NewWorld","",function()
        local args = {
           [1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
     end)
  end
  Teleport:Button("Teleport to SeaBeasts","",function()
     for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,100,0)
        end
     end
  end)
     Teleport:Line()
  Teleport:Label("Teleport Island")
  if NewWorld then
     Teleport:Button("First Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
     end)
     Teleport:Button("Kingdom of Rose","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame
     end)
     Teleport:Button("Dark Ares","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame
     end)
     Teleport:Button("Mansion","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390.096313, 331.886475, 673.464966)
     end)
     Teleport:Button("Flamingo Room","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2302.19019, 15.1778421, 663.811035)
     end)
     Teleport:Button("Green bit","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)
     end)
     Teleport:Button("Cafe","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)
     end)
     Teleport:Button("Factroy","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.42569, 210.019623, -432.504791)
     end)
     Teleport:Button("Colosseum","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836.58191, 44.5890656, 1360.30652)
     end)
     Teleport:Button("Ghost Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5571.84424, 195.182297, -795.432922)
     end)
     Teleport:Button("Ghost Island 2nd","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5931.77979, 5.19706631, -1189.6908)
     end)
     Teleport:Button("Snow Mountain","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1384.68298, 453.569031, -4990.09766)
     end)
     Teleport:Button("Hot and Cold","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)
     end)
     Teleport:Button("Magma Side","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
     end)
     Teleport:Button("Cursed Ship","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
     end)
     Teleport:Button("Frosted Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)
     end)
     Teleport:Button("Forgotten Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3043.31543, 238.881271, -10191.5791)
     end)
     Teleport:Button("Usoapp Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4748.78857, 8.35370827, 2849.57959)
     end)
     Teleport:Button("Raids Low","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5554.95313, 329.075623, -5930.31396)
     end)
     Teleport:Button("Minisky Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.358917, 49325.7031, -35259.3008)
     end)
  elseif OldWorld then
      
     Teleport:Button("Start Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)
     end)
     Teleport:Button("Marine Start","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374, 6.88881969, 2046.99817)
     end)
     Teleport:Button("Middle Town","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)
     end)
     Teleport:Button("Jungle","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)
     end)
     Teleport:Button("Pirate Village","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)
     end)
     Teleport:Button("Desert","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)
     end)
     Teleport:Button("Frozen Village","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)
     end)
     Teleport:Button("Marine Ford","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)
     end)
     Teleport:Button("Colosseum","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1428.35474, 7.38933945, -3014.37305)
     end)
     Teleport:Button("Sky 1st","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)
     end)
     Teleport:Button("Sky 2st ","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)
     end)
     Teleport:Button("Sky 3st ","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)
     end)
     Teleport:Button("Prison","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4854.16455, 5.68742752, 740.194641)
     end)
     Teleport:Button("Magma Village","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)
     end)
     Teleport:Button("UndeyWater City","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)
     end)
     Teleport:Button("Fountain City","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)
     end)
     Teleport:Button("House Cyborg's","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)
     end)
     Teleport:Button("Shank's Room","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
     end)
     Teleport:Button("Mob Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
     end)
     else
    Teleport:Button("First Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-325.113464, 40.1279297, 5491.7583, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
    end)
     Teleport:Button("Boat Castle","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5419.64209, 310.163513, -2657.39526, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
     end)
          Teleport:Button("Marine Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5419.64209, 310.163513, -2657.39526, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
          end)
           Teleport:Button("Turtle Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12916.8906, 327.117188, -7647.22168, -1, 0, 0, 0, 1, 0, 0, 0, -1)
           end)
            Teleport:Button("Amazon Island","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5832.79688, 53.2015953, -1101.43604, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
     end)
     Teleport:Button("Mini Sky","",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262.517487, 49321.5117, -35252.9375, -0.999392271, 0, 0.0348687991, 0, 1, 0, -0.0348687991, 0, -0.999392271)
     end)  
  end
  local Raids = win:Tab("Esp-Raids","http://www.roblox.com/asset/?id=7100848432")
  function isnil(thing)
     return (thing == nil)
  end
  local function round(n)
     return math.floor(tonumber(n) + 0.5)
  end
  Number = math.random(1, 1000000)
  function UpdatePlayerChams()
     for i,v in pairs(game:GetService'Players':GetChildren()) do
        pcall(function()
              if not isnil(v.Character) then
                 if ESPPlayer then
                    if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "GothamBold"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                          name.TextColor3 = Color3.fromRGB(73, 255, 0)
                    else
                          name.TextColor3 = Color3.fromRGB(255,10, 0)
                    end
                    else
                          v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                    end
                 else
                    if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                 end
              end
        end)
     end
  end
  function UpdateChestChams()
     for i,v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
              if string.find(v.Name,"Chest") then
                 if ChestESP then
                    if string.find(v.Name,"Chest") then
                          if not v:FindFirstChild('NameEsp'..Number) then
                             local bill = Instance.new('BillboardGui',v)
                             bill.Name = 'NameEsp'..Number
                             bill.ExtentsOffset = Vector3.new(0, 1, 0)
                             bill.Size = UDim2.new(1,200,1,30)
                             bill.Adornee = v
                             bill.AlwaysOnTop = true
                             local name = Instance.new('TextLabel',bill)
                             name.Font = "GothamBold"
                             name.FontSize = "Size14"
                             name.TextWrapped = true
                             name.Size = UDim2.new(1,0,1,0)
                             name.TextYAlignment = 'Top'
                             name.BackgroundTransparency = 1
                             name.TextStrokeTransparency = 0.5
                             if v.Name == "Chest1" then
                                name.TextColor3 = Color3.fromRGB(255, 10, 0)
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                             end
                             if v.Name == "Chest2" then
                                name.TextColor3 = Color3.fromRGB(73, 255, 0)
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                             end
                             if v.Name == "Chest3" then
                                name.TextColor3 = Color3.fromRGB(255,191, 0)
                                name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                             end
                          else
                             v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                          end
                    end
                 else
                    if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                 end
              end
        end)
     end
  end
  function UpdateDevilChams()
     for i,v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
              if DevilFruitESP then
                 if string.find(v.Name, "Fruit") then
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                          local bill = Instance.new('BillboardGui',v.Handle)
                          bill.Name = 'NameEsp'..Number
                          bill.ExtentsOffset = Vector3.new(0, 1, 0)
                          bill.Size = UDim2.new(1,200,1,30)
                          bill.Adornee = v.Handle
                          bill.AlwaysOnTop = true
                          local name = Instance.new('TextLabel',bill)
                          name.Font = "GothamBold"
                          name.FontSize = "Size14"
                          name.TextWrapped = true
                          name.Size = UDim2.new(1,0,1,0)
                          name.TextYAlignment = 'Top'
                          name.BackgroundTransparency = 1
                          name.TextStrokeTransparency = 0.5
                          name.TextColor3 = Color3.fromRGB(73, 255, 0)
                          name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                          v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                 end
              else
                 if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                 end
              end
        end)
     end
  end
  function UpdateFlowerChams()
     for i,v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
              if v.Name == "Flower2" or v.Name == "Flower1" then
                 if FlowerESP then
                    if not v:FindFirstChild('NameEsp'..Number) then
                          local bill = Instance.new('BillboardGui',v)
                          bill.Name = 'NameEsp'..Number
                          bill.ExtentsOffset = Vector3.new(0, 1, 0)
                          bill.Size = UDim2.new(1,200,1,30)
                          bill.Adornee = v
                          bill.AlwaysOnTop = true
                          local name = Instance.new('TextLabel',bill)
                          name.Font = "GothamBold"
                          name.FontSize = "Size14"
                          name.TextWrapped = true
                          name.Size = UDim2.new(1,0,1,0)
                          name.TextYAlignment = 'Top'
                          name.BackgroundTransparency = 1
                          name.TextStrokeTransparency = 0.5
                          name.TextColor3 = Color3.fromRGB(255, 0, 0)
                          if v.Name == "Flower1" then
                             name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                             name.TextColor3 = Color3.fromRGB(255,10,0)
                          end
                          if v.Name == "Flower2" then
                             name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                             name.TextColor3 = Color3.fromRGB(0, 12, 255 )
                          end
                    else
                          v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                 else
                    if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                 end
              end
        end)
     end
  end
Raids:Toggle("Auto Raid","",false,function(vu)
autoraid = t
end)
                         game:GetService("RunService").RenderStepped:Connect(function()
                            if _G.autoraid then
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                            end
                            end)
                            
                            spawn(function()
                            while wait(.1) do
                                if _G.autoraid then
                                    for i,v in pairs(game.Workspace:GetChildren()) do
                                        if string.find(v.Name, "Fruit") then
                                            v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                                        end
                                    end
                                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", selectchip)
                                        end
                                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
                                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                                        end
                                    end
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                                            pcall(function()
                                                repeat wait(.1)
                                                    if sethiddenproperty then 
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    if v.Humanoid.Health > 0 then
                                                        v.Humanoid.Health = 0
                                                    elseif v.Humanoid.Health == 0 then
                                                        v.Humanoid.Health = v.Humanoid.MaxHealth
                                                    else
                                                        v.Humanoid.Health = 50
                                                    end
                                                until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
                                            end)
                                        end
                                    end
                                    spawn(function()
                                        while wait() do
                                            pcall(function()
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                            end)
                                        end
                                    end)
                                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,10,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,10,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,10,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,10,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,10,0)
                                        end
                                    else
                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
                                    end
                                    local args = {
                                        [1] = "Awakener",
                                        [2] = "Check"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "Awakener",
                                        [2] = "Awaken"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            end
                            end)
                            spawn(function()
                            while wait() do
                                if autoraid then
                                    local args = {
                                        [1] = "Cousin",
                                        [2] = "Buy"
                                    }
                                    
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            end
                            end)
                            Raids:Dropdown("Select Microchip To Auto Raid",{"Flame","Ice","Quake","Light","Dark","String","Rumble"},function(t)
                            selectchip = t
                            end)
                            Raids:Line()
                            Raids:Toggle("Kill Arua","",false,function(value)
                            RaidsArua = value
                            end)
                            Raids:Toggle("Auto Next Island","",false,function(value)
                            NextIsland = value
                            end)
                            Raids:Toggle("Auto Awakener","",false,function(value)
                            Awakener = value
                            end)
                            Raids:Button("Labbatle","",function()
                            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)
                            end)
                            Raids:Button("Awakening Room","", function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.227783, 1.39509034, 1857.00732)
                            end)
                            spawn(function()
                            while wait(.1) do
                                if Awakener then
                                    local args = {
                                        [1] = "Awakener",
                                        [2] = "Check"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "Awakener",
                                        [2] = "Awaken"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            end
                            end)
                            spawn(function()
                            while wait(.1) do
                                if NextIsland then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,40,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,40,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,40,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,40,0)
                                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,40,0)
                                        end
                                    else
                                        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6480.84473, 252.764435, -4532.41748, -0.807500541, -1.05677671e-08, 0.589866817, -2.50809293e-08, 1, -1.64191238e-08, -0.589866817, -2.80528596e-08, -0.807500541)
                                    end
                                end
                            end
                            end)
                            game:GetService("RunService").Heartbeat:Connect(
                            function()
                            if NextIsland then
                                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                            end
                            end)
                            spawn(function()
                            while wait(.1) do
                                if RaidsArua then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if RaidsArua and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
                                            pcall(function()
                                                repeat wait(.1)
                                                    if sethiddenproperty then
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                                    end
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.Health = 0
                                                until not RaidsArua or not v.Parent or v.Humanoid.Health <= 0
                                            end)
                                        end
                                    end
                                end
                            end
                        end)
  local Players = win:Tab("Players","http://www.roblox.com/asset/?id=7100894442")
PlayerName = {}
  for i,v in pairs(game.Players:GetChildren()) do
     table.insert(PlayerName ,v.Name)
  end
  local SelectedPly = Players:Label("SelectPlayer :") 
  SelectedKillPlayer = ""
  local Player = Players:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
     SelectedKillPlayer = plys
     SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
  end)
  Players:Button("Refrsh Player","",function()
     PlayerName = {}
     Player:Clear()
     for i,v in pairs(game.Players:GetChildren()) do
        Player:Add(v.Name)
        SelectedPly:Refresh("SelectPlayer :")
     end
  end)
 game:GetService("RunService").Heartbeat:Connect(
     function()
        if KillPlayer then
           game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
     end
  )
  Players:Toggle("Kill Player","",false,function(bool)
     KillPlayer = bool
     if KillPlayer == false then
        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
     end
     while KillPlayer do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,-15,0)
        game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(60,60,60)
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
     end
  end)
  Players:Toggle("Spectate Player","",false,function(bool)
     Sp = bool
     local plr1 = game.Players.LocalPlayer.Character.Humanoid
     local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
     repeat wait(.1)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
     until Sp == false
     game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
  end)
  Players:Button("Teleport Player","",function()
     local plr1 = game.Players.LocalPlayer.Character
     local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
     plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
  end)
Players:Line()
  Players:Toggle("Aimbot Gun","",false,function(bool)
     if SelectedKillPlayer == "" and bool then
        VLib:Notification("Select Player to Aim")
     else
        Aimbot = bool
     end
  end)
  local lp = game:GetService('Players').LocalPlayer
  local mouse = lp:GetMouse()
  mouse.Button1Down:Connect(function()
     if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) then
        local args = {
           [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,
           [2] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart
        }
        game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
     end
  end)  
  Players:Toggle("Aimbot Skill","",false,function(bool)
     AimbotSkill = bool
     while AimbotSkill do wait()
        pcall(function()
           if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
              local args = {
              [1] = game:GetService("Players"):FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position
              }
              game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
           end
        end)
     end
  end)
 Players:Line()
  Players:Slider("WalkSpeed","",1,1000,16,function(a)
   Speedset = a
  end)
  Players:Slider("JumpPower","",1,1000,16,function(a)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
  end)
  Players:Line()
  Players:Line()
  Players:Label("Safe Mode")
  Safe = 5206
  Players:Slider("Select Health","",1,7720,5206,function(a)
      Safe = a
  end)
 Players:Toggle("Start Mode","",false,function(a)
     Safeonly = a
 end)
spawn(function()
    while wait() do
        if Kill then
            PlayersKill(true,false)
        end
    end
end)
Players:Line()
 Players:Label("Stats Server")
 Players:Line()
 local Sta1 = Players:Label("Players : " )
 local Sta2 = Players:Label("Chest : " )
 spawn(function()
     while wait(.1) do
         if Safeonly then
             if game.Players.LocalPlayer.Character.Humanoid.Health <= Safe then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(87.7890625, 9.12469482, 2800.5979, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            end
        end
    end
 end)
 Players:Line()
 local SelectedPlys = Players:Label("Grab Player [Kabucha Only]") 
 Players:Line()
   VA = {}
  for i,v in pairs(game.Players:GetChildren()) do
     table.insert(VA ,v.Name)
  end
  local SelectedPlys = Players:Label("SelectPlayer :") 
  PlayerToGrab = ""
  local Playern = Players:Dropdown("Selected Player",VA,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
     PlayerToGrab  = plys
     SelectedPlys:Refresh("Selected Player : "..PlayerToGrab)
  end)
  Players:Button("Refrsh Player","",function()
     VA = {}
     Playern:Clear()
     for i,v in pairs(game.Players:GetChildren()) do
        Playern:Add(v.Name)
        SelectedPlys:Refresh("SelectPlayer :")
     end
  end)
  Players:Toggle("Grab Player","",false,function(a)
      Graba = a
      while Graba do wait()
          print("heck")
         for i,v in pairs(game:GetService("workspace").Characters:GetChildren()) do
             if v.Name == PlayerToGrab then
                 print("heck")
                repeat wait()
                    print("Shit")
                      
                    
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                until Graba == false
            end
         end
      end
  end)
  local Misc = win:Tab("Misc","http://www.roblox.com/asset/?id=7100794798")
  Misc:Label("Server Time")
       Time = Misc:Label("Server Time")
       local function UpdateTime()
       local GameTime = math.floor(workspace.DistributedGameTime+0.5)
       local Hour = math.floor(GameTime/(60^2))%24
       local Minute = math.floor(GameTime/(60^1))%60
       local Second = math.floor(GameTime/(60^0))%60
       Time:Refresh("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
       end
       spawn(function()
             while true do
                UpdateTime()
                game:GetService("RunService").RenderStepped:Wait()
             end
       end)
  local LocalPlayer = game:GetService'Players'.LocalPlayer
  local originalstam = LocalPlayer.Character.Energy.Value
  function infinitestam()
     LocalPlayer.Character.Energy.Changed:connect(function()
        if InfinitsEnergy then
              LocalPlayer.Character.Energy.Value = originalstam
        end
     end)
  end
  spawn(function()
     while wait(.1) do
        if InfinitsEnergy then
              wait(0.3)
              originalstam = LocalPlayer.Character.Energy.Value
              infinitestam()
        end
     end
  end)
  nododgecool = false
  function NoDodgeCool()
     if nododgecool then
        for i,v in next, getgc() do
              if game.Players.LocalPlayer.Character.Dodge then
                 if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                 for i2,v2 in next, getupvalues(v) do
                    if tostring(v2) == "0.4" then
                          repeat wait(.1)
                             setupvalue(v,i2,0)
                          until not nododgecool
                    end
                 end
                 end
              end
        end
     end
  end
  Misc:Toggle("Fast Attack","",false,function(fat)
  shared.fat = fat
end)
   spawn(function()
   while wait() do
   if shared.fat then
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(31, 123))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(2347, 254))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(523, 524))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(52, 245))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(5426, 2432))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(86, 42))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(37, 87))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(534, 453))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(28742, 272))
    
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(7865, 47))
   end
   end
   end)
   local Player   = game:GetService('Players').LocalPlayer

local function CheckRig()
    if Player.Character then
        local Humanoid = Player.Character:WaitForChild('Humanoid')
        if Humanoid.RigType == Enum.HumanoidRigType.R15 then
            return 'R15'
        else
            return 'R6'
        end
    end
end

local function InitiateInvis()
    local Character = Player.Character
    local StoredCF = Character.PrimaryPart.CFrame

    if CheckRig() == 'R6' then
        local Clone = Character.HumanoidRootPart:Clone()
        Character.HumanoidRootPart:Destroy()
        Clone.Parent = Character
    else
        local Clone = Character.LowerTorso.Root:Clone()
        Character.LowerTorso.Root:Destroy()
        Clone.Parent = Character.LowerTorso
    end

end
LockLevelValue = 2000
OldLevel = game.Players.LocalPlayer.Data.Level.Value
Misc:Slider("Select Level Lock","",1,LockLevelValue,LockLevelValue,function(value)
   LockLevelValue = value
end)
LockLevelValue =  _G.Save["SelectLockLvl"]
  Misc:Toggle("Lock Level","",false,function(value)
   LockLevel = value
end)
spawn(function()
   while wait(.1) do
      if LockLevel then
         if game.Players.LocalPlayer.Data.Level.Value >= LockLevelValue then
            game.Players.localPlayer:Kick("\n Auto Fram Completed Level : "..game.Players.LocalPlayer.Data.Level.Value.."\n Old Level : "..OldLevel)
         end
      end
   end
end)
spawn(function()
   while wait(.1) do
      if AuctoClick then
         Click()
      end
   end
end)
if OldWorld then
   Misc:Button("Invisible Your Self","",function()
      CheckRig()
        local cframeold = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1224.45764, 16.7431889, 1511.82288)
        wait(1)
        InitiateInvis()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeold
    end)
elseif NewWorld then
   Misc:Button("Invisible Your Self","",function()
      CheckRig()
        local cframeold = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2327.33594, 273.886383, 1248.98682, 0.0878660157, 4.53410784e-08, 0.996132374, 7.19629512e-08, 1, -5.18647383e-08, -0.996132374, 7.62418111e-08, 0.0878660157)
        wait(1)
        InitiateInvis()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeold
    end)
    else
       Misc:Button("Invisible Your Self","",function()
      CheckRig()
        local cframeold = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262.517487, 49321.5117, -35252.9375, -0.999392271, 0, 0.0348687991, 0, 1, 0, -0.0348687991, 0, -0.999392271)
        wait(1)
        InitiateInvis()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframeold
    end)
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
