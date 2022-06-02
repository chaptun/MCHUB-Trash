repeat wait() until game:IsLoaded()
Part = Instance.new("Part", game.Workspace)
do
	local ui = game.CoreGui:FindFirstChild("ABc")
	if ui then
		ui:Destroy()
	end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}


local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local function Tween(instance, properties,style,wa)
	if style == nil or "" then
		return Back
	end
	tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local ActualTypes = {
	RoundFrame = "ImageLabel",
	Shadow = "ImageLabel",
	Circle = "ImageLabel",
	CircleButton = "ImageButton",
	Frame = "Frame",
	Label = "TextLabel",
	Button = "TextButton",
	SmoothButton = "ImageButton",
	Box = "TextBox",
	ScrollingFrame = "ScrollingFrame",
	Menu = "ImageButton",
	NavBar = "ImageButton"
}

local Properties = {
	RoundFrame = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	SmoothButton = {
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554237731",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,297,297)
	},
	Shadow = {
		Name = "Shadow",
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554236805",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(23,23,277,277),
		Size = UDim2.fromScale(1,1) + UDim2.fromOffset(30,30),
		Position = UDim2.fromOffset(-15,-15)
	},
	Circle = {
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	CircleButton = {
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Image = "http://www.roblox.com/asset/?id=5554831670"
	},
	Frame = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1,1)
	},
	Label = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Button = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	Box = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(5,0),
		Size = UDim2.fromScale(1,1) - UDim2.fromOffset(5,0),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left
	},
	ScrollingFrame = {
		BackgroundTransparency = 1,
		ScrollBarThickness = 0,
		CanvasSize = UDim2.fromScale(0,0),
		Size = UDim2.fromScale(1,1)
	},
	Menu = {
		Name = "More",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Image = "http://www.roblox.com/asset/?id=5555108481",
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromScale(1,0.5) - UDim2.fromOffset(25,10)
	},
	NavBar = {
		Name = "SheetToggle",
		Image = "http://www.roblox.com/asset/?id=5576439039",
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(20,20),
		Position = UDim2.fromOffset(5,5),
		AutoButtonColor = false
	}
}

local Types = {
	"RoundFrame",
	"Shadow",
	"Circle",
	"CircleButton",
	"Frame",
	"Label",
	"Button",
	"SmoothButton",
	"Box",
	"ScrollingFrame",
	"Menu",
	"NavBar"
}

function FindType(String)
	for _, Type in next, Types do
		if Type:sub(1, #String):lower() == String:lower() then
			return Type
		end
	end
	return false
end

local Objects = {}

function Objects.new(Type)
	local TargetType = FindType(Type)
	if TargetType then
		local NewImage = Instance.new(ActualTypes[TargetType])
		if Properties[TargetType] then
			for Property, Value in next, Properties[TargetType] do
				NewImage[Property] = Value
			end
		end
		return NewImage
	else
		return Instance.new(Type)
	end
end

local function GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

local function CircleAnim(GuiObject, EndColour, StartColour)
	local PX, PY = GetXY(GuiObject)
	local Circle = Objects.new("Circle")
	Circle.Size = UDim2.fromScale(0,0)
	Circle.Position = UDim2.fromScale(PX,PY)
	Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
	Circle.ZIndex = 200
	Circle.Parent = GuiObject
	local Size = GuiObject.AbsoluteSize.X
	TweenService:Create(Circle, TweenInfo.new(0.5), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
	spawn(function()
		wait(0.5)
		Circle:Destroy()
	end)
end
local library = {}

function library:Window(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 0
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local ABc = Instance.new("ScreenGui")
	ABc.Name = "ABc"
	ABc.Parent = game.CoreGui
	ABc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = ABc
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)

	local MCNR = Instance.new("UICorner")
	MCNR.Name = "MCNR"
	MCNR.Parent = Main

	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Top.Size = UDim2.new(0, 656, 0, 27)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Top

	local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Top
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 10, 0, 1)
	Logo.Size = UDim2.new(0, 25, 0, 25)
	Logo.Image = "rbxassetid://"..tostring(logo)

	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, 0, 0, 0)
	Name.Size = UDim2.new(0, 61, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 110, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = "Hub"
	Hub.TextColor3 = Color3.fromRGB(173, 121, 226)
	Hub.TextSize = 17.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left

	local BindButton = Instance.new("TextButton")
	BindButton.Name = "BindButton"
	BindButton.Parent = Top
	BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BindButton.BackgroundTransparency = 1.000
	BindButton.Position = UDim2.new(0.847561002, 0, 0, 0)
	BindButton.Size = UDim2.new(0, 100, 0, 27)
	BindButton.Font = Enum.Font.GothamSemibold
	BindButton.Text = "[ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
	BindButton.TextColor3 = Color3.fromRGB(100, 100, 100)
	BindButton.TextSize = 11.000
	
	BindButton.MouseButton1Click:Connect(function ()
		BindButton.Text = "[ ... ]"
		local inputwait = game:GetService("UserInputService").InputBegan:wait()
		local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

		if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
			BindButton.Text = "[ "..shiba.Name.." ]"
			yoo = shiba.Name
		end
	end)

	local Tab = Instance.new("Frame")
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Tab.Position = UDim2.new(0, 5, 0, 30)
	Tab.Size = UDim2.new(0, 150, 0, 365)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Tab

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 365)
	ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollTab.ScrollBarThickness = 0

	local PLL = Instance.new("UIListLayout")
	PLL.Name = "PLL"
	PLL.Parent = ScrollTab
	PLL.SortOrder = Enum.SortOrder.LayoutOrder
	PLL.Padding = UDim.new(0, 15)

	local PPD = Instance.new("UIPadding")
	PPD.Name = "PPD"
	PPD.Parent = ScrollTab
	PPD.PaddingLeft = UDim.new(0, 10)
	PPD.PaddingTop = UDim.new(0, 10)

	local Page = Instance.new("Frame")
	Page.Name = "Page"
	Page.Parent = Main
	Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
	Page.Size = UDim2.new(0, 490, 0, 365)

	local PCNR = Instance.new("UICorner")
	PCNR.Name = "PCNR"
	PCNR.Parent = Page

	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 365)

	local PageList = Instance.new("Folder")
	PageList.Name = "PageList"
	PageList.Parent = MainPage

	local UIPageLayout = Instance.new("UIPageLayout")

	UIPageLayout.Parent = PageList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.Padding = UDim.new(0, 15)
	UIPageLayout.TweenTime = 0.400
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	
	MakeDraggable(Top,Main)

	do  local ui =  game:GetService("CoreGui"):FindFirstChild("Luna")  if ui then ui:Destroy() end end


	local Luna = Instance.new("ScreenGui")
	local ToggleFrameUi = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ToggleImgUi = Instance.new("ImageLabel")
	local Uitoggle = Instance.new("TextLabel")
	local Yedhee = Instance.new("TextLabel")
	local SearchStroke = Instance.new("UIStroke")
	
	
	Luna.Name = "Luna"
	Luna.Parent = game.CoreGui
	Luna.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	ToggleFrameUi.Name = "ToggleFrameUi"
	ToggleFrameUi.Parent = Luna
	ToggleFrameUi.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	ToggleFrameUi.Position = UDim2.new(0.883, 0,0.282, 0)
	ToggleFrameUi.Size = UDim2.new(0, 198, 0, 48)
	
	SearchStroke.Thickness = 1
	SearchStroke.Name = ""
	SearchStroke.Parent = ToggleFrameUi
	SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
	SearchStroke.Color = Color3.fromRGB(148, 128, 203)
	SearchStroke.Transparency = 0
	
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = ToggleFrameUi
	
	ToggleImgUi.Name = "ToggleImgUi"
	ToggleImgUi.Parent = ToggleFrameUi
	ToggleImgUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleImgUi.BackgroundTransparency = 1.000
	ToggleImgUi.Position = UDim2.new(0.0454545468, 0, 0.125000313, 0)
	ToggleImgUi.Size = UDim2.new(0, 35, 0, 35)
	ToggleImgUi.Image = "rbxassetid://8799910604"
	
	Uitoggle.Name = "Uitoggle"
	Uitoggle.Parent = ToggleFrameUi
	Uitoggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Uitoggle.BackgroundTransparency = 1.000
	Uitoggle.Position = UDim2.new(0.25757575, 0, 0, 0)
	Uitoggle.Size = UDim2.new(0, 137, 0, 25)
	Uitoggle.Font = Enum.Font.GothamSemibold
	Uitoggle.Text = "Ui Toggle :"
	Uitoggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Uitoggle.TextSize = 12.000
	
	Yedhee.Name = "Yedhee"
	Yedhee.Parent = ToggleFrameUi
	Yedhee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Yedhee.BackgroundTransparency = 1.000
	Yedhee.Position = UDim2.new(0.25757575, 0, 0.479166657, 0)
	Yedhee.Size = UDim2.new(0, 137, 0, 25)
	Yedhee.Font = Enum.Font.GothamSemibold
	Yedhee.Text = "Lable"
	Yedhee.TextColor3 = Color3.fromRGB(255, 255, 255)
	Yedhee.TextSize = 12.000
	spawn(function()
		while wait() do
			Yedhee.Text = '['..yoo..']'
		end
	end)


	Yedhee.TextTransparency = 1
	Uitoggle.TextTransparency = 1
	ToggleImgUi.ImageTransparency = 1
	ToggleFrameUi.BackgroundTransparency = 1.000
	SearchStroke.Transparency = 1

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				game:GetService("TweenService"):Create(
					ToggleFrameUi,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 198, 0, 48)}
				):Play()
				game:GetService("TweenService"):Create(
					ToggleFrameUi,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0}
				):Play()
				Yedhee.TextTransparency = 0
				Uitoggle.TextTransparency = 0
				ToggleImgUi.ImageTransparency = 0
				SearchStroke.Transparency = 0
				wait(.2)
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				game:GetService("TweenService"):Create(
					ToggleFrameUi,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 0, 0, 0)}
				):Play()
				game:GetService("TweenService"):Create(
					ToggleFrameUi,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
				Yedhee.TextTransparency = 1
				Uitoggle.TextTransparency = 1
				ToggleImgUi.ImageTransparency = 1
				SearchStroke.Transparency = 1
				wait(.2)
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
			end
		end
	end)
	MakeDraggable(ToggleFrameUi,ToggleFrameUi)

--[[
	pcall(function()
		game:GetService("UserInputService").InputBegan:Connect(function(io, p)
			if io.KeyCode == Enum.KeyCode[yoo] then
				if uitoggled == false then


					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()
					Yedhee.TextTransparency = 1
					Uitoggle.TextTransparency = 1
					ToggleImgUi.ImageTransparency = 1
					wait(.2)
					uitoggled = false
				else
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 198, 0, 48)}
					):Play()
					game:GetService("TweenService"):Create(
						ToggleFrameUi,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					Yedhee.TextTransparency = 0
					Uitoggle.TextTransparency = 0
					ToggleImgUi.ImageTransparency = 0
					wait(.2)
					uitoggled = true
				end
			end
		end)
	end)
	]]

	local uitab = {}
	
	function uitab:Tab(text)
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Size = UDim2.new(0, 130, 0, 23)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
		TabButton.TextSize = 15.000
		TabButton.TextTransparency = 0.500

		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainFramePage.BackgroundTransparency = 1.000
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 490, 0, 365)
		MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainFramePage.ScrollBarThickness = 0
		
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		
		UIPadding.Parent = MainFramePage
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Padding = UDim.new(0,15)
		UIListLayout.Parent = MainFramePage
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			for i,v in next, PageList:GetChildren() do
				currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
				if v.Name == currentpage then
					UIPageLayout:JumpTo(v)
				end
			end
		end)

		if abc == false then
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			UIPageLayout:JumpToIndex(1)
			abc = true
		end
		
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
				ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
			end)
		end)
		
		local main = {}
		function main:Button(text,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Button.Size = UDim2.new(0, 470, 0, 39)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 468, 0, 37)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.GothamSemibold
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 15.000
			TextBtn.ClipsDescendants = true
			
			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn
			
			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 468, 0, 37)
			
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				CircleAnim(TextBtn, Color3.fromRGB(255,255,255), Color3.fromRGB(255,255,255))
				TextBtn.TextSize = 0
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end
		function main:Toggle(text,config,Imgidicon,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local imgLabelIcon = Instance.new("ImageLabel") --http://www.roblox.com/asset/?id=
			local Circle1 = Instance.new("Frame")

			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Toggle.Size = UDim2.new(0, 470, 0, 39)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Button.Position = UDim2.new(0, 1, 0, 1)
			Button.Size = UDim2.new(0, 468, 0, 37)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Position = UDim2.new(0, 1, 0, 1)
			Label.Size = UDim2.new(0, 468, 0, 37)
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 15.000

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			ToggleImage.Position = UDim2.new(0, 415, 0, 10)
			ToggleImage.Size = UDim2.new(0, 45, 0, 20)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			Circle.Position = UDim2.new(0, 2, 0, 2)
			Circle.Size = UDim2.new(0, 16, 0, 16)
--[[
			Circle1.Name = "Circle"
			Circle1.Parent = Toggle
			Circle1.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			Circle1.Position = UDim2.new(0, 10, 0, 9)
			Circle1.Size = UDim2.new(0, 20, 0, 20)]]

			imgLabelIcon.Name = "Icon"
			imgLabelIcon.Parent = Toggle
			imgLabelIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			imgLabelIcon.BackgroundTransparency = 1.000
			imgLabelIcon.Position = UDim2.new(0, 10, 0, 9)
			imgLabelIcon.Size = UDim2.new(0, 20, 0, 20)
			imgLabelIcon.Image = "http://www.roblox.com/asset/?id="..Imgidicon

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = Circle

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.3,true)
					TweenService:Create(
						Toggle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(158, 107, 209)}
					):Play()
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(158, 107, 209)}
					):Play()
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.3,true)
					TweenService:Create(
						Toggle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(173, 121, 226)}
					):Play()
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(227, 60, 60)}
					):Play()
				end 
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
				TweenService:Create(
					Toggle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(158, 107, 209)}
				):Play()
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(158, 107, 209)}
				):Play()
				pcall(callback,toggled)
			end
		end
		function main:Dropdown(text,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 470, 0, 39)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 470, 0, 37)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1.000
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 37)
			DropScroll.Size = UDim2.new(0, 470, 0, 100)
			DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropScroll.ScrollBarThickness = 3
			
			UIListLayout.Parent = DropScroll
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			UIPadding.Parent = DropScroll
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingTop = UDim.new(0, 5)
			
			DropImage.Name = "DropImage"
			DropImage.Parent = Dropdown
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1.000
			DropImage.Position = UDim2.new(0, 430, 0, 5.25)
			DropImage.Rotation = 360.000
			DropImage.Size = UDim2.new(0, 30, 0, 30)
			DropImage.Image = "rbxassetid://4370337241"
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 470, 0, 37)
			DropButton.Font = Enum.Font.SourceSans
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 14.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")

				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 460, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,37),"Out","Quad",0.5,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 360}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.5,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 540}
					):Play()
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,37),"Out","Quad",0.5,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 360}
					):Play()
				end
			end)

			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 470, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,37),"Out","Quad",0.5,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 360}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,37),"Out","Quad",0.5,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 360}
				):Play()
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end

		function main:Slider(text,min,max,set,callback)
			local Slider = Instance.new("Frame")
			local slidercorner = Instance.new("UICorner")
			local sliderr = Instance.new("Frame")
			local sliderrcorner = Instance.new("UICorner")
			local SliderLabel = Instance.new("TextLabel")
			local HAHA = Instance.new("Frame")
			local AHEHE = Instance.new("TextButton")
			local bar = Instance.new("Frame")
			local bar1 = Instance.new("Frame")
			local bar1corner = Instance.new("UICorner")
			local barcorner = Instance.new("UICorner")
			local circlebar = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("Frame")
			local valuecorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 470, 0, 72)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 468, 0, 70)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderLabel.BackgroundTransparency = 1.000
			SliderLabel.Position = UDim2.new(0, 15, 0, 3)
			SliderLabel.Size = UDim2.new(0, 360, 0, 26)
			SliderLabel.Font = Enum.Font.GothamSemibold
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 16.000
			SliderLabel.TextTransparency = 0
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 468, 0, 29)

			AHEHE.Name = "AHEHE"
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 50)
			AHEHE.Size = UDim2.new(0, 448, 0, 5)
			AHEHE.Font = Enum.Font.SourceSans
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 14.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			bar.Size = UDim2.new(0, 448, 0, 5)

			bar1.Name = "bar1"
			bar1.Parent = bar
			bar1.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			bar1.BackgroundTransparency = 0
			bar1.Size = UDim2.new(set/max, 0, 0, 5)

			bar1corner.CornerRadius = UDim.new(0, 5)
			bar1corner.Name = "bar1corner"
			bar1corner.Parent = bar1

			barcorner.CornerRadius = UDim.new(0, 5)
			barcorner.Name = "barcorner"
			barcorner.Parent = bar

			circlebar.Name = "circlebar"
			circlebar.Parent = bar1
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 395, 0, 7)
			slidervalue.Size = UDim2.new(0, 65, 0, 22)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue
			TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 63, 0, 20)
			TextBox.Font = Enum.Font.GothamSemibold
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBox

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")

			if Value == nil then
				Value = set
				pcall(function()
					callback(Value)
				end)
			end
			
			AHEHE.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
				circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:Textbox(text,disappear,callback)
			local Textbox = Instance.new("Frame")
			local TextboxCorner = Instance.new("UICorner")
			local Textboxx = Instance.new("Frame")
			local TextboxxCorner = Instance.new("UICorner")
			local TextboxLabel = Instance.new("TextLabel")
			local txtbtn = Instance.new("TextButton")
			local RealTextbox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = MainFramePage
			Textbox.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Textbox.BackgroundTransparency = 0
			Textbox.Size = UDim2.new(0, 470, 0, 39)

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			Textboxx.Name = "Textboxx"
			Textboxx.Parent = Textbox
			Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Textboxx.Position = UDim2.new(0, 1, 0, 1)
			Textboxx.Size = UDim2.new(0, 468, 0, 37)

			TextboxxCorner.CornerRadius = UDim.new(0, 5)
			TextboxxCorner.Name = "TextboxxCorner"
			TextboxxCorner.Parent = Textboxx

			TextboxLabel.Name = "TextboxLabel"
			TextboxLabel.Parent = Textbox
			TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxLabel.BackgroundTransparency = 1.000
			TextboxLabel.Position = UDim2.new(0, 15, 0, 3)
			TextboxLabel.Text = text
			TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
			TextboxLabel.Font = Enum.Font.GothamSemibold
			TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextboxLabel.TextSize = 16.000
			TextboxLabel.TextTransparency = 0
			TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

			txtbtn.Name = "txtbtn"
			txtbtn.Parent = Textbox
			txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			txtbtn.BackgroundTransparency = 1.000
			txtbtn.Position = UDim2.new(0, 1, 0, 1)
			txtbtn.Size = UDim2.new(0, 468, 0, 29)
			txtbtn.Font = Enum.Font.SourceSans
			txtbtn.Text = ""
			txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			txtbtn.TextSize = 14.000

			RealTextbox.Name = "RealTextbox"
			RealTextbox.Parent = Textbox
			RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			RealTextbox.BackgroundTransparency = 0
			RealTextbox.Position = UDim2.new(0, 360, 0, 7)
			RealTextbox.Size = UDim2.new(0, 100, 0, 24)
			RealTextbox.Font = Enum.Font.GothamSemibold
			RealTextbox.Text = ""
			RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
			RealTextbox.TextSize = 11.000
			RealTextbox.TextTransparency = 0

			RealTextbox.FocusLost:Connect(function()
				callback(RealTextbox.Text)
				if disappear then
					RealTextbox.Text = ""
				end
			end)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = RealTextbox
		end
		function main:Label(text)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labell = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 470, 0, 20)
			Label.Font = Enum.Font.GothamSemibold
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 16.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labell:Set(newtext)
				Label.Text = newtext
			end

			return labell
		end
		function main:Seperator(text)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 470, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 80, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 185, 0, 0)
			Sep2.Size = UDim2.new(0, 100, 0, 20)
			Sep2.Font = Enum.Font.GothamSemibold
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 14.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 390, 0, 10)
			Sep3.Size = UDim2.new(0, 80, 0, 1)
		end

		function main:Line()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 470, 0, 20)
			
			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = Color3.fromRGB(173, 121, 226)
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 470, 0, 1)
		end
		return main
	end
	return uitab
end
repeat wait() until game:IsLoaded()
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
local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    ThreeWorld = true
else
    game.Players.LocalPlayer:Kick("รันผิดเกม")
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
if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait()
	if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
		if _G.Team == "Pirate" then
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
			game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
		elseif _G.Team == "Marine" then
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
			game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
		else
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
			game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
			wait(.5)
			game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
			game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
		end
	end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 

wait(1)
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
function Tween(CFrame)
    Floor = true
    NoClip = true
    Distance = (CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 250 then
        Speed = 800
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 1000 then
        Speed = 300
    elseif Distance >= 1000 then
        Speed = 200
    end
    if Distance < 100 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
     else
     tween =
        game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {CFrame = CFrame}
    ):Play()
    end
    coroutine.wrap(StopNoClip)(Distance, Speed)
    return Distance / Speed
end
spawn(function ()
    game:GetService("RunService").Heartbeat:Connect(function ()
        pcall(function ()
        Part.Anchored = true
        Part.CanCollide = true
        Part.Transparency = 1
        Part.Size = Vector3.new(30, 0.5, 30)
        if Floor then
            Part.CFrame = CFrame.new( game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            else
            Part.CFrame = CFrame.new(100000, 0 , 10000)
        end
        end)
    end)
end)
spawn(function()
   game:GetService("RunService").Heartbeat:Connect(function()
       pcall(function()
           if _G.AutoFarm or Noclip or Nocliptp or raidiing or nextland or NoclipSys or Buddy_Noclip then
               if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y < 0 then
                   --game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,-1,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
                   changestate()
               end
           end
       end)
   end)
end)
function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if OldWorld then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
			Ms = "Bandit [Lv. 5]"
			NaemQuest = "BanditQuest1"
			LevelQuest = 1
			NameMon = "Bandit"
			CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
			CFrameMon = CFrame.new(1158.19287, 16.7761078, 1598.75024, 0.728623271, -2.60434244e-05, -0.684914768, 5.54633402e-07, 1, -3.74343144e-05, 0.684914768, 2.68956283e-05, 0.728623271)
		elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
			Ms = "Monkey [Lv. 14]"
			NaemQuest = "JungleQuest"
			LevelQuest = 1
			NameMon = "Monkey"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameMon = CFrame.new(-1612.77039, 37.1953545, 150.217361, -0.325320244, 5.01602138e-09, -0.945603907, -1.28536748e-09, 1, 5.74677994e-09, 0.945603907, 3.08499248e-09, -0.325320244)
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
			CFrameMon = CFrame.new(-1169.5365, 5.09531212, 3933.84082, -0.971822679, -3.73200315e-09, 0.235713184, -4.16762763e-10, 1, 1.41145424e-08, -0.235713184, 1.3618596e-08, -0.971822679)
		elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
			Ms = "Brute [Lv. 45]"
			NaemQuest = "BuggyQuest1"
			LevelQuest = 2
			NameMon = "Brute"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameMon = CFrame.new(-1165.09985, 15.1531372, 4363.51514, -0.962800264, 1.17564889e-06, 0.270213336, 2.60172015e-07, 1, -3.4237969e-06, -0.270213336, -3.22613073e-06, -0.962800264)
		elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
			Ms = "Desert Bandit [Lv. 60]"
			NaemQuest = "DesertQuest"
			LevelQuest = 1
			NameMon = "Desert Bandit"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
		elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
			Ms = "Desert Officer [Lv. 70]"
			NaemQuest = "DesertQuest"
			LevelQuest = 2
			NameMon = "Desert Officer"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
			CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
		elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
			Ms = "Snow Bandit [Lv. 90]"
			NaemQuest = "SnowQuest"
			LevelQuest = 1
			NameMon = "Snow Bandits"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1328.92578, 87.6160507, -1374.14551, -0.548407137, 5.60746427e-09, 0.836211503, 2.07008033e-09, 1, -5.34818945e-09, -0.836211503, -1.2019602e-09, -0.548407137)
		elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
			Ms = "Snowman [Lv. 100]"
			NaemQuest = "SnowQuest"
			LevelQuest = 2
			NameMon = "Snowman"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
			CFrameMon = CFrame.new(1046.19983, 106.109909, -1486.0741, 0.455472827, -1.03902529e-07, -0.89024967, 1.33861127e-08, 1, -1.09863016e-07, 0.89024967, 3.81226357e-08, 0.455472827)
		elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
			Ms = "Chief Petty Officer [Lv. 120]"
			NaemQuest = "MarineQuest2"
			LevelQuest = 1
			NameMon = "Chief Petty Officer"
			CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
			CFrameMon = CFrame.new(-4850.8623, 21.0520386, 4390.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
		elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
			Ms = "Sky Bandit [Lv. 150]"
			NaemQuest = "SkyQuest"
			LevelQuest = 1
			NameMon = "Sky Bandit"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
			CFrameMon = CFrame.new(-4996.53906, 278.410187, -2828.92822, -0.984909654, 0, 0.173069984, 0, 1, 0, -0.173069984, 0, -0.984909654)
      elseif MyLevel == 175 or MyLevel <= 249 then 
         Ms = "Dark Master [Lv. 175]"
         NaemQuest = "SkyQuest"
         LevelQuest = 2
         NameMon = "Dark Master"
         CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
         CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
     elseif MyLevel == 250 or MyLevel <= 274 then 
         Ms = "Toga Warrior [Lv. 250]"
         NaemQuest = "ColosseumQuest"
         LevelQuest = 1
         NameMon = "Toga Warrior"
         CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
         CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
		elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
			Ms = "Gladiator [Lv. 275]"
			NaemQuest = "ColosseumQuest"
			LevelQuest = 2
			NameMon = "Gladiato"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1279.38416, 7.78580666, -3268.23047, -0.385674238, -3.25503358e-08, -0.922634542, 5.95089811e-10, 1, -3.55285259e-08, 0.922634542, -1.42514862e-08, -0.385674238)
		elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier
			Ms = "Military Soldier [Lv. 300]"
			NaemQuest = "MagmaQuest"
			LevelQuest = 1
			NameMon = "Military Soldier"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5483.29248, 9.33393669, 8413.07031, 0.909917235, -1.46153933e-09, -0.414789826, -6.77904288e-10, 1, -5.01067277e-09, 0.414789826, 4.84048535e-09, 0.909917235)
		elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
			Ms = "Military Spy [Lv. 325]"
			NaemQuest = "MagmaQuest"
			LevelQuest = 2
			NameMon = "Military Spy"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
			CFrameMon = CFrame.new(-5883.50049, 77.5739212, 8823.88965, 0.983678341, -1.19359456e-08, 0.179935962, -8.52669757e-09, 1, 1.12948371e-07, -0.179935962, -1.12639128e-07, 0.983678341)
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
			--[[if (game:GetService("Workspace")["_WorldOrigin"].Locations["Underwater City"].Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 30000 then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4049.96, 0.2205, -1816.05)
                pcall(function() 
                    tween:Cancel()
                end)
			end]]
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
			if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
		elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
			Ms = "Shanda [Lv. 475]"
			NaemQuest = "SkyExp1Quest"
			LevelQuest = 2
			NameMon = "Shandas"
			CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
			CFrameMon = CFrame.new(-7636.17285, 5545.83643, -551.851685, 0.995675743, 0, -0.0928966552, 0, 1, 0, 0.0928966552, 0, 0.995675743)
            if _G.AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
			Ms = "Royal Squad [Lv. 525]"
			NaemQuest = "SkyExp2Quest"
			LevelQuest = 1
			NameMon = "Royal Squad"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7654.80615, 5607.22168, -1497.61304, 0.655299842, -1.01422131e-07, -0.75536871, 8.79199114e-09, 1, -1.26641098e-07, 0.75536871, 7.63466659e-08, 0.655299842)
		elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
			Ms = "Royal Soldier [Lv. 550]"
			NaemQuest = "SkyExp2Quest"
			LevelQuest = 2
			NameMon = "Royal Soldier"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
			CFrameMon = CFrame.new(-7966.58252, 5637.42529, -1744.18347, 0.116254926, -8.58390649e-07, -0.99321878, 2.4797064e-08, 1, -8.61348838e-07, 0.99321878, 7.55070602e-08, 0.116254926)
		elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
			Ms = "Galley Pirate [Lv. 625]"
			NaemQuest = "FountainQuest"
			LevelQuest = 1
			NameMon = "Galley Pirate"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
			CFrameMon = CFrame.new(5684.73096, 38.8443985, 3927.60498, 0.999752343, -6.81844494e-06, -0.0222478025, 5.87542536e-06, 1, -4.24524987e-05, 0.0222478025, 4.2311276e-05, 0.999752343)
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
			if raMon == 1 then
				CFrameMon = CFrame.new(-739.640625, 39.4830551, 2386.14038, -0.989119053, 0, -0.147119895, 0, 1.00000012, 0, 0.147119895, 0, -0.989119053)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(360.11264, 39.4820023, 2303.32788, -0.992951751, -0, -0.118519709, -0, 1.00000012, -0, 0.118519709, 0, -0.992951751)
			end
		elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			Ms = "Mercenary [Lv. 725]"
			NaemQuest = "Area1Quest"
			LevelQuest = 2
			NameMon = "Mercenary"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			if raMon == 1 then
				CFrameMon = CFrame.new(-963.474182, 73.3029785, 1621.55615, -0.240057707, 1.84067176e-05, 0.970759094, 1.62304809e-06, 1, -1.85598001e-05, -0.970759094, -2.87983494e-06, -0.240057707)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-1080.28516, 73.3029785, 1226.02258, -0.133044779, -9.17949592e-08, 0.99110955, 7.92666413e-08, 1, 1.03258969e-07, -0.99110955, 9.23000201e-08, -0.133044779)
			end
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
			if raMon == 1 then
				CFrameMon = CFrame.new(656.395874, 73.2930374, 16.6564388, 0.469020009, -2.35162702e-06, -0.883186936, -6.14859175e-07, 1, -2.98918417e-06, 0.883186936, 1.94502309e-06, 0.469020009)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-140.502396, 149.765686, -370.428955, 0.832149804, 0, 0.554550529, 0, 1.00000012, 0, -0.554550529, 0, 0.832149804)
			end
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
			if raMon == 1 then
				CFrameMon = CFrame.new(-5708.22412, 48.8234634, -624.017639, -0.870171368, 4.65824801e-09, 0.492749333, 1.08052509e-08, 1, 9.62796065e-09, -0.492749333, 1.37022553e-08, -0.870171368)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-5690.67188, 48.8234482, -896.036682, 0.667131901, -9.55071666e-09, 0.744939685, 2.61626329e-08, 1, -1.06091944e-08, -0.744939685, 2.65673137e-08, 0.667131901)
			end
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
			CFrameQuest = CFrame.new(-288.5224, 43.8218307, 5580.43408, -0.999959528, -8.31576159e-08, 0.0089966096, -8.37007832e-08, 1, -5.99984915e-08, -0.0089966096, -6.07490875e-08, -0.999959528)
			if raMon == 1 then
				CFrameMon = CFrame.new(-30.9287148, 44.1632271, 5626.03564, -0.984395564, 6.69860825e-08, 0.175970018, 6.64483224e-08, 1, -8.94841801e-09, -0.175970018, 2.88413116e-09, -0.984395564)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-561.266296, 44.1438179, 5502.72803, -0.920331895, 3.46223351e-05, 0.39113754, -4.3780994e-05, 1, -0.000191532061, -0.391137719, -0.000193397515, -0.920331895)
			end
		elseif MyLevel == 1525 or MyLevel <= 1624 then
			Ms = "Pistol Billionaire [Lv. 1525]"
			NaemQuest = "PiratePortQuest"
			LevelQuest = 2
			NameMon = "Pistol Billionaire"
			CFrameQuest = CFrame.new(-288.5224, 43.8218307, 5580.43408, -0.999959528, -8.31576159e-08, 0.0089966096, -8.37007832e-08, 1, -5.99984915e-08, -0.0089966096, -6.07490875e-08, -0.999959528)
			if raMon2 == 1 then
				CFrameMon = CFrame.new(-27.2507839, 73.7850037, 6110.73438, 0.94821614, 2.10991633e-08, -0.317625821, -1.09169083e-08, 1, 3.3837221e-08, 0.317625821, -2.86175066e-08, 0.94821614)
			elseif raMon2 == 2 then
				CFrameMon = CFrame.new(-497.665253, 73.8199692, 5916.84912, 0.9733302, 0.00937776733, -0.229217961, 0.000425046368, 0.999088705, 0.0426795743, 0.229409531, -0.0416387543, 0.972438812)
			elseif raMon2 == 3 then
				CFrameMon = CFrame.new(-790.452209, 73.7199402, 5914.92773, -0.336799055, 6.32387227e-08, -0.941576362, -2.52897436e-08, 1, 7.62086216e-08, 0.941576362, 4.94792545e-08, -0.336799055)
			end
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Ms = "Female Islander [Lv. 1625]"
			NaemQuest = "AmazonQuest2"
			LevelQuest = 1
			NameMon = "Female Islander"
			CFrameQuest = CFrame.new(5447.18555, 601.684814, 750.161804, -0.0492943414, 5.47278347e-08, -0.998784304, 1.11371856e-10, 1, 5.4788952e-08, 0.998784304, 2.5895488e-09, -0.0492943414)
			CFrameMon = CFrame.new(5635.42676, 782.124878, 857.546997, -0.990593493, 2.96959286e-07, 0.136837229, 1.91843185e-07, 1, -7.81369522e-07, -0.136837229, -7.47768354e-07, -0.990593493)
		elseif MyLevel == 1650 or MyLevel <= 1724 then
			Ms = "Giant Islander [Lv. 1650]"
			NaemQuest = "AmazonQuest2"
			LevelQuest = 2
			NameMon = "Giant Islander"
			CFrameQuest = CFrame.new(5447.18555, 601.684814, 750.161804, -0.0492943414, 5.47278347e-08, -0.998784304, 1.11371856e-10, 1, 5.4788952e-08, 0.998784304, 2.5895488e-09, -0.0492943414)
			if raMon == 1 then
				CFrameMon = CFrame.new(4803.53516, 601.884644, 21.1627445, -0.945538223, -9.67994662e-09, -0.3255108, 9.0386223e-09, 1, -5.59929489e-08, 0.3255108, -5.58856534e-08, -0.945538223)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(5267.93994, 601.565979, -181.191528, -0.0345076099, 0, 0.99940449, 0, 1.00000012, -0, -0.99940449, 0, -0.0345076099)
			end
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Ms = "Marine Commodore [Lv. 1700]"
			NaemQuest = "MarineTreeIsland"
			LevelQuest = 1
			NameMon = "Marine Commodore"
			CFrameQuest = CFrame.new(2181.47559, 29.3805466, -6739.75488, 0.972898781, 3.13111634e-08, -0.231231317, -4.68299923e-08, 1, -6.1625208e-08, 0.231231317, 7.07836563e-08, 0.972898781)
			if raMon2 == 1 then
				CFrameMon = CFrame.new(2879.39746, 73.1276932, -7823.78613, 0.987131357, 2.83766557e-08, -0.159911677, -3.10919681e-08, 1, -1.4477993e-08, 0.159911677, 1.92636502e-08, 0.987131357)
			elseif raMon2 == 2 then
				CFrameMon = CFrame.new(2297.03027, 73.1240921, -7208.6123, -0.946127355, 0, -0.323794872, 0, 1.00000012, 0, 0.323794872, 0, -0.946127355)
			elseif raMon2 == 3 then
				CFrameMon = CFrame.new(2649.23169, 73.1252136, -7800.78613, 0.999978125, 0, 0.00660976768, 0, 1, 0, -0.00660996884, 0, 0.999977887)
			end
		elseif MyLevel >= 1725 and MyLevel <= 1774 then
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NaemQuest = "MarineTreeIsland"
			LevelQuest = 2
			NameMon = "Marine Rear Admiral"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			if raMon == 1 then
				CFrameMon = CFrame.new(3684.00586, 160.514099, -7128.87354, -0.570743263, 0, 0.821128547, 0, 1, -0, -0.821128547, 0, -0.570743)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(3491.92993, 160.468704, -6814.4668, -0.706216097, 0, -0.70799607, 0, 1.00000012, 0, 0.707995772, 0, -0.706215978)
			end
		elseif MyLevel >= 1775 and MyLevel <= 1799 then
			Ms = "Fishman Raider [Lv. 1775]"
			NaemQuest = "DeepForestIsland3"
			LevelQuest = 1
			NameMon = "Fishman Raider"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			if raMon == 1 then
				CFrameMon = CFrame.new(-10364.5967, 332.095978, -8353.88672, 0.923343658, 1.48868907e-07, -0.383972943, -5.46038343e-08, 1, 2.56400227e-07, 0.383972943, -2.15779068e-07, 0.923343658)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-10583.0488, 332.095978, -8478.78711, 0.440558702, 0, 0.897723794, -0, 1, -0, -0.897723794, 0, 0.440558702)
			end
		elseif MyLevel >= 1800 and MyLevel <= 1824 then
			Ms = "Fishman Captain [Lv. 1800]"
			NaemQuest = "DeepForestIsland3"
			LevelQuest = 2
			NameMon = "Fishman Captain"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			if raMon == 1 then
				CFrameMon = CFrame.new(-10973.4004, 331.752991, -8883.54004, 0.678526163, 1.54081761e-08, 0.734575987, 4.41213963e-08, 1, -6.17304465e-08, -0.734575987, 7.42963024e-08, 0.678526163)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-10966.6055, 331.713287, -9136.08105, -0.903356075, 0, -0.428891867, 0, 1.00000012, 0, 0.428891838, 0, -0.903355956)
			end
		elseif MyLevel >= 1825 and MyLevel <= 1849 then
			Ms = "Forest Pirate [Lv. 1825]"
			NaemQuest = "DeepForestIsland"
			LevelQuest = 1
			NameMon = "Forest Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			if raMon == 1 then
				CFrameMon = CFrame.new(-13594.2119, 332.368225, -7930.59912, 0.955262423, 2.26471002e-08, -0.295761019, -1.30703626e-08, 1, 3.43570647e-08, 0.295761019, -2.89543038e-08, 0.955262423)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-13218.1172, 332.711487, -7686.87354, 0.124996185, 0, 0.992157221, -0, 1, -0, -0.992157221, 0, 0.124996185)
			end
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Ms = "Mythological Pirate [Lv. 1850]"
			NaemQuest = "DeepForestIsland"
			LevelQuest = 2
			NameMon = "Mythological Pirate"
			CFrameQuest = CFrame.new(-13230.9658, 332.413177, -7624.93457, 0.455187887, -8.75483792e-08, 0.890395403, -4.99329189e-10, 1, 9.85805499e-08, -0.890395403, -4.53172717e-08, 0.455187887)
			if raMon == 1 then
				CFrameMon = CFrame.new(-13654.9893, 469.822784, -6970.78369, 0.952340543, 2.57623842e-08, -0.305036813, 8.97913299e-09, 1, 1.1248995e-07, 0.305036813, -1.09867713e-07, 0.952340543)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-13249.3467, 520.358521, -6798.55176, 0.536656797, -8.32688158e-08, 0.843800604, -3.03503311e-09, 1, 1.00613327e-07, -0.843800604, -5.65557912e-08, 0.536656797)
			end
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Ms = "Jungle Pirate [Lv. 1900]"
			NaemQuest = "DeepForestIsland2"
			LevelQuest = 1
			NameMon = "Jungle Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			
			if raMon == 1 then
				CFrameMon = CFrame.new(-11775.0195, 332.071625, -10628.4648, 0.0879710168, 3.94232338e-05, 0.996122956, 6.06110871e-06, 1, -4.01119505e-05, -0.996122956, 9.56629265e-06, 0.0879710168)
			elseif raMon == 2 then
				CFrameMon = CFrame.new(-12203.3535, 332.071625, -10506.083, 0.385599494, 0, -0.922666013, 0, 1, 0, 0.922666013, 0, 0.385599494)
			end
		elseif MyLevel <= 1974 then
			Ms = "Musketeer Pirate [Lv. 1925]"
			NaemQuest = "DeepForestIsland2"
			LevelQuest = 2
			NameMon = "Musketeer Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-13305.2227, 391.878998, -9774.5791, 0.373675853, 1.90769788e-05, 0.927559018, 7.93608251e-07, 1, -2.08865713e-05, -0.927559018, 8.54091832e-06, 0.373675853)
		elseif MyLevel <= 1999 then
			Ms = "Reborn Skeleton [Lv. 1975]"
			NaemQuest = "HauntedQuest1"
			LevelQuest = 1
			NameMon = "Reborn Skeleton"
			CFrameQuest = CFrame.new(-9480.87012, 142.43811, 5566.2002, -0.00248356303, -5.78340327e-08, -0.999996901, -2.37339948e-09, 1, -5.78283164e-08, 0.999996901, 2.2297717e-09, -0.00248356303)
			CFrameMon = CFrame.new(-8759.74316, 142.43811, 6018.50879, 0.995956361, 1.53021293e-08, -0.089838393, -1.4131051e-08, 1, 1.3671424e-08, 0.089838393, -1.23466313e-08, 0.995956361)
		elseif MyLevel <= 2024 then
			Ms = "Living Zombie [Lv. 2000]"
			NaemQuest = "HauntedQuest1"
			LevelQuest = 2
			NameMon = "Living Zombie"
			CFrameQuest = CFrame.new(-9480.87012, 142.43811, 5566.2002, -0.00248356303, -5.78340327e-08, -0.999996901, -2.37339948e-09, 1, -5.78283164e-08, 0.999996901, 2.2297717e-09, -0.00248356303)
			CFrameMon = CFrame.new(-10147.8926, 139.959961, 5972.49316, 0.917640984, 0.000120363518, -0.397410452, -1.50241667e-05, 0.99999994, 0.000268177944, 0.397410452, -0.000240120396, 0.917640984)
		elseif MyLevel <= 2049 then
			Ms = "Demonic Soul [Lv. 2025]"
			NaemQuest = "HauntedQuest2"
			LevelQuest = 1
			NameMon = "Demonic Soul"
			CFrameQuest = CFrame.new(-9514.59668, 172.43811, 6077.85791, -0.025661787, -1.8103858e-08, 0.999670684, -2.63411728e-08, 1, 1.74336368e-08, -0.999670684, -2.58851198e-08, -0.025661787)
			CFrameMon = CFrame.new(-9502.1377, 172.43811, 6153.22559, 0.998965919, 8.14885152e-06, -0.0454591215, -3.61834987e-06, 1, 9.97435855e-05, 0.0454591215, -9.94759685e-05, 0.998965919)
		elseif MyLevel <= 2074 then
			Ms = "Posessed Mummy [Lv. 2050]"
			NaemQuest = "HauntedQuest2"
			LevelQuest = 2
			NameMon = "Posessed Mummy"
			CFrameQuest = CFrame.new(-9514.59668, 172.43811, 6077.85791, -0.025661787, -1.8103858e-08, 0.999670684, -2.63411728e-08, 1, 1.74336368e-08, -0.999670684, -2.58851198e-08, -0.025661787)
			CFrameMon = CFrame.new(-9579.89551, 6.1257925, 6194.25684, -0.994989395, -9.60423137e-08, -0.0999803767, -9.48566452e-08, 1, -1.66128302e-08, 0.0999803767, -7.04578706e-09, -0.994989395)
		elseif MyLevel <= 2099 then
			Ms = "Peanut Scout [Lv. 2075]"
			NaemQuest = "NutsIslandQuest"
			LevelQuest = 1
			NameMon = "Peanut Scout"
			CFrameQuest = CFrame.new(-2105.16504, 38.4474411, -10193.708, 0.786417007, -1.17257759e-08, 0.617695928, -2.06460027e-09, 1, 2.16116245e-08, -0.617695928, -1.82710451e-08, 0.786417007)
			CFrameMon = CFrame.new(-2235.11646, 88.5827332, -10398.1094, -0.832571924, -2.27626842e-07, -0.553917289, -2.47123836e-07, 1, -3.94977633e-08, 0.553917289, 1.04001408e-07, -0.832571924)
		elseif MyLevel <= 2124 then
			Ms = "Peanut President [Lv. 2100]"
			NaemQuest = "NutsIslandQuest"
			LevelQuest = 2
			NameMon = "Peanut President"
			CFrameQuest = CFrame.new(-2105.16504, 38.4474411, -10193.708, 0.786417007, -1.17257759e-08, 0.617695928, -2.06460027e-09, 1, 2.16116245e-08, -0.617695928, -1.82710451e-08, 0.786417007)
			CFrameMon = CFrame.new(-2235.11646, 88.5827332, -10398.1094, -0.832571924, -2.27626842e-07, -0.553917289, -2.47123836e-07, 1, -3.94977633e-08, 0.553917289, 1.04001408e-07, -0.832571924)
		elseif MyLevel <= 2149 then
			Ms = "Ice Cream Chef [Lv. 2125]"
			NaemQuest = "IceCreamIslandQuest"
			LevelQuest = 1
			NameMon = "Ice Cream Chef"
			CFrameQuest = CFrame.new(-820.017212, 66.1628113, -10965.9189, 0.764226615, 5.82622519e-08, -0.644947827, -5.33253548e-08, 1, 2.71488592e-08, 0.644947827, 1.36441916e-08, 0.764226615)
			CFrameMon = CFrame.new(-830.885742, 144.121704, -11091.0156, -0.329080194, 5.0881642e-08, 0.944301963, 6.449892e-08, 1, -3.14055519e-08, -0.944301963, 5.05715114e-08, -0.329080194)
		elseif MyLevel <= 2150 then
			Ms = "Ice Cream Commander [Lv. 2150]"
			NaemQuest = "IceCreamIslandQuest"
			LevelQuest = 2
			NameMon = "Ice Cream Commander"
			CFrameQuest = CFrame.new(-820.017212, 66.1628113, -10965.9189, 0.764226615, 5.82622519e-08, -0.644947827, -5.33253548e-08, 1, 2.71488592e-08, 0.644947827, 1.36441916e-08, 0.764226615)
			CFrameMon = CFrame.new(-830.885742, 144.121704, -11091.0156, -0.329080194, 5.0881642e-08, 0.944301963, 6.449892e-08, 1, -3.14055519e-08, -0.944301963, 5.05715114e-08, -0.329080194)
      elseif MyLevel <= 2224 then
         Ms = "Cookie Crafter [Lv. 2200]"
         NaemQuest = "CakeQuest1"
         LevelQuest = 1
         NameMon = "Cookie Crafter"
         CFrameQuest = CFrame.new(-2021.40833, 36.5925713, -12029.417, 0.940247118, -1.22227597e-08, 0.340492785, 1.01512621e-08, 1, 7.86525867e-09, -0.340492785, -3.93885546e-09, 0.940247118)
         CFrameMon = CFrame.new(-2123.25659, 111.625145, -11933.5938, 0.908894241, 1.12659599e-07, 0.417026669, -1.22163556e-07, 1, -3.89866006e-09, -0.417026669, -4.74019899e-08, 0.908894241)
     elseif MyLevel <= 2249 then
         Ms = "Cake Guard [Lv. 2225]"
         NaemQuest = "CakeQuest1"
         LevelQuest = 2
         NameMon = "Cake Guard"
         CFrameQuest = CFrame.new(-2021.40833, 36.5925713, -12029.417, 0.940247118, -1.22227597e-08, 0.340492785, 1.01512621e-08, 1, 7.86525867e-09, -0.340492785, -3.93885546e-09, 0.940247118)
         CFrameMon = CFrame.new(-1559.19348, 89.0205154, -12584.1943, 0.843241334, -3.36266659e-08, 0.537535131, -8.12348055e-09, 1, 7.53006049e-08, -0.537535131, -6.78632404e-08, 0.843241334)
     elseif MyLevel <= 2274 then
         Ms = "Baking Staff [Lv. 2250]"
         NaemQuest = "CakeQuest2"
         LevelQuest = 1
         NameMon = "Baking Staff"
         CFrameQuest = CFrame.new(-1927.9281, 36.6931343, -12842.1777, -0.999484241, -1.02355763e-07, 0.0321136042, -1.04146537e-07, 1, -5.40911991e-08, -0.0321136042, -5.74078207e-08, -0.999484241)
         CFrameMon = CFrame.new(-1819.08472, 93.1109695, -12884.9492, -0.761556745, -7.28589171e-08, 0.64809829, -7.16595849e-08, 1, 2.82149788e-08, -0.64809829, -2.49551455e-08, -0.761556745)
     elseif MyLevel > 2275 then
         Ms = "Head Baker [Lv. 2275]"
         NaemQuest = "CakeQuest2"
         LevelQuest = 2
         NameMon = "Head Baker"
         CFrameQuest = CFrame.new(-1927.9281, 36.6931343, -12842.1777, -0.999484241, -1.02355763e-07, 0.0321136042, -1.04146537e-07, 1, -5.40911991e-08, -0.0321136042, -5.74078207e-08, -0.999484241)
         CFrameMon = CFrame.new(-2103.4707, 101.819008, -12790.4863, 0.914387882, 1.96595877e-08, 0.404839277, 1.38365364e-09, 1, -5.16866443e-08, -0.404839277, 4.78217963e-08, 0.914387882)
		end
	end
end
    CheckQuest()
	function EquipWeapon(ToolSe)
		pcall(function()
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
			end
		end)
	end
	do -- Init
		task = task or getrenv().task;
		fastSpawn,fastWait,delay = task.spawn,task.wait,task.delay
	end
	function Tween(gotoCFrame)
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
        end)
        if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 150 then
            pcall(function() 
                tween:Cancel()
            end)
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
        else
            local tween_s = game:service"TweenService"
            local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/300, Enum.EasingStyle.Linear)
            local tween, err = pcall(function()
                tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
                tween:Play()
            end)
            if not tween then return err end
        end
     end
	 spawn(function ()
		setfflag("HumanoidParallelRemoveNoPhysics", "False")
		setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
			if farm then
				local plr = game:GetService("Players").LocalPlayer
				local char = plr.Character or plr.CharacterAdded:Wait()
				char.Humanoid:ChangeState(11)
			end
		end)
	end)
	end)
local win = library:Window("","9133638985",Enum.KeyCode.RightControl)
local AutoFarmTab = win:Tab("Main")
local StastTab = win:Tab("Auto Stats")
local itemsTab = win:Tab("Items & Quest")
local RaidsTab = win:Tab("Dunguen")
local SettingsTab = win:Tab("Setting")
AutoFarmTab:Toggle("Auto Farm",_G.Save["AutoFarm"],"6022668898",function(vu)
	_G.Save["AutoFarm"] = vu
	_G.AutoFarm = vu
	farm = vu
    HideHitBlox = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
AutoFarmTab:Toggle("Auto Bone",false,"6022668898",function(vu)
	AutoFarmBone = vu
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
if NewWorld or ThreeWorld then
	AutoFarmTab:Toggle("Auto Third",_G.Save["Auto Third"],"6022668898",function(vu)
		_G.Save["Auto Third"] = vu
		Autothird = vu
		if vu == false then
		Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
	end)
end
itemsTab:Toggle("Auto Buy Legendary",_G.Save["Legendary"],"6022668898",function(vu)
	_G.Save["Legendary"] = vu
	Legendary = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
itemsTab:Toggle("Auto Buy Legendary Hop",_G.Save["LegendaryHop"],"6022668898",function(vu)
	_G.Save["LegendaryHop"] = vu
	LegendaryHop = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
spawn(function()
	while wait() do
		if Legendary then
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end 
	end
end)   
spawn(function()
	while wait() do
		if LegendaryHop then
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			wait(7)
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			wait()
			Teleport()
		end 
	end
end)
AutoFarmTab:Toggle("Auto Farm Ken ",_G.Save["Ken"],"6022668898",function(vu)
	_G.KenHaki = vu
	startATkmOb = vu
	getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 0, 0)
	_G.Save["Ken"] = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		_G.KenHaki = false
	end
end)
AutoFarmTab:Toggle("Auto Farm Ken Hop",_G.Save["KenHop"],"6022668898",function(vu)
	_G.Hop = vu
	startATkmOb = vu
	_G.Save["KenHop"] = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		_G.Hop = false
	end
end)
spawn(function ()
    while wait(0.1) do
    if _G.KenHaki then
	if OldWorld then
        pcall(function ()
        local args = {
            [1] = "SetSpawnPoint"
        }
        if not game.Workspace:FindFirstChild('Military Spy [Lv. 325]') then
            wait(Tween(CFrame.new(-5531.7568359375, 8.983367919921875, 8450.1748046875)))
        end
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == "Military Spy [Lv. 325]" then
                repeat
                    wait(.1)
                    local args = {
                        [1] = "Ken",
                        [2] = true
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                    wait(Tween(v.HumanoidRootPart.CFrame * CFrame.new(1, 0, 0) * getgenv().Config["DoNotEdit"]["HighestObsFarm"]))
                    local humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                        if _G.Hop then
                        print('Start Teleport')
                        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 20, 0)
                        wait(50)
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 0, 0)
                    end)
                until v.Humanoid.Health <= 0
            end
        end
        end)
    end
    if NewWorld then
        pcall(function ()
        local args = {
            [1] = "SetSpawnPoint"
        }
        if not game.Workspace:FindFirstChild('Marine Captain [Lv. 900]') then
            wait(Tween(CFrame.new(-1936.3089599609375, 112.49726104736328, -3069.9794921875)))
        end
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == "Marine Captain [Lv. 900]" then
                repeat
                    wait(.1)
                    local args = {
                        [1] = "Ken",
                        [2] = true
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                    wait(Tween(v.HumanoidRootPart.CFrame * CFrame.new(1, 0, 0) * getgenv().Config["DoNotEdit"]["HighestObsFarm"]))
                    local humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                        if _G.Hop then
                            print('Start Teleport')
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 20, 0)
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 20, 0)
                        wait(50)
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 0, 0)
                    end)
                until v.Humanoid.Health <= 0
            end
        end
        end)
    end
    if ThreeWorld then
        pcall(function ()
        local args = {
            [1] = "SetSpawnPoint"
        }
        if not game.Workspace:FindFirstChild('Living Zombie [Lv. 2000]') then
            wait(Tween(CFrame.new(-10011.3359375, 250.45449829101562, 5918.9970703125)))
        end
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == "Living Zombie [Lv. 2000]" then
                repeat
                    wait(.1)
                    local args = {
                        [1] = "Ken",
                        [2] = true
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
                    wait(Tween(v.HumanoidRootPart.CFrame * CFrame.new(1, 0, 0) * CFrame.new(0, 0, 0)))
                    local humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                        if _G.Hop then
                            print('Start Teleport')
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 40, 0)
                        wait(50)
                        getgenv().Config["DoNotEdit"]["HighestObsFarm"] = CFrame.new(0, 0, 0)
                    end)
                until v.Humanoid.Health <= 0
            end
        end
        end)
    end
    end
    end
end)
AutoFarmTab:Toggle("Fast Attack",_G.Save["FastAttack"],"6022668898",function(vu)
	_G.Fastattack = vu
	startATkmOb = vu
	_G.Save["FastAttack"] = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		_G.Fastattack = false
	end
end)

local CombatFrameworkROld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
local CombatFrameworkR = getupvalues(CombatFrameworkROld)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		repeat wait()
			pcall(function()
				CombatFrameworkR.activeController.hitboxMagnitude = 55
				if _G.Fastattack then
					if startATkmOb == true and (farm or farmBF or AutoFarmBone or Autothird) then
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
							CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
							CombatFrameworkR.activeController.timeToNextAttack = 2
						else
							CombatFrameworkR.activeController.timeToNextAttack = 0
						end
						CombatFrameworkR.activeController.attacking = false
						CombatFrameworkR.activeController.increment = 3
						CombatFrameworkR.activeController.blocking = false
						CombatFrameworkR.activeController.timeToNextBlock = 0
						game.Players.LocalPlayer.Character.Humanoid.Sit = false	
					end
				end
			end)
		until not _G.Fastattack or not startATkmOb
	end)
end)
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			if _G.Fastattack then
				if startATkmOb == true and (farm or farmBF) then
					Click()
				end
			end
		end)
	end)
end)
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.Fastattack == true or startATkmOb == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
        wait(1)
    end)
end)
if OldWorld then
AutoFarmTab:Toggle("Auto New World",_G.Save["Auto New World"],"6022668898",function(vu)
    getgenv().AutoNew = vu
    _G.Save["Auto New World"] = vu
    SaveSetting()
    if vu == false then
        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
end
spawn(function()
    while wait() do
        if getgenv().AutoNew then
            local MyLevel = game.Players.localPlayer.Data.Level.Value
            if MyLevel >= 700 then
               _G.AutoFarm = false
                if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
                    if Workspace.Map.Ice.Door.Transparency == 1 then
                        if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                wait(.4)
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                            end
                            TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        elseif game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 and (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                    repeat wait()
                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                            TP(v.HumanoidRootPart.Position)
                                        elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            EquipWeapon(_G.SelectToolWeapon)
                                            _G.Fastattack = true
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                local args = {
                                                    [1] = "Buso"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                            Click()
                                        end 
                                    until not v.Parent or v.Humanoid.Health <= 0 or getgenv().AutoNew == false
                                end
                            end
                        else
                            _G.Fastattack = false
                        end 
                    else
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                            TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
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
                            end
                        else
                            TP(CFrame.new(4849.29883, 5.65138149, 719.611877))
                            if (CFrame.new(4849.29883, 5.65138149, 719.611877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                TP(CFrame.new(4849.29883, 5.65138149, 719.611877))
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
                            end
                        end
                    end
                else
                    local args = {
                        [1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end
end)
Weapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(Weapon ,v.Name)
	end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(Weapon, v.Name)
	end
end

 _G.SelectToolWeapon = _G.Save["SelectToolWeapon"] or ""
local SelectedWeapon = AutoFarmTab:Dropdown("Select Weapon / Combat",Weapon,function(Value)
    _G.SelectWeapon = Value
	_G.SelectToolWeapon = Value
	SelectToolWeaponOld = Value
end)
AutoFarmTab:Button("Refresh Weapon",function()
	SelectedWeapon:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				SelectWeapon:Add(v.Name)
			end
		end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			SelectedWeapon:Add(v.Name)
		end
	end
end)
AutoFarmTab:Line()
AutoFarmTab:Toggle("Auto Farm Mastery BF",_G.Save["AutoFarm M"],"6022668898",function(vu)
	_G.Save["AutoFarm M"] = vu
	_G.AutoFarmMBF = vu
	farmBF = vu
	SaveSetting()
	if vu == false then
		Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)

 spawn(function()
	while wait(.1) do
		if USEBF then
			pcall(function()
				CheckQuest()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                    if SkillZ and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                        wait(.3)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                    end
                    if SkillX then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                    end
                    if SkillC then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                    end
                    if SkillV then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                    end
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
					if SkillZ then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                    end
                    if SkillX then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                    end
                    if SkillC then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                    end
                    if SkillV then
						local args = {
							[1] = PosMonSKILL.Position
						}
						game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                    end
                end
			end)
		end
	end
end)
spawn(function()
    pcall(function()
		game:GetService("RunService").RenderStepped:Connect(function()
            if USEBF and PosMonSKILL ~= nil then
                local args = {
                    [1] = PosMonSKILL.Position
                }
                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)
spawn(function()
	pcall(function()
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
end)
AutoFarmTab:Toggle("Auto Farm Mastery Gun",_G.Save["AutoFarm G"],"6022668898",function(vu)
	_G.Save["AutoFarm G"] = vu
	_G.AutoFarmGun = vu
	SaveSetting()
	if vu == false then
		Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
HealthPersen = 20
AutoFarmTab:Slider("Health % ",0,100,HealthPersen,function(x)
    HealthPersen = x
end)

StastTab:Toggle("Melee",_G.Save["Melee"],"6022668898",function(vu)
	_G.Save["Melee"] = vu
	_G.Melee = vu
	SaveSetting()
end)
StastTab:Toggle("Defense",_G.Save["Defense"],"6022668898",function(vu)
	_G.Save["Defense"] = vu
	_G.Defense = vu
	SaveSetting()
end)
StastTab:Toggle("Sword",_G.Save["Sword"],"6022668898",function(vu)
	_G.Save["Sword"] = vu
	_G.Sword = vu
	SaveSetting()
end)
StastTab:Toggle("Gun",_G.Save["Gun"],"6022668898",function(vu)
	_G.Save["Gun"] = vu
	_G.Gun = vu
	SaveSetting()
end)
StastTab:Toggle("Blox Fruit",_G.Save["Blox Fruit"],"6022668898",function(vu)
	_G.Save["Blox Fruit"] = vu
	_G.Blox_Fruit = vu
	SaveSetting()
end)
PointStats = 1
StastTab:Slider("Poins",0,100,PointStats,function(x)
    PointStats = x
end)
SettingsTab:Toggle("Auto Skill Z",_G.Save["SkillZ"],"6022668898",function(vu)
	SkillZ = vu
	_G.Save["SkillZ"] = vu
	SaveSetting()
end)
SettingsTab:Toggle("Auto Skill X",_G.Save["SkillX"],"6022668898",function(vu)
	SkillX = vu
	_G.Save["SkillX"] = vu
	SaveSetting()
end)
SettingsTab:Toggle("Auto Skill C",_G.Save["SkillC"],"6022668898",function(vu)
	SkillC = vu
	_G.Save["SkillC"] = vu
	SaveSetting()
end)
SettingsTab:Toggle("Auto Skill V",_G.Save["SkillV"],"6022668898",function(vu)
	SkillV = vu
	_G.Save["SkillV"] = vu
	SaveSetting()
end)

coroutine.wrap(function()
	while wait() do
	   pcall(function()
		  if _G.AutoFarmGun and not raidiing then
			 game.Players.LocalPlayer.Character.Humanoid.Sit = false
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				   StartMagnet = false
				   startATkmOb = false
				   CheckQuest()
				   local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				   kkii:Stop()
				   _G.Fastattack = false
				   Tween(CFrameQuest)
				   if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and not raidiing then
						 CheckQuest()
						 wait(1)
						 if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 and not raidiing then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						 else
							Tween(CFrameQuest)
							_G.Fastattack = false
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
										   StartMagnet = false
										   startATkmOb = false
										   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
												 if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
													PosMon = v.HumanoidRootPart.CFrame
													HealthMin = v.Humanoid.MaxHealth * HealthPersen/100
													if v.Humanoid.Health <= HealthMin then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															local args = {
																[1] = "Buso"
															}
															 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
														end
														_G.Fastattack = false
														startATkmOb = false
														Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
														EquipWeapon(tostring(SelectToolWeaponGun))
														local args = {
															[1] = v.HumanoidRootPart.Position,
															[2] = v.HumanoidRootPart
														}
														game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														if v.Humanoid:FindFirstChild("Animator") then
														   v.Humanoid.Animator:Destroy()
														end
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														_G.Fastattack = false
														startATkmOb = false
													else
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															local args = {
																[1] = "Buso"
															}
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
														end
														_G.Fastattack = true
														startATkmOb = true
														Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 5))
														EquipWeapon(tostring(_G.SelectWeapon))
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(14)
														sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
														if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
														end
														old_pos_count_time = 0
													end
													StartMagnet = true
													PosMon = v.HumanoidRootPart.CFrame
												else
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")  
												end
										   	else
											  if (CFrameMon.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 600 and not raidiing then
												 StatrMagnet = false
												 startATkmOb = false 
												 CheckQuest()
												 Tween(CFrameMon)
											 end
										 end
										old_pos_count_time += 1
										until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoFarmGun == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(Ms) or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or raidiing or old_pos_count_time > 150
										old_pos_count_time = 0
										USEBF = false
									 end
								  end
							   end
							else
							 if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							 end
							 Tween(CFrameMon)
							 StartMagnet = false
							 startATkmOb = false
							 CheckQuest()
							 old_pos_count_time = 0
						 end
					end)
				 end
			 end
		  end)
	   end
 end)()
function TP(P1)
    changestate()
    Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 250 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
        Speed = 1000
	elseif Distance < 250 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
		Speed = 350
    elseif Distance < 200 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
        Speed = 150
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = P1}
    ):Play()
end
old_pos_count_time = 0
	
spawn(function()
	while wait() do
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999)
		end 
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0
		end
	end
end)
spawn(function()
	while wait() do
		if AutoFarmBone then
			if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if AutoFarmBone and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
						repeat wait()
								startATkmOb = true
								PosFarmBone = v.HumanoidRootPart.CFrame
								EquipWeapon(_G.SelectWeapon)
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
								startATkmOb = true
								Click()
								MagnetFarmBone = true
						until not AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
						startATkmOb = false
						MagnetFarmBone = false
					end
				end
			else
				MagnetFarmBone = false
				startATkmOb = false
				Tween(CFrame.new(-9506.14648, 172.130661, 6101.79053, -0.999731541, 0, -0.0231563263, 0, 1, 0, 0.0231563263, 0, -0.999731541))
			end
		end
	end
end)
spawn(function()
	while wait() do
		if MagnetFarmBone and AutoFarmBone then
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if MagnetFarmBone  and AutoFarmBone and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosFarmBone
					v.HumanoidRootPart.CanCollide = false
				end
			end
		end
	end
end)
spawn(function()
	while true do
      pcall(function()
		if farmBF then
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StartMagnetb = false
				startATkmOb = false
				CheckQuest()
				local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				kkii:Stop()
				_G.Fastattack = false
				Tween(CFrameQuest)
				if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and not raidiing then
					CheckQuest()
					wait(1)
					if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 and not raidiing then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					else
						Tween(CFrameQuest)
						_G.Fastattack = false
					end
			end
			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckQuest()
					if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if farmBF and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									repeat wait()
										pcall(function()
											StartMagnetb = false
											startATkmOb = false
											if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
													HealthMin = v.Humanoid.MaxHealth*Persen/100
													PosMonSKILL = v.HumanoidRootPart.CFrame
													_G.Fastattack = true
													startATkmOb = true
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
													PosMonSKILL = v.HumanoidRootPart.CFrame
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													EquipWeapon(_G.SelectWeapon)
													v.Humanoid.Sit = false
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.Size = Vector3.new(10,10,10)
													v.HumanoidRootPart.Transparency = 1.5
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
												else
													_G.Fastattack = true
													startATkmOb = true
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
													PosMonSKILL = v.HumanoidRootPart.CFrame
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													EquipWeapon(tostring(game.Players.LocalPlayer.Data.DevilFruit.Value))
													v.Humanoid.Sit = false
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(14)
													v.HumanoidRootPart.Size = Vector3.new(10,10,10)
													v.HumanoidRootPart.Transparency = 1.5
													if v.Humanoid:FindFirstChild("Animator") then
														v.Humanoid.Animator:Destroy()
													end
											end
											old_pos_count_time = 0
											StartMagnetb = true
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")  
										end
									end)
									old_pos_count_time += 1
									until (not farmBF or not v.Parent or v.Humanoid.Health <= 0) or (not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and Nonquest == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and Nonquest == false)
									StartMagnetb = false 
									old_pos_count_time = 0
									end
								end
							end
						else
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							Tween(CFrameMon)
							StartMagnetb = false
							startATkmOb = false
							CheckQuest()
							old_pos_count_time = 0
						end
					end)
				end
			end
         end)
		wait()
    end
end)
spawn(function()
	pcall(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if farm or _G.autoraid or getgenv().AutoNew or statetp1 or Autothird or _G.AutoTEST or _G.AutoFarmMBF or _G.AutoFarmGun or _G.KenHaki then
				if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(10000,10000,10000)
					Noclip.Velocity = Vector3.new(0,0,0)
				end
			else
				if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
				end
			end
		end)
	end)
 end)
spawn(function()
	while true do
      pcall(function()
		if farm or _G.AutoFarm then
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StartMagnetAutoFarmLevel = false
				startATkmOb = false
				CheckQuest()
				local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				kkii:Stop()
				_G.Fastattack = false
				Tween(CFrameQuest)
				if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and not raidiing then
					CheckQuest()
					wait(1)
					if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 and not raidiing then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					else
						Tween(CFrameQuest)
						_G.Fastattack = false
					end
			end
			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				pcall(function()
					CheckQuest()
					if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									repeat wait()
										pcall(function()
											StartMagnetAutoFarmLevel = false
											startATkmOb = false
											if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
													_G.Fastattack = true
													startATkmOb = true
													Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
													PosMon = v.HumanoidRootPart.CFrame
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															local args = {
																[1] = "Buso"
															}
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
														end
														if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														end
														EquipWeapon(_G.SelectWeapon)
														v.Humanoid.Sit = false
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(14)
														v.HumanoidRootPart.Size = Vector3.new(10,10,10)
														v.HumanoidRootPart.Transparency = 1.5
														if v.Humanoid:FindFirstChild("Animator") then
															v.Humanoid.Animator:Destroy()
														end
													end
												old_pos_count_time = 0
												StartMagnetAutoFarmLevel = true
											else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")  
											end
										end
									end)
									old_pos_count_time += 1
									until (not farm or not v.Parent or v.Humanoid.Health <= 0) or (not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and Nonquest == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and Nonquest == false)
									StartMagnetAutoFarmLevel = false 
									old_pos_count_time = 0
									end
								end
							end
						else
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							Tween(CFrameMon)
							StartMagnetAutoFarmLevel = false
							startATkmOb = false
							CheckQuest()
							old_pos_count_time = 0
						end
					end)
				end
			end
         end)
		wait()
    end
end)
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
   time_stay_long = 0
	while wait() do
		pcall(function()
			stay_long_pos  = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			wait(1)
			if game.Players.LocalPlayer.Character.HumanoidRootPart.Position == stay_long_pos then
				repeat wait(1)
					time_stay_long += 1
				until game.Players.LocalPlayer.Character.HumanoidRootPart.Position ~= stay_long_pos or time_stay_long > 600
				if time_stay_long >= 600 then
					Teleport() 
				else
					time_stay_long = 0
				end
			end
		end)
	end
end)
raidiing = false
spawn(function()
   raMon = 1
   raMon2 = 1
   while wait(6) do
      raMon += 1
      raMon2 += 1
      if raMon > 2 then
         raMon = 1
      end
      if raMon2 > 3 then
         raMon2 = 1
      end
   end
end)
 spawn(function()
	while game:GetService("RunService").Stepped:wait(10) do
		character = game.Players.LocalPlayer.Character 
		if _G.NoClip or _G.AutoFarm or KillPlayer or getgenv().AutoNew or Autothird or Autothird or Factory or NextIsland or TweenIsland or _G.AutoTEST or _G.AutoFarmMBF or _G.AutoFarmGun then
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
	while wait() do
	   if Autothird then
		  local MyLevel = game.Players.localPlayer.Data.Level.Value
		  if MyLevel >= 1500 then
			 _G.AutoFarm = false
			 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
				   local args = {
					  [1] = "TravelZou" -- OLD WORLD to NEW WORLD
				   }
				   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				   
				   if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
					  if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
						 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							   repeat wait()
								  if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
									 Tween(v.HumanoidRootPart.CFrame)
								  elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									 EquipWeapon(_G.SelectToolWeapon)
									 startATkmOb = true
									 if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
										   [1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									 end
									 Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									 Click()
								  end 
							   until not Autothird or not v.Parent or v.Humanoid.Health <= 0 
							   wait(.5)
							   asmrqq = 2
							   repeat wait()
								  local args = {
									 [1] = "TravelZou" -- OLD WORLD to NEW WORLD
								  }
								  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							   until asmrqq == 1
							   startATkmOb = false
							end
						 end
					  else
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
						 wait()
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
					  end
				   elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
					  local args = {
						 [1] = "TravelZou" -- OLD WORLD to NEW WORLD
					  }
					  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				   else
					  if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then 	
						 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							   repeat wait()
								  if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
									Tween(v.HumanoidRootPart.CFrame)
								  elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									 EquipWeapon(_G.SelectToolWeapon)
									 _G.Fastattack = true
									 if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										local args = {
										   [1] = "Buso"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									 end
									 Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									 Click()
								  end 
							   until not Autothird or not v.Parent or v.Humanoid.Health <= 0 
							   _G.Fastattack = false
							end
						 end
					  else -- SlashHit : rbxassetid://2453605589
						 Tween(CFrame.new(2288.802, 15.1870775, 863.034607))
						 if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							Tween(CFrame.new(2288.802, 15.1870775, 863.034607))
						 end
					  end
				   end
				else
				   if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
					  TabelDevilFruitStore = {}
					  TabelDevilFruitOpen = {}
 
					  for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
						 for i1,v1 in pairs(v) do
							if i1 == "Name" then 
							   table.insert(TabelDevilFruitStore,v1)
							end
						 end
					  end
 
					  for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
						 if v.Price >= 1000000 then  
							table.insert(TabelDevilFruitOpen,v.Name)
						 end
					  end
 
					  for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
						 for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
							if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
							   if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
							   local args = {
								  [1] = "LoadFruit"
							   }
 
							   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							   else
								  local args = {
									 [1] = "TalkTrevor",
									 [2] = "1"
								  }
 
								  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								  local args = {
									 [1] = "TalkTrevor",
									 [2] = "2"
								  }
 
								  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								  local args = {
									 [1] = "TalkTrevor",
									 [2] = "3"
								  }
 
								  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							   end
							end
						 end
					  end
					  -- Script generated by SimpleSpy - credits to exx#9394
 
					  local args = {
						 [1] = "TalkTrevor",
						 [2] = "3"
					  }
 
					  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					  -- Script generated by SimpleSpy - credits to exx#9394
 
					  local args = {
						 [1] = "TalkTrevor",
						 [2] = "2"
					  }
 
					  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					  -- Script generated by SimpleSpy - credits to exx#9394
 
					  local args = {
						 [1] = "TalkTrevor",
						 [2] = "1"
					  }
 
					  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				   end
				end
			 else
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
				   if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
					  if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
						 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Swan Pirate [Lv. 775]" then
							   pcall(function()
								  repeat wait()
									 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Tween(v.HumanoidRootPart.CFrame)
									 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										EquipWeapon(_G.SelectToolWeapon)
										_G.Fastattack = true
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										   local args = {
											  [1] = "Buso"
										   }
										   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										Click()
									 end 
								  until not v.Parent or v.Humanoid.Health <= 0 or Autothird == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
								  AutoBartiloBring = false
								  _G.Fastattack = false
							   end)
							end
						 end
					  else
						 Tween(CFrame.new(1057.92761, 137.614319, 1242.08069))
						 if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							Tween(CFrame.new(1057.92761, 137.614319, 1242.08069))
						 end
					  end
				   else
					  Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
					  if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						 Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
						 local args = {
							[1] = "StartQuest",
							[2] = "BartiloQuest",
							[3] = 1
						 }
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					  end
				   end 
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
				   if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
					  Ms = "Jeremy [Lv. 850] [Boss]"
					  for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						 if v.Name == Ms then
							repeat wait()
							   if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								  Tween(v.HumanoidRootPart.CFrame)
							   elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								  EquipWeapon(_G.SelectToolWeapon)
								  _G.Fastattack = true
								  if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									 local args = {
										[1] = "Buso"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								  end
								  Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
								  Click()
							   end 
							until not v.Parent or v.Humanoid.Health <= 0 or Autothird == false
							_G.Fastattack = false
						 end
					  end
				   else
					  Tween(CFrame.new(2099.88159, 448.931, 648.997375))
					  if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						 Tween(CFrame.new(2099.88159, 448.931, 648.997375))
					  end
				   end
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
				   if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
					  Tween(CFrame.new(-1836, 11, 1714))
				   elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
					  Tween(CFrame.new(-1836, 11, 1714))
					  wait(.5)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
					  wait(.1)
					  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
				   end
				end
			 end
		  end
	   end
	end
 end)
 spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if USEBF then
                        args[2] = PosMonSKILL
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
do -- Init
	task = task or getrenv().task;
	fastSpawn,fastWait,delay = task.spawn,task.wait,task.delay
end
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if farm and StartMagnetAutoFarmLevel and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Don Swan [Lv. 3000] [Boss]" and v.Name ~= "Saber Expert [Lv. 200] [Boss]" and v.Name ~= "Longma [Lv. 2000] [Boss]" and (v.HumanoidRootPart.Position-PosMon.Position).magnitude <= 350 then
				if syn then
					if isnetworkowner(v.HumanoidRootPart) then
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						v.Humanoid:ChangeState(11)
					end
				else
					v.HumanoidRootPart.CFrame = PosMon
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					v.Humanoid:ChangeState(11)
				end	
			end
		end
	end)
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if farmBF and StartMagnetb and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Don Swan [Lv. 3000] [Boss]" and v.Name ~= "Saber Expert [Lv. 200] [Boss]" and v.Name ~= "Longma [Lv. 2000] [Boss]" and (v.HumanoidRootPart.Position-PosMon.Position).magnitude <= 350 then
				if syn then
					if isnetworkowner(v.HumanoidRootPart) then
						v.HumanoidRootPart.CFrame = PosMonSKILL
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						v.Humanoid:ChangeState(11)
					end
				else
					v.HumanoidRootPart.CFrame = PosMonSKILL
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					v.Humanoid:ChangeState(11)
				end	
			end
		end
	end)
end)
spawn(function()
	while wait() do
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
	end
 end)
RaidsTab:Dropdown("Select Microchip",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand"},function(Value)
    _G.CHIP = Value
end)
RaidsTab:Toggle("Kill Arua",_G.Save["Raids"],"6022668898",function(vu)
	_G.Save["Raids"] = vu
	RaidsArua = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
RaidsTab:Toggle("Auto Next Island",_G.Save["Next"],"6022668898",function(vu)
	_G.Save["Next"] = vu
	NextIsland = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
RaidsTab:Toggle("Auto Awakener",_G.Save["Awakener"],"6022668898",function(vu)
	_G.Save["Awakener"] = vu
	Awakener = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
RaidsTab:Toggle("Auto Raids",_G.Save["AutoRaids"],"6022668898",function(vu)
	_G.Save["AutoRaids"] = vu
	_G.autoraid = vu
	SaveSetting()
	if vu == false then
	   Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
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
spawn(function()
	while wait(.1) do
		if NextIsland then
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,40,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,40,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,40,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,40,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,40,0))
				end
			else
				Tween(CFrame.new(-6480.84473, 252.764435, -4532.41748, -0.807500541, -1.05677671e-08, 0.589866817, -2.50809293e-08, 1, -1.64191238e-08, -0.589866817, -2.80528596e-08, -0.807500541))
			end
		end
	end
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
		if _G.autoraid then
			for i,v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Fruit") then
					Tween(v.Handle.CFrame)
				end
			end
		
			if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
				if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.CHIP)
				end
				if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
					fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
				end
			end
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if _G.autoraid and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
					pcall(function()
						repeat wait()
							if sethiddenproperty then
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.Health = 0
						until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
					end)
				end
			end
			spawn(function()
				while wait() do
					pcall(function()
						if _G.autoraid then
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end) 
				end
			end)
			if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
				if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
		
					Tween(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
						Tween(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
						Tween(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
						Tween(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(0,80,0))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						Tween(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(0,80,0))
					end
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
