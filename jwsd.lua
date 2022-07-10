

do local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("UI") if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
local CloseBind = Enum.KeyCode.RightControl
coroutine.wrap(
	function()
		while wait() do
			Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
			Red.HueSelectionPosition = Red.HueSelectionPosition + 1

			if Red.RainbowColorValue >= 1 then
				Red.RainbowColorValue = 0
			end

			if Red.HueSelectionPosition == 160 then
				Red.HueSelectionPosition = 0
			end
		end
	end
)()

local UI = Instance.new("ScreenGui")
UI.Name = "UI"
UI.Parent = game:GetService("CoreGui").RobloxGui.Modules
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	if syn then
		syn.protect_gui(UI)
	end


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

local ui = {}

function ui:CreateWindow(text,logo1,logo2,toclose)

	CloseBind = toclose or Enum.KeyCode.RightControl
	if logo1 == nil then
		logo1 = 10123314587
	end
	if logo2 == nil then
		logo2 = "10123314587"
	end

	local fs = false
	local currentservertoggled = ""

	local Main = Instance.new("Frame")

	Main.Name = "Main"
	Main.Parent = UI
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 623, 0, 504)

	local Logo = Instance.new("ImageLabel")

	Logo.Name = "Logo"
	Logo.Parent = Main
	Logo.Active = true
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1
	Logo.BorderSizePixel = 0
	Logo.Position = UDim2.new(0.0126051363, 0, 0.013920635, 0)
	Logo.Size = UDim2.new(0, 27, 0, 27)
	Logo.Image = "http://www.roblox.com/asset/?id="..tostring(logo1)

	local Name = Instance.new("TextLabel")

	Name.Name = "Name"
	Name.Parent = Main
	Name.Active = true
	Name.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.05, 0, 0, 0)
	Name.Size = UDim2.new(0, 130, 0, 42)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(138, 43, 226)
	Name.TextSize = 14.000
	Name.TextXAlignment = Enum.TextXAlignment.Left

	local LogoMain = Instance.new("Frame")

	LogoMain.Name = "LogoMain"
	LogoMain.Parent = Main
	LogoMain.Active = true
	LogoMain.AnchorPoint = Vector2.new(0.5, 0.5)
	LogoMain.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	LogoMain.BorderSizePixel = 0
	LogoMain.Position = UDim2.new(0.124091722, 0, 0.191334918, 0)
	LogoMain.Size = UDim2.new(0, 155, 0, 107)

	local ImageLabel = Instance.new("ImageLabel")

	ImageLabel.Parent = LogoMain
	ImageLabel.Active = true
	ImageLabel.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.174193546, 0, 0.0277541801, 0)
	ImageLabel.Size = UDim2.new(0, 100, 0, 100)
	ImageLabel.Image = "http://www.roblox.com/asset/?id="..tostring(logo2)

	local Topbar = Instance.new("Frame")

	--Properties:

	Topbar.Name = "Topbar"
	Topbar.Parent = Main
	Topbar.Active = true
	Topbar.AnchorPoint = Vector2.new(0.5, 0.5)
	Topbar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Topbar.BackgroundTransparency = 1
	Topbar.BorderSizePixel = 0
	Topbar.Position = UDim2.new(0.499693662, 0, 0.0324715078, 0)
	Topbar.Size = UDim2.new(0, 623, 0, 33)

	local PageTap = Instance.new("Frame")

	PageTap.Name = "PageTap"
	PageTap.Parent = Main
	PageTap.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	PageTap.BorderSizePixel = 0
	PageTap.Position = UDim2.new(-0.00113782077, 0, 0.297485709, 0)
	PageTap.Size = UDim2.new(0, 155, 0, 354)

	local ScolTap = Instance.new("ScrollingFrame")

	ScolTap.Name = "ScolTap"
	ScolTap.Parent = PageTap
	ScolTap.Active = true
	ScolTap.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
	ScolTap.BackgroundTransparency = 1
	ScolTap.BorderSizePixel = 0
	ScolTap.Size = UDim2.new(0, 155, 0, 354)
	ScolTap.ScrollBarThickness = 3
	ScolTap.CanvasSize = UDim2.new(0, 0, 1, 0)
	ScolTap.AutomaticCanvasSize = Enum.AutomaticSize.Y

	local UIListLayout_ScolTap = Instance.new("UIListLayout")
	local UIPadding_ScolTap = Instance.new("UIPadding")

	UIListLayout_ScolTap.Name = "UIListLayout_ScolTap"
	UIListLayout_ScolTap.Parent = ScolTap
	UIListLayout_ScolTap.FillDirection = Enum.FillDirection.Vertical
	UIListLayout_ScolTap.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_ScolTap.Padding = UDim.new(0, -3)

	UIPadding_ScolTap.Name = "UIPadding_ScolTap"
	UIPadding_ScolTap.Parent = ScolTap
	UIPadding_ScolTap.PaddingLeft = UDim.new(0.30, 0)
	UIPadding_ScolTap.PaddingTop = UDim.new(0, 5)

	local pagesFolder = Instance.new("Folder")

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = Main

	MakeDraggable(Logo,Main)
	MakeDraggable(Topbar,Main)

	local uitap = {}

	function uitap:CreateTap(text,logo)
		if logo == nil then
			logo = 5162713334
		end

		local TextButton_Tap = Instance.new("TextButton")
		TextButton_Tap.Name = "TextButton_Tap"
		TextButton_Tap.Parent = ScolTap
		TextButton_Tap.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
		TextButton_Tap.BackgroundTransparency = 1.00
		TextButton_Tap.BorderColor3 = Color3.fromRGB(138, 43, 226)
		TextButton_Tap.BorderSizePixel = 0
		TextButton_Tap.Position = UDim2.new(0.2, 0, 0.00142450142, 0)
		TextButton_Tap.Size = UDim2.new(0, 100, 0, 50)
		TextButton_Tap.Font = Enum.Font.Gotham
		TextButton_Tap.TextColor3 = Color3.fromRGB(138, 43, 226)
		TextButton_Tap.TextSize = 15.000
		TextButton_Tap.TextWrapped = true
		TextButton_Tap.TextXAlignment = Enum.TextXAlignment.Left
		TextButton_Tap.Text = text

		local ImageTap = Instance.new("ImageLabel")

		ImageTap.Parent = TextButton_Tap
		ImageTap.Active = true
		ImageTap.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
		ImageTap.BackgroundTransparency = 1.000
		ImageTap.Position = UDim2.new(-0.35, 0, 0.3, 1)
		ImageTap.Size = UDim2.new(0, 20, 0, 20)
		ImageTap.Image = "http://www.roblox.com/asset/?id="..tostring(logo)

		local MainFramePage = Instance.new("Frame")

		MainFramePage.Name = "MainFramePage"
		MainFramePage.Parent = pagesFolder
		MainFramePage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Position = UDim2.new(0.247658327, 0, 0.0851841271, 0)
		MainFramePage.Size = UDim2.new(0, 468, 0, 460)
		MainFramePage.Visible = false

		local FramePage = Instance.new("Frame")

		FramePage.Name = "FramePage"
		FramePage.Parent = MainFramePage
		FramePage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		FramePage.BorderSizePixel = 0
		FramePage.Size = UDim2.new(0, 468, 0, 461)

		local ScolPage = Instance.new("ScrollingFrame")

		ScolPage.Name = "ScolPage"
		ScolPage.Parent = FramePage
		ScolPage.Active = true
		ScolPage.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
		ScolPage.BackgroundTransparency = 1
		ScolPage.BorderSizePixel = 0
		ScolPage.Size = UDim2.new(0, 468, 0, 461)
		ScolPage.ScrollBarThickness = 3

		local MainPage = Instance.new("Frame")
		MainPage.Name = "MainPage"
		MainPage.Parent = ScolPage
		MainPage.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
		MainPage.BackgroundTransparency = 1
		MainPage.Size = UDim2.new(0, 468, 0, 461)

		local UIGridLayout_MainPage = Instance.new("UIGridLayout")
		local UIListLayout_MainPage = Instance.new("UIListLayout")
		local UIPadding_MainPage = Instance.new("UIPadding")

		UIGridLayout_MainPage.Name = "UIGridLayout_MainPage"
		UIGridLayout_MainPage.Parent = MainPage
		UIGridLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout_MainPage.CellPadding = UDim2.new(0, 35, 0, 10)
		UIGridLayout_MainPage.CellSize = UDim2.new(0, 468, 0, 200)

		UIListLayout_MainPage.Name = "UIListLayout_MainPage"
		UIListLayout_MainPage.Parent = MainPage
		UIListLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_MainPage.Padding = UDim.new(0, 6)

		UIPadding_MainPage.Name = "UIPadding_MainPage"
		UIPadding_MainPage.Parent = MainPage

		TextButton_Tap.MouseButton1Click:connect(function (  )
			currentservertoggled = MainPage.Name
			for i, v in next, pagesFolder:GetChildren() do
				if v.Name == "MainFramePage" then
					-- TweenService:Create(
					--     fucklib,
					--     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					--     {BackgroundTransparency = 0}
					-- ):Play()
					v.Visible = false

				end

				MainFramePage.Visible = true
				--     wait(0.125)
				-- TweenService:Create(
				--     fucklib,
				--     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				--     {BackgroundTransparency = 1}
				-- ):Play()
				--    MainPage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Quad", 0.15, true)
			end

			for i ,v in next , ScolTap:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(138, 43, 226)}
					):Play()


				end
				TweenService:Create(
					TextButton_Tap,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(232 ,232 ,232)}
				):Play()
			end
		end)



		if fs == false then
			TweenService:Create(
				TextButton_Tap,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{TextColor3 = Color3.fromRGB(232 ,232 ,232)}
			):Play()

			MainFramePage.Visible = true
			MainFramePage.Name  = text .. "Server"
			fs  = true
		end

		local uipage = {}

		function uipage:Createpage()
			local Page = Instance.new("Frame")


			Page.Name = "Page"
			Page.Parent = MainPage
			Page.BackgroundColor3 = Color3.fromRGB(255, 0 ,0)
			Page.BackgroundTransparency = 1.000
			Page.Size = UDim2.new(0, 100, 0, 100)

			local ScolPage2 = Instance.new("ScrollingFrame")
			local UIListLayout_ScolPage2 = Instance.new("UIListLayout")
			local UIPadding_ScolPage2 = Instance.new("UIPadding")

			--Properties:

			ScolPage2.Name = "ScolPage2"
			ScolPage2.Parent = Page
			ScolPage2.Active = true
			ScolPage2.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
			ScolPage2.BorderColor3 = Color3.fromRGB(20, 20, 20)
			ScolPage2.BorderSizePixel = 0
			ScolPage2.Size = UDim2.new(0, 457, 0, 461)
			ScolPage2.CanvasPosition = Vector2.new(0, 375)
			ScolPage2.ScrollBarThickness = 0

			UIListLayout_ScolPage2.Name = "UIListLayout_ScolPage2"
			UIListLayout_ScolPage2.Parent = ScolPage2
			UIListLayout_ScolPage2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_ScolPage2.Padding = UDim.new(0, 5)

			UIPadding_ScolPage2.Name = "UIPadding_ScolPage2"
			UIPadding_ScolPage2.Parent = ScolPage2
			UIPadding_ScolPage2.PaddingLeft = UDim.new(0, 50)
			UIPadding_ScolPage2.PaddingTop = UDim.new(0, 15)

			game:GetService("RunService").Stepped:Connect(function ()
				pcall(function ()
					ScolPage.CanvasSize = UDim2.new(0,0,0,UIGridLayout_MainPage.AbsoluteContentSize.Y + 10 )
					ScolPage2.CanvasSize = UDim2.new(0,0,0,UIListLayout_ScolPage2.AbsoluteContentSize.Y+ 30 )
				end)
			end)

			local NotiFrame = Instance.new("Frame")
			NotiFrame.Name = "NotiFrame"
			NotiFrame.Parent = UI
			NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			NotiFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotiFrame.BackgroundTransparency = 1.000
			NotiFrame.Position = UDim2.new(1.4, 0, 0.0613496937, 0)
			NotiFrame.Size = UDim2.new(0, 1632, 0, 100)

			local Notilistlayout = Instance.new("UIListLayout")

			Notilistlayout.Name = "Notilistlayout"
			Notilistlayout.Parent = NotiFrame
			Notilistlayout.FillDirection = Enum.FillDirection.Horizontal
			Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
			Notilistlayout.Padding = UDim.new(0, 5)

			function ui:Notification(text,text2,delays,logo)
				if logo == nil then
					logo = 5162713334
				end
				if delays == nil then
					delays = 1
				end
				local TitleFrame = Instance.new("Frame")

				TitleFrame.Name = "TitleFrame"
				TitleFrame.Parent = NotiFrame
				TitleFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				TitleFrame.Size = UDim2.new(0, 0, 0, 0)

				TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)

				local ConnerTitile = Instance.new("UICorner")

				ConnerTitile.CornerRadius = UDim.new(0, 4)
				ConnerTitile.Name = "ConnerTitile"
				ConnerTitile.Parent = TitleFrame

				local imagenoti = Instance.new("ImageLabel")

				imagenoti.Name = "imagenoti"
				imagenoti.Parent = TitleFrame
				imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
				imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				imagenoti.Position = UDim2.new(0.135999978, 0, 0.5, 0)
				imagenoti.Size = UDim2.new(0, 50, 0, 50)
				imagenoti.BackgroundTransparency = 1
				imagenoti.Image = "http://www.roblox.com/asset/?id="..tostring(logo)

				local txdlid = Instance.new("TextLabel")
				local LableFrame = Instance.new("Frame")

				txdlid.Name = "txdlid"
				txdlid.Parent = TitleFrame
				txdlid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				txdlid.BackgroundTransparency = 1.000
				txdlid.Position = UDim2.new(0.275999993, 0, 0.25, 0)
				txdlid.Size = UDim2.new(0, 175, 0, 24)
				txdlid.Font = Enum.Font.GothamSemibold
				txdlid.TextColor3 = Color3.fromRGB(80, 245, 245)
				txdlid.TextSize = 11.000
				txdlid.Text = text
				txdlid.TextXAlignment = Enum.TextXAlignment.Left

				LableFrame.Name = "LableFrame"
				LableFrame.Parent = TitleFrame
				LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LableFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LableFrame.BackgroundTransparency = 1.000
				LableFrame.Position = UDim2.new(0.625999987, 0, 0.620000005, 0)
				LableFrame.Size = UDim2.new(0, 175, 0, 25)

				local TextNoti = Instance.new("TextLabel")

				TextNoti.Name = "TextNoti"
				TextNoti.Parent = LableFrame
				TextNoti.Active = true
				TextNoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextNoti.BackgroundTransparency = 1.000
				TextNoti.Size = UDim2.new(0, 175, 0, 25)
				TextNoti.Font = Enum.Font.Gotham
				TextNoti.Text = text2
				TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextNoti.TextSize = 11.000
				TextNoti.TextXAlignment = Enum.TextXAlignment.Left

				repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)

				local Time = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIPadding = Instance.new("UIPadding")

				Time.Name = "Time"
				Time.Parent = TitleFrame
				Time.Active = true
				Time.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
				Time.BorderSizePixel = 0
				Time.Position = UDim2.new(0.0320000015, 0, 0.870000005, 0)
				Time.Size = UDim2.new(0, 236, 0, 3)

				UICorner.Parent = Time
				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Name = ""

				UIPadding.Parent = NotiFrame
				UIPadding.PaddingLeft = UDim.new(0, 15)
				UIPadding.PaddingTop = UDim.new(0, 15)

				TweenService:Create(
					Time,
					TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
					{Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				delay(tonumber(delays),function()
					TweenService:Create(
						imagenoti,
						TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
						{ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextNoti,
						TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
						{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						txdlid,
						TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
						{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.3)
					TweenService:Create(
						TitleFrame,
						TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut),
						{Size = UDim2.new(0, 0, 0, 70)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.3)
					TitleFrame:Destroy()
				end
				)
			end

			local uitoggled = false
			UserInputService.InputBegan:Connect(function(io, p)
				if io.KeyCode == CloseBind then
					if uitoggled == false then
						TweenService:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
						uitoggled = true
					else
						Main:TweenSize(UDim2.new(0, 623, 0, 504), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .4, true)
						uitoggled = false
					end
				end
			end)

			local main = {}

			function main:Button(text,callback)

				local ButtonFrame = Instance.new("Frame")

				ButtonFrame.Name = "ButtonFrame"
				ButtonFrame.Parent = ScolPage2
				ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 0 ,0)
				ButtonFrame.BorderSizePixel = 0
				ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonFrame.Size = UDim2.new(0, 375, 0, 25) -- UDim2.new(0, 213, 0, 35)
				ButtonFrame.BackgroundTransparency  = 1
				ButtonFrame.ClipsDescendants = true

				local Button = Instance.new("TextButton")

				Button.Parent = ButtonFrame
				Button.Name = "Button"
				Button.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				Button.Size = UDim2.new(0,345, 0, 25)
				Button.Font = Enum.Font.Gotham
				Button.Text = tostring(text)
				Button.TextColor3 = Color3.fromRGB(255 ,250 ,250)
				Button.TextSize = 11.000
				Button.AnchorPoint = Vector2.new(0.5, 0.5)
				Button.Position = UDim2.new(0.5, 0, 0.5, 0)
				Button.TextXAlignment = Enum.TextXAlignment.Center
				Button.BackgroundTransparency = 0.6
				Button.TextWrapped = true
				Button.AutoButtonColor = false
				Button.ClipsDescendants = true

				local ConnerPage = Instance.new("UICorner")

				ConnerPage.CornerRadius = UDim.new(0, 4)
				ConnerPage.Name = ""
				ConnerPage.Parent = Button

				Button.MouseEnter:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{Size =  UDim2.new(0, 375, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)
				Button.MouseLeave:Connect(function()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{Size =  UDim2.new(0, 345, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				Button.MouseButton1Click:Connect(function()
					--    Ripple(Button)
					callback()
					Button.TextSize = 0
					TweenService:Create(
						Button,
						TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
						{TextSize =  11} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)
			end
			function main:Title(text)
				local tiframe = Instance.new("Frame")

				tiframe.Name = "tiframe"
				tiframe.Parent = ScolPage2
				tiframe.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				tiframe.BackgroundTransparency = 1
				tiframe.BorderSizePixel = 0
				tiframe.ClipsDescendants = true
				tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
				tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
				tiframe.Size = UDim2.new(0, 373, 0, 20)

				local  lineframe = Instance.new("TextLabel")

				lineframe.Parent = tiframe
				lineframe.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				lineframe.BackgroundTransparency = 0
				lineframe.AnchorPoint = Vector2.new(0.1, 0.5)
				lineframe.Position = UDim2.new(0., 0, 0.4, 0)
				lineframe.BorderSizePixel = 0
				lineframe.Size = UDim2.new(0, 75, 0, 1)
				lineframe.Font = Enum.Font.GothamSemibold
				lineframe.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				lineframe.TextSize = 13.000
				lineframe.Text = ""

				local  lineframe2 = Instance.new("TextLabel")

				lineframe2.Parent = tiframe
				lineframe2.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				lineframe2.BackgroundTransparency = 0
				lineframe2.AnchorPoint = Vector2.new(0.9, 0.5)
				lineframe2.Position = UDim2.new(1, 0, 0.4, 0)
				lineframe2.BorderSizePixel = 0
				lineframe2.Size = UDim2.new(0, 75, 0, 1)
				lineframe2.Font = Enum.Font.GothamSemibold
				lineframe2.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				lineframe2.TextSize = 11.000
				lineframe2.Text = ""

				local  lineframe3 = Instance.new("TextLabel")

				lineframe3.Parent = tiframe
				lineframe3.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				lineframe3.BackgroundTransparency = 1
				lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)
				lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
				lineframe3.BorderSizePixel = 0
				lineframe3.Size = UDim2.new(0, 130, 0, 20)
				lineframe3.Font = Enum.Font.Gotham
				lineframe3.Text = tostring(text)
				lineframe3.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				lineframe3.TextSize = 11.000
				lineframe3.TextWrapped = true
			end

			function main:Label(text)

				local labelfuc = {}
				local  Labelxd = Instance.new("TextLabel")

				Labelxd.Parent = ScolPage2
				Labelxd.BackgroundColor3 = Color3.fromRGB(255, 250 ,250)
				Labelxd.BackgroundTransparency = 1
				Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
				Labelxd.Position = UDim2.new(0.5, 0, 0.8, 0)
				Labelxd.BorderSizePixel = 0
				Labelxd.Size = UDim2.new(0, 30, 0, 13)
				Labelxd.Font = Enum.Font.Gotham
				Labelxd.Text = tostring(text)
				Labelxd.TextColor3 = Color3.fromRGB(255, 250 ,250)
				Labelxd.TextSize = 11.000
				Labelxd.TextXAlignment = Enum.TextXAlignment.Left

				function  labelfuc:Change(text2)
					Labelxd.Text = tostring(text2)
				end
				return  labelfuc
			end

			function main:Blank(count)
				if count == nil then
					count = 0.01
				end
				local BlankFrame = Instance.new("Frame")


				BlankFrame.Name = "Mainframenoti"
				BlankFrame.Parent = ScolPage2
				BlankFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
				BlankFrame.BackgroundTransparency = 1
				BlankFrame.BorderSizePixel = 0
				BlankFrame.ClipsDescendants = false
				BlankFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				BlankFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
				BlankFrame.Size = UDim2.new(0, 213, 0, count)
			end

			function main:Line()
				local LineFrame = Instance.new("Frame")

				LineFrame.Name = "LineFrame"
				LineFrame.Parent = ScolPage2
				LineFrame.BackgroundColor3 =  Color3.fromRGB(138 ,43 ,226)
				LineFrame.BorderSizePixel = 0
				LineFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
				LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				LineFrame.Size = UDim2.new(0, 374.5, 0, 1)
				LineFrame.BackgroundTransparency  = 0
				LineFrame.ClipsDescendants = true

				local LineFrame_BindConner = Instance.new("UICorner")

				LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
				LineFrame_BindConner.Name = ""
				LineFrame_BindConner.Parent = LineFrame
			end

			function main:Toggle(text,config,callback)
				local Toggle = Instance.new("Frame")

				Toggle.Name = "Toggle"
				Toggle.Parent = ScolPage2
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				Toggle.BackgroundTransparency = 1.000
				Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				Toggle.Size = UDim2.new(0, 213, 0, 35)

				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Name = "TextButton_Toggle"
				TextButton_Toggle.Parent = Toggle
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				TextButton_Toggle.BackgroundTransparency = 1.000
				TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				TextButton_Toggle.TextSize = 14.000

				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Name = "TextButton_2_Toggle"
				TextButton_2_Toggle.Parent = TextButton_Toggle
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 23, 0, 23)
				TextButton_2_Toggle.AutoButtonColor = false
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				TextButton_2_Toggle.TextSize = 14.000


				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 5)
				TextButton_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_2_Toggle_UIStroke = Instance.new("UIStroke")

				TextButton_2_Toggle_UIStroke.Thickness = 1
				TextButton_2_Toggle_UIStroke.Name = ""
				TextButton_2_Toggle_UIStroke.Parent = TextButton_2_Toggle
				TextButton_2_Toggle_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				TextButton_2_Toggle_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
				TextButton_2_Toggle_UIStroke.Color = Color3.fromRGB(138 ,43 ,226)
				TextButton_2_Toggle_UIStroke.Transparency = 0

				local farmtoglist2 = Instance.new("TextButton")

				farmtoglist2.Parent = TextButton_2_Toggle
				farmtoglist2.BackgroundColor3 = Color3.fromRGB(64,64,64)
				farmtoglist2.BorderColor3 = Color3.fromRGB(138 ,43 ,226)
				farmtoglist2.BorderSizePixel = 0
				farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
				farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
				farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
				farmtoglist2.Font = Enum.Font.SourceSans
				farmtoglist2.Text = " "
				farmtoglist2.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				farmtoglist2.TextSize = 14.000
				farmtoglist2.AutoButtonColor = false

				local listimage = Instance.new("ImageButton")

				listimage.Parent = farmtoglist2
				listimage.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
				listimage.BackgroundTransparency = 0
				listimage.AutoButtonColor = false
				listimage.AnchorPoint = Vector2.new(0.5, 0.5)
				listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
				listimage.BorderSizePixel = 0
				listimage.Size = UDim2.new(0, 0, 0, 0)
				listimage.ImageTransparency = 1

				local listimageUiconner2 = Instance.new("UICorner")

				listimageUiconner2.CornerRadius = UDim.new(0, 5)
				listimageUiconner2.Name = ""
				listimageUiconner2.Parent = listimage

				local TextLabel_Toggle = Instance.new("TextLabel")

				TextLabel_Toggle.Name = "TextLabel_Toggle"
				TextLabel_Toggle.Parent = Toggle
				TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(138 ,43 ,226)
				TextLabel_Toggle.BackgroundTransparency = 1.000
				TextLabel_Toggle.ClipsDescendants = true
				TextLabel_Toggle.Position = UDim2.new(0.607863724, 0, 0.5, 0)
				TextLabel_Toggle.Size = UDim2.new(0, 167, 0, 25)
				TextLabel_Toggle.Font = Enum.Font.Gotham
				TextLabel_Toggle.Text = text
				TextLabel_Toggle.TextColor3 = Color3.fromRGB(138 ,43 ,226)
				TextLabel_Toggle.TextSize = 11.000
				TextLabel_Toggle.TextWrapped = true
				TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

				TextButton_Toggle.MouseEnter:Connect(function()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(138 ,43 ,226)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextButton_Toggle.MouseLeave:Connect(function()
					TweenService:Create(
						TextLabel_Toggle,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(138 ,43 ,226)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				local check = {toogle = false ; loacker = true ; togfunction = {

				};}

				TextButton_Toggle.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					elseif  check.loacker ==  true then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				farmtoglist2.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					elseif  check.loacker ==  true then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				listimage.MouseButton1Click:Connect(function()
					if check.toogle == false and check.loacker == true  then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					elseif  check.loacker ==  true then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					end
					if  check.loacker == true  then
						check.toogle = not check.toogle
						callback(check.toogle)
					end
				end)

				if config == true then
					listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					wait(0.1)
					listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
					check.toogle = true
					callback(check.toogle)
				end
				local lockerframe = Instance.new("Frame")

				lockerframe.Name = "lockerframe"
				lockerframe.Parent = Toggle
				lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				lockerframe.BackgroundTransparency = 1
				lockerframe.BorderSizePixel = 0
				lockerframe.Size = UDim2.new(0, 500, 0, 35)
				lockerframe.Position = UDim2.new(0.9, 0, 0.5, 0)
				lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

				local LockerImageLabel = Instance.new("ImageLabel")
				LockerImageLabel.Parent = lockerframe
				LockerImageLabel.BackgroundTransparency = 1.000
				LockerImageLabel.BorderSizePixel = 0
				LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
				LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
				LockerImageLabel.Image = "http://www.roblox.com/asset/?id=3926305904"
				LockerImageLabel.ImageRectOffset = Vector2.new(404, 364)
				LockerImageLabel.ImageRectSize = Vector2.new(36, 36)
				LockerImageLabel.ImageColor3 = Color3.fromRGB(255,25,25)

				function check.togfunction:lock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 0.7}
					):Play()
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 25, 0, 25)}
					):Play()

					check.loacker  = false
				end
				function check.togfunction:unlock()
					TweenService:Create(
						lockerframe,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{BackgroundTransparency = 1}
					):Play()
					TweenService:Create(
						LockerImageLabel,
						TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
						{Size = UDim2.new(0, 0, 0, 0)}
					):Play()
					check.loacker  = true
				end
				return  check.togfunction
			end

			function main:Dropdown(text,option,callback)
				local FrameButton = Instance.new("Frame")

				--Properties:

				FrameButton.Name = "FrameButton"
				FrameButton.Parent = ScolPage2
				FrameButton.AnchorPoint = Vector2.new(0.5, 0.5)
				FrameButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				FrameButton.BackgroundTransparency = 1.000
				FrameButton.Position = UDim2.new(10, 0, 0.347239256, 0)
				FrameButton.Size = UDim2.new(0, 250, 0, 0)

				local DropFrame = Instance.new("Frame")
				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScolPage2
				DropFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				DropFrame.Position = UDim2.new(0.375307113, 0, 0.9, 0)
				DropFrame.Size = UDim2.new(0, 375, 0, 25)
				DropFrame.ClipsDescendants = true
				local ConnerDropFrame = Instance.new("UICorner")
				ConnerDropFrame.CornerRadius = UDim.new(0, 4)
				ConnerDropFrame.Name = "ConnerDropFrame"
				ConnerDropFrame.Parent = DropFrame
				local LabelFrameDrop = Instance.new("TextLabel")
				LabelFrameDrop.Name = "LabelFrameDrop"
				LabelFrameDrop.Parent = DropFrame
				LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelFrameDrop.BackgroundTransparency = 1.000
				LabelFrameDrop.Position = UDim2.new(0.01728395, 0, 0, 0)
				LabelFrameDrop.Size = UDim2.new(0, 368, 0, 25)
				LabelFrameDrop.Font = Enum.Font.GothamSemibold
				LabelFrameDrop.TextColor3 = Color3.fromRGB(136, 136, 138)
				LabelFrameDrop.TextSize = 11.000
				LabelFrameDrop.TextWrapped = true
				LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left
				LabelFrameDrop.Text = tostring(text).." :"

				local DropArbt_listimage = Instance.new("ImageLabel")
				DropArbt_listimage.Name = "DropArbt_listimage"
				DropArbt_listimage.Parent = LabelFrameDrop
				DropArbt_listimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropArbt_listimage.BackgroundTransparency = 1.000
				DropArbt_listimage.Position = UDim2.new(0.934673369, 0, 0.099999994, 0)
				DropArbt_listimage.Rotation = 90.000
				DropArbt_listimage.Size = UDim2.new(0, 20, 0, 20)
				DropArbt_listimage.Image = "rbxassetid://3926305904"
				DropArbt_listimage.ImageRectOffset = Vector2.new(724, 284)
				DropArbt_listimage.ImageRectSize = Vector2.new(33, 33)
				DropArbt_listimage.ImageTransparency = 0.500

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"
				ScolDown.Parent = LabelFrameDrop
				ScolDown.Active = true
				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScolDown.BackgroundTransparency = 1.000
				ScolDown.BorderSizePixel = 0
				ScolDown.Position = UDim2.new(-0.0175879393, 0, 0.899999976, 0)
				ScolDown.Size = UDim2.new(0, 375, 0, 97)
				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
				ScolDown.ScrollBarThickness = 2

				local UIListLayoutlist = Instance.new("UIListLayout")
				local UIPaddinglist = Instance.new("UIPadding")

				UIListLayoutlist.Name = "UIListLayoutlist"
				UIListLayoutlist.Parent = ScolDown
				UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutlist.Padding = UDim.new(0, 5)

				UIPaddinglist.Name = "UIPaddinglist"
				UIPaddinglist.Parent = ScolDown
				UIPaddinglist.PaddingTop = UDim.new(0, 5)

				local ButtonDrop = Instance.new("TextButton")

				ButtonDrop.Name = "ButtonDrop"
				ButtonDrop.Parent = DropFrame
				ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonDrop.BackgroundTransparency = 1.000
				ButtonDrop.ClipsDescendants = true
				ButtonDrop.Size = UDim2.new(0, 375, 0, 25)
				ButtonDrop.Font = Enum.Font.SourceSans
				ButtonDrop.Text = ""
				ButtonDrop.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonDrop.TextSize = 14.000

				local dog = false

				local FrameSize = 58
				local cout = 0
				for i , v in pairs(option) do
					cout =cout + 1
					if cout == 1 then
						FrameSize = 58
					elseif cout == 2 then
						FrameSize = 95
					elseif cout >= 3 then
						FrameSize = 115
					end

					local ListFrame = Instance.new("Frame")

					ListFrame.Name = "ListFrame"
					ListFrame.Parent = ScolDown
					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ListFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					ListFrame.BackgroundTransparency = 1.000
					ListFrame.BorderSizePixel = 0
					ListFrame.Position = UDim2.new(0.5, 0, 0.163043484, 0)
					ListFrame.Size = UDim2.new(0, 375, 0, 30)

					local TextLabel_TapDro2p = Instance.new("TextLabel")

					TextLabel_TapDro2p.Name = "TextLabel_TapDro2p"
					TextLabel_TapDro2p.Parent = ListFrame
					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_TapDro2p.BackgroundTransparency = 1.000
					TextLabel_TapDro2p.Position = UDim2.new(0.508641958, 0, 0.5, 0)
					TextLabel_TapDro2p.Size = UDim2.new(0, 368, 0, 30)
					TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(136, 136, 138)
					TextLabel_TapDro2p.TextSize = 11.000
					TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Left
					TextLabel_TapDro2p.Text = tostring(v)

					local ButtonDrop2 = Instance.new("TextButton")

					ButtonDrop2.Name = "ButtonDrop2"
					ButtonDrop2.Parent = ListFrame
					ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonDrop2.BackgroundTransparency = 1.000
					ButtonDrop2.Size = UDim2.new(0, 368, 0, 30)
					ButtonDrop2.Font = Enum.Font.SourceSans
					ButtonDrop2.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonDrop2.TextSize = 14.000
					ButtonDrop2.Text = ""

					local Line = Instance.new("Frame")

					Line.Name = "Line"
					Line.Parent = ButtonDrop2
					Line.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					Line.BorderSizePixel = 0
					Line.Position = UDim2.new(0, 0, 1, 0)
					Line.Size = UDim2.new(0, 375, 0, 1)

					ButtonDrop2.MouseButton1Click:Connect(function()
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 90}
						):Play()
						LabelFrameDrop.Text =  text.." : "..tostring(v)
						callback(v)
						dog = not dog
					end)
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end

				ButtonDrop.MouseButton1Click:Connect(function()
					if dog == false then
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
							{Rotation = 270}
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					else
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
							{Rotation = 90}
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					end
					dog = not dog
				end)
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				local dropfunc = {}

				function dropfunc:Clear()
					LabelFrameDrop.Text = tostring(text).." :"
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 375, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					dog = not dog
					for i, v in next, ScolDown:GetChildren() do
						if v:IsA("Frame") then
							v:Destroy()
						end
					end
				end
				function dropfunc:Add(t)
					local ListFrame = Instance.new("Frame")

					ListFrame.Name = "ListFrame"
					ListFrame.Parent = ScolDown
					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ListFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					ListFrame.BackgroundTransparency = 1.000
					ListFrame.BorderSizePixel = 0
					ListFrame.Position = UDim2.new(0.5, 0, 0.163043484, 0)
					ListFrame.Size = UDim2.new(0, 375, 0, 30)

					local TextLabel_TapDro2p = Instance.new("TextLabel")

					TextLabel_TapDro2p.Name = "TextLabel_TapDro2p"
					TextLabel_TapDro2p.Parent = ListFrame
					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_TapDro2p.BackgroundTransparency = 1.000
					TextLabel_TapDro2p.Position = UDim2.new(0.508641958, 0, 0.5, 0)
					TextLabel_TapDro2p.Size = UDim2.new(0, 368, 0, 30)
					TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(136, 136, 138)
					TextLabel_TapDro2p.TextSize = 11.000
					TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Left
					TextLabel_TapDro2p.Text = tostring(t)

					local ButtonDrop2 = Instance.new("TextButton")

					ButtonDrop2.Name = "ButtonDrop2"
					ButtonDrop2.Parent = ListFrame
					ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonDrop2.BackgroundTransparency = 1.000
					ButtonDrop2.Size = UDim2.new(0, 368, 0, 30)
					ButtonDrop2.Font = Enum.Font.SourceSans
					ButtonDrop2.TextColor3 = Color3.fromRGB(0, 0, 0)
					ButtonDrop2.TextSize = 14.000
					ButtonDrop2.Text = ""

					local Line = Instance.new("Frame")

					Line.Name = "Line"
					Line.Parent = ButtonDrop2
					Line.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					Line.BorderSizePixel = 0
					Line.Position = UDim2.new(0, 0, 1, 0)
					Line.Size = UDim2.new(0, 375, 0, 1)

					ButtonDrop2.MouseButton1Click:Connect(function()
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 25)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 90}
						):Play()
						LabelFrameDrop.Text =  text.." : "..tostring(t)
						callback(t)
						dog = not dog
					end)
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10)
				end
				return dropfunc
			end

			function main:Slider(text,floor,min,max,de,lol,callback)
				local SliderFrame = Instance.new("Frame")

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = ScolPage2
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
				SliderFrame.ClipsDescendants = true
				SliderFrame.Position = UDim2.new(0.5, 0, 0.457317084, 0)
				SliderFrame.Size = UDim2.new(0, 375, 0, 47)

				local SliderFrame_UICorner = Instance.new("UICorner")
				SliderFrame_UICorner.Name = "SliderFrame_UICorner"
				SliderFrame_UICorner.Parent = SliderFrame
				SliderFrame_UICorner.CornerRadius = UDim.new(0, 4)

				local SliderFrame_UIStroke = Instance.new("UIStroke")

				SliderFrame_UIStroke.Thickness = 1
				SliderFrame_UIStroke.Name = ""
				SliderFrame_UIStroke.Parent = SliderFrame
				SliderFrame_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				SliderFrame_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
				SliderFrame_UIStroke.Color = Color3.fromRGB(80, 245, 245)
				SliderFrame_UIStroke.Transparency = 0.7

				local LabelNameSlider = Instance.new("TextLabel")

				LabelNameSlider.Name = "LabelNameSlider"
				LabelNameSlider.Parent = SliderFrame
				LabelNameSlider.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSlider.BackgroundTransparency = 1.000
				LabelNameSlider.BorderSizePixel = 0
				LabelNameSlider.Position = UDim2.new(0.2, 0, 0.285106242, 0)
				LabelNameSlider.Size = UDim2.new(0, 114, 0, 20)
				LabelNameSlider.Font = Enum.Font.Gotham
				LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSlider.Text = tostring(text)
				LabelNameSlider.TextSize = 12.000
				LabelNameSlider.TextWrapped = true
				LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

				local ShowValueFrame = Instance.new("Frame")

				ShowValueFrame.Name = "ShowValueFrame"
				ShowValueFrame.Parent = SliderFrame
				ShowValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ShowValueFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				ShowValueFrame.BorderSizePixel = 0
				ShowValueFrame.Position = UDim2.new(0.85, 0, 0.285106391, 0)
				ShowValueFrame.Size = UDim2.new(0, 100, 0, 15)

				local ShowValueFrameUICorner = Instance.new("UICorner")
				ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
				ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
				ShowValueFrameUICorner.Parent = ShowValueFrame

				local ShowValueFrame_UIStroke = Instance.new("UIStroke")

				ShowValueFrame_UIStroke.Thickness = 1
				ShowValueFrame_UIStroke.Name = ""
				ShowValueFrame_UIStroke.Parent = ShowValueFrame
				ShowValueFrame_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				ShowValueFrame_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
				ShowValueFrame_UIStroke.Color = Color3.fromRGB(80, 245, 245)
				ShowValueFrame_UIStroke.Transparency = 0.7

				local CustomValue = Instance.new("TextBox")

				CustomValue.Name = "CustomValue"
				CustomValue.Parent = ShowValueFrame
				CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
				CustomValue.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				CustomValue.BackgroundTransparency = 1.000
				CustomValue.ClipsDescendants = true
				CustomValue.Position = UDim2.new(0.501112819, 0, 0.5, 0)
				CustomValue.Size = UDim2.new(0, 100, 0, 26)
				CustomValue.Font = Enum.Font.Gotham
				CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
				CustomValue.Text = ""
				CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				if floor == true then
					CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
				else
					CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
				end

				local ValueFrame = Instance.new("Frame")

				ValueFrame.Name = "ValueFrame"
				ValueFrame.Parent = SliderFrame
				ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				ValueFrame.BorderSizePixel = 0
				ValueFrame.Position = UDim2.new(0.499824077, 0, 0.800000012, 0)
				ValueFrame.Size = UDim2.new(0, 350, 0, 5)

				local ValueFrameUICorner = Instance.new("UICorner")
				ValueFrameUICorner.CornerRadius = UDim.new(0, 4)
				ValueFrameUICorner.Name = "ShowValueFrameUICorner"
				ValueFrameUICorner.Parent = ValueFrame

				local PartValue = Instance.new("Frame")

				PartValue.Name = "PartValue"
				PartValue.Parent = ValueFrame
				PartValue.Active = true
				PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
				PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
				PartValue.BackgroundTransparency = 1.000
				PartValue.Position = UDim2.new(0.498982757, 0, 0.300000012, 0)
				PartValue.Size = UDim2.new(0, 350, 0, 5)

				local MainValue = Instance.new("Frame")

				MainValue.Name = "MainValue"
				MainValue.Parent = PartValue
				MainValue.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
				MainValue.Position = UDim2.new(0.00101725257, 0, 0.200000003, 0)
				MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)

				local MainValueUICorner = Instance.new("UICorner")
				MainValueUICorner.CornerRadius = UDim.new(0, 4)
				MainValueUICorner.Name = "a"
				MainValueUICorner.Parent = MainValue

				local ConneValue = Instance.new("Frame")

				ConneValue.Name = "ConneValue"
				ConneValue.Parent = PartValue
				ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
				ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.6,0, 0)
				ConneValue.Size = UDim2.new(0, 10, 0, 10)

				local UICorner = Instance.new("UICorner")

				UICorner.CornerRadius = UDim.new(0, 300)
				UICorner.Parent = ConneValue

				SliderFrame.MouseEnter:Connect(function()
					TweenService:Create(
						SliderFrame_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						ShowValueFrame_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()

					SliderFrame.MouseLeave:Connect(function()
						TweenService:Create(
							SliderFrame_UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							ShowValueFrame_UIStroke,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)
					local function move(input)
						local pos =
							UDim2.new(
								math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
								0,
								0.6,
								0
							)
						local pos1 =
							UDim2.new(
								math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
								0,
								0,
								5
							)

						MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

						ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
						if floor == true then
							local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback(value)
						else
							local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
							CustomValue.Text = tostring(value)
							callback(value)
						end



					end
					local dragging = false
					ConneValue.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					ConneValue.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)
					SliderFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					SliderFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)


					ValueFrame.InputBegan:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = true

							end
						end
					)
					ValueFrame.InputEnded:Connect(
						function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								dragging = false

							end
						end
					)
					game:GetService("UserInputService").InputChanged:Connect(function(input)
						if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
							move(input)
						end
					end)

					CustomValue.FocusLost:Connect(function()
						if CustomValue.Text == "" then
							CustomValue.Text  = de
						end
						if  tonumber(CustomValue.Text) > max then
							CustomValue.Text  = max
						end
						MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
						ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
						if floor == true then
							CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
						else
							CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
						end
						pcall(callback, CustomValue.Text)
					end)
				end)
			end

			function main:Textbox(text,text2,callback)
				local TextFrame = Instance.new("Frame")

				TextFrame.Name = "TextFrame"
				TextFrame.Parent = ScolPage2
				TextFrame.Active = true
				TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrame.BackgroundTransparency = 1.000
				TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextFrame.Size = UDim2.new(0, 375, 0, 70)

				local LabelNameSliderxd = Instance.new("TextLabel")

				LabelNameSliderxd.Name = "LabelNameSliderxd"
				LabelNameSliderxd.Parent = TextFrame
				LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.BackgroundTransparency = 1.000
				LabelNameSliderxd.BorderSizePixel = 0
				LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.200000003, 0)
				LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
				LabelNameSliderxd.Font = Enum.Font.Gotham
				LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelNameSliderxd.TextSize = 12.000
				LabelNameSliderxd.Text = tostring(text)

				local ConerTextBox = Instance.new("UICorner")

				ConerTextBox.CornerRadius = UDim.new(0, 4)
				ConerTextBox.Name = "ConerTextBox"
				ConerTextBox.Parent = TextFrame

				local FrameBox = Instance.new("Frame")

				FrameBox.Name = "FrameBox"
				FrameBox.Parent = TextFrame
				FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
				FrameBox.BackgroundColor3 = Color3.fromRGB(10,10,10)
				FrameBox.BorderSizePixel = 0
				FrameBox.ClipsDescendants = true
				FrameBox.Position = UDim2.new(0.5, 0, 0.649999976, 0)
				FrameBox.Size = UDim2.new(0, 375, 0, 30)

				local ConerTextBox2 = Instance.new("UICorner")

				--Properties:

				ConerTextBox2.CornerRadius = UDim.new(0, 4)
				ConerTextBox2.Name = "ConerTextBox2"
				ConerTextBox2.Parent = FrameBox

				local TextBox2Stroke = Instance.new("UIStroke")

				TextBox2Stroke.Thickness = 1
				TextBox2Stroke.Name = ""
				TextBox2Stroke.Parent = FrameBox
				TextBox2Stroke.LineJoinMode = Enum.LineJoinMode.Round
				TextBox2Stroke.Color = Color3.fromRGB(80, 245, 245)
				TextBox2Stroke.Transparency = 0.7

				local TextFrame2 = Instance.new("TextBox")

				TextFrame2.Name = "TextFrame2"
				TextFrame2.Parent = FrameBox
				TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrame2.BackgroundTransparency = 1.000
				TextFrame2.BorderSizePixel = 0
				TextFrame2.ClipsDescendants = true
				TextFrame2.Position = UDim2.new(0.499413133, 0, 0.5, 0)
				TextFrame2.Size = UDim2.new(0, 375, 0, 35)
				TextFrame2.Font = Enum.Font.GothamSemibold
				TextFrame2.PlaceholderText = text2
				TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextFrame2.TextSize = 11.000

				TextFrame.MouseEnter:Connect(function()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelNameSliderxd,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextBox2Stroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextFrame.MouseLeave:Connect(function()
					TweenService:Create(
						FrameBox,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextBox2Stroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelNameSliderxd,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextFrame2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)

				TextFrame2.FocusLost:Connect(function ()
					if #TextFrame2.Text > 0 then
						pcall(callback,TextFrame2.Text)
					end
				end)
			end

			function main:Bind(text,bi,callback)
				local BindFrame = Instance.new("Frame")

				BindFrame.Name = "BindFrame"
				BindFrame.Parent = ScolPage2
				BindFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)
				BindFrame.BorderSizePixel = 0
				BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				BindFrame.Size = UDim2.new(0, 375, 0, 35)
				BindFrame.BackgroundTransparency  = 0
				BindFrame.ClipsDescendants = true

				local BindConner = Instance.new("UICorner")

				BindConner.CornerRadius = UDim.new(0, 4)
				BindConner.Name = ""
				BindConner.Parent = BindFrame

				local BindStroke = Instance.new("UIStroke")

				BindStroke.Thickness = 1
				BindStroke.Name = ""
				BindStroke.Parent = BindFrame
				BindStroke.LineJoinMode = Enum.LineJoinMode.Round
				BindStroke.Color = Color3.fromRGB(80, 245, 245)
				BindStroke.Transparency = 0.7

				local LabelBind = Instance.new("TextLabel")

				LabelBind.Parent = BindFrame
				LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind.BackgroundTransparency = 1
				LabelBind.BorderSizePixel = 0
				LabelBind.Position = UDim2.new(0.25, 0, 0.5, 0)
				LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind.Size = UDim2.new(0, 140, 0, 35)
				LabelBind.Font = Enum.Font.Gotham
				LabelBind.Text = tostring(text)
				LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind.TextSize = 11.000
				LabelBind.TextXAlignment = Enum.TextXAlignment.Left

				local key = bi.Name
				local LabelBind2 = Instance.new("TextButton")

				LabelBind2.Parent = BindFrame
				LabelBind2.Name = "LabelBind2"
				LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind2.Size = UDim2.new(0, 100, 0, 19)
				LabelBind2.Font = Enum.Font.Gotham
				LabelBind2.Text =  key
				LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind2.TextSize = 11.000
				LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind2.Position = UDim2.new(0.8, 0, 0.5, 0)
				LabelBind2.TextXAlignment = Enum.TextXAlignment.Right
				LabelBind2.BackgroundTransparency = 1
				LabelBind2.TextWrapped = true

				local LabelBind22 = Instance.new("TextButton")

				LabelBind22.Parent = BindFrame
				LabelBind22.Name = "LabelBind22"
				LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelBind22.Size = UDim2.new(0, 213, 0, 35)
				LabelBind22.Font = Enum.Font.GothamBold
				LabelBind22.Text =  ""
				LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelBind22.TextSize = 11.000
				LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
				LabelBind22.BackgroundTransparency = 1
				LabelBind22.TextWrapped = true

				BindFrame.MouseEnter:Connect(function()
					TweenService:Create(
						BindStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind22,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)
				BindFrame.MouseLeave:Connect(function()
					TweenService:Create(
						BindStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind22,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						LabelBind,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)

				LabelBind22.MouseButton1Click:Connect(function ()


					LabelBind2.Text = "..."
					local inputwait = game:GetService("UserInputService").InputBegan:wait()
					local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

					if
						fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
					then
						LabelBind2.Text =  fuckulop.Name
						key = fuckulop.Name
					end
				end)


				game:GetService("UserInputService").InputBegan:connect(function(current)
					local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

					if fuckulop2.Name ==  key then
						pcall(callback)

					end
				end)

			end

			function main:MultiDropdown(text,use,option,callback)

				local location = option.location or self.flags
				local flag = not use and option.flag or ""
				local callback = callback or function() end
				local list = option.list or {}
				local default = list.default or list[1].Name

				if not use then
					location[flag] = default
				end


				local DropFrame = Instance.new("Frame")

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = ScolPage2
				DropFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)-- Color3.fromRGB(255, 23, 46)
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				DropFrame.Size = UDim2.new(0, 375, 0, 30) -- UDim2.new(0, 213, 0, 35)
				DropFrame.BackgroundTransparency  = 0
				DropFrame.ClipsDescendants = true

				local ConnerDropFrame = Instance.new("UICorner")

				ConnerDropFrame.CornerRadius = UDim.new(0, 4)
				ConnerDropFrame.Name = ""
				ConnerDropFrame.Parent = DropFrame

				local DropFrameStroke = Instance.new("UIStroke")

				DropFrameStroke.Thickness = 1
				DropFrameStroke.Name = ""
				DropFrameStroke.Parent = DropFrame
				DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				DropFrameStroke.Color = Color3.fromRGB(80, 245, 245)
				DropFrameStroke.Transparency = 0.7





				local LabelFrameDrop = Instance.new("TextLabel")

				LabelFrameDrop.Parent = DropFrame
				LabelFrameDrop.Name = "LabelFrameDrop"
				LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
				LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
				LabelFrameDrop.Size =    UDim2.new(0, 375, 0, 30)
				LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
				LabelFrameDrop.Text = ""
				LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				LabelFrameDrop.TextSize = 14.000
				--   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelFrameDrop.BackgroundTransparency = 1
				LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


				local TextLabel_TapDrop = Instance.new("TextLabel")

				TextLabel_TapDrop.Parent = LabelFrameDrop
				TextLabel_TapDrop.Name = "TextLabel_TapDrop"
				TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
				TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
				TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
				TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
				TextLabel_TapDrop.Text = tostring(text)
				TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextLabel_TapDrop.TextSize = 14.000
				--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_TapDrop.BackgroundTransparency = 1
				TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


				local DropArbt_listimage = Instance.new("ImageButton")

				DropArbt_listimage.Parent = LabelFrameDrop
				DropArbt_listimage.BackgroundTransparency = 1.000
				DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
				DropArbt_listimage.Position = UDim2.new(0.95, 0, 0.5, 0)
				DropArbt_listimage.BorderSizePixel = 0
				DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
				DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
				DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

				local ScolDown = Instance.new("ScrollingFrame")

				ScolDown.Name = "ScolDown"
				ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
				ScolDown.Parent = LabelFrameDrop
				ScolDown.Active = true
				ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScolDown.BorderSizePixel = 0
				ScolDown.Size = UDim2.new(0, 375, 0, 115)
				ScolDown.ScrollBarThickness = 3
				ScolDown.ClipsDescendants = true
				ScolDown.BackgroundTransparency = 1
				ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

				local UIListLayoutlist = Instance.new("UIListLayout")
				local UIPaddinglist = Instance.new("UIPadding")

				UIListLayoutlist.Name = "UIListLayoutlist"
				UIListLayoutlist.Parent = ScolDown
				UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayoutlist.Padding = UDim.new(0, 5)

				UIPaddinglist.Name = "UIPaddinglist"
				UIPaddinglist.Parent = ScolDown
				UIPaddinglist.PaddingTop = UDim.new(0, 5)
				UIPaddinglist.PaddingLeft = UDim.new(0, 12)

				local ButtonDrop = Instance.new("TextButton")

				ButtonDrop.Parent = DropFrame
				ButtonDrop.Name = "ButtonDrop"
				ButtonDrop.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
				ButtonDrop.Size = UDim2.new(0, 375, 0, 30)
				ButtonDrop.Font = Enum.Font.SourceSansSemibold
				ButtonDrop.Text = ""
				ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
				ButtonDrop.TextSize = 13.000
				--   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
				ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
				ButtonDrop.BackgroundTransparency = 1
				ButtonDrop.TextWrapped = true
				ButtonDrop.AutoButtonColor = false
				ButtonDrop.ClipsDescendants = true

				local dog = false

				local FrameSize = 75
				local cout = 0
				for i , v in pairs(list) do
					cout =cout + 1
					if cout == 1 then
						FrameSize = 75
					elseif cout == 2 then
						FrameSize = 110
					elseif cout >= 3 then
						FrameSize = 150
					end

					local listtog = Instance.new("Frame")

					listtog.Name = "listtog"
					listtog.Parent = ScolDown
					listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
					listtog.BackgroundTransparency =1
					listtog.BorderSizePixel = 0
					listtog.ClipsDescendants = true
					listtog.AnchorPoint = Vector2.new(0.5, 0.5)
					listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
					listtog.Size = UDim2.new(0, 375, 0, 33)


					local listtextbutton = Instance.new("TextButton")

					listtextbutton.Parent = listtog
					listtextbutton.BackgroundTransparency =1
					listtextbutton.BackgroundColor3 = Color3.fromRGB(5,5,5)
					listtextbutton.BorderSizePixel = 0
					listtextbutton.Size =  UDim2.new(0, 375, 0, 33)
					listtextbutton.AutoButtonColor = false
					listtextbutton.Font = Enum.Font.SourceSans
					listtextbutton.Text = " "
					listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
					listtextbutton.TextSize = 14.000

					local farmtoglist = Instance.new("TextButton")

					farmtoglist.Parent = listtextbutton
					farmtoglist.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
					farmtoglist.BorderColor3 = Color3.fromRGB(255, 255, 255)
					farmtoglist.BorderSizePixel = 0
					farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
					farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
					farmtoglist.Size = UDim2.new(0, 23, 0, 23)
					farmtoglist.Font = Enum.Font.SourceSans
					farmtoglist.Text = " "
					farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
					farmtoglist.TextSize = 14.000
					farmtoglist.AutoButtonColor = false


					local farmtoglist2 = Instance.new("TextButton")

					farmtoglist2.Parent = farmtoglist
					farmtoglist2.BackgroundColor3 = Color3.fromRGB(10,10,10)
					farmtoglist2.BorderColor3 = Color3.fromRGB(80, 245, 245)
					farmtoglist2.BorderSizePixel = 0
					farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
					farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
					farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
					farmtoglist2.Font = Enum.Font.SourceSans
					farmtoglist2.Text = " "
					farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
					farmtoglist2.TextSize = 14.000
					farmtoglist2.AutoButtonColor = false


					local listimage = Instance.new("ImageButton")

					listimage.Parent = farmtoglist2
					listimage.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
					listimage.BackgroundTransparency = 0
					listimage.AnchorPoint = Vector2.new(0.5, 0.5)
					listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
					listimage.BorderSizePixel = 0
					listimage.Size = UDim2.new(0, 0, 0, 0)
					listimage.ImageTransparency = 1

					local listimageUiconner2 = Instance.new("UICorner")

					listimageUiconner2.CornerRadius = UDim.new(0, 5)
					listimageUiconner2.Name = ""
					listimageUiconner2.Parent = listimage


					local textlist = Instance.new("TextLabel")


					textlist.Parent = listtextbutton
					textlist.Name = "textlist"
					textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textlist.BackgroundTransparency = 1.000
					textlist.AnchorPoint = Vector2.new(0.5, 0.5)
					textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
					textlist.BorderSizePixel = 0
					textlist.Size = UDim2.new(0, 91, 0, 25)
					textlist.Font = Enum.Font.Gotham
					textlist.Text = tostring(v.Name)
					textlist.TextColor3 = Color3.fromRGB(255,255,255)
					textlist.TextSize = 12.000



					local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

					TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
					TextButton_Pageframe_Uiconner2.Name = ""
					TextButton_Pageframe_Uiconner2.Parent = farmtoglist

					local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

					TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
					TextButton_Pageframe_Uiconner22.Name = ""
					TextButton_Pageframe_Uiconner22.Parent = farmtoglist2

					listtextbutton.MouseEnter:Connect(function()
						TweenService:Create(
							textlist,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(80, 245, 245)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					listtextbutton.MouseLeave:Connect(function()
						TweenService:Create(
							textlist,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)

					listtextbutton.MouseButton1Click:Connect(function()
						if not  location[v.flag] then
							listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
							wait(0.1)
							listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						else
							listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
							wait(0.1)
							listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						end
						location[v.flag] = not location[v.flag]
						callback(location[v.flag])
					end
					)

					if  location[v.flag] then
						listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
						wait(0.1)
						listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

						callback(location[v.flag])

					end

					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				end


				DropFrame.MouseEnter:Connect(function()
					TweenService:Create(
						DropFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_TapDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)

				DropFrame.MouseLeave:Connect(function()
					TweenService:Create(
						DropFrameStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_TapDrop,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						DropArbt_listimage,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				)


				ButtonDrop.MouseButton1Click:Connect(function()
					if dog == false then
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 180}
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					else
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							DropArbt_listimage,
							TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
					end
					dog = not dog
				end)
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

			end

			function main:Color(text,preset,callback)
				local Pixker = Instance.new("Frame")

				Pixker.Name = "Pixker"
				Pixker.Parent = ScolPage2
				Pixker.BackgroundColor3 = Color3.fromRGB(10,10,10)
				Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
				Pixker.Size = UDim2.new(0, 375, 0, 33)
				Pixker.BackgroundTransparency = 0
				Pixker.BorderSizePixel = 0
				Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
				Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
				Pixker.ClipsDescendants = true


				local BoxColorCorner2 = Instance.new("UICorner")

				BoxColorCorner2.CornerRadius = UDim.new(0, 4)
				BoxColorCorner2.Name = "BoxColorCorner"
				BoxColorCorner2.Parent = Pixker

				local FrameStroke = Instance.new("UIStroke")

				FrameStroke.Thickness = 1
				FrameStroke.Name = ""
				FrameStroke.Parent = Pixker
				FrameStroke.LineJoinMode = Enum.LineJoinMode.Round
				FrameStroke.Color = Color3.fromRGB(80, 245, 245)
				FrameStroke.Transparency = 0.7


				local TextFrameColor = Instance.new("TextLabel")

				TextFrameColor.Parent = Pixker
				TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextFrameColor.BorderSizePixel = 0
				TextFrameColor.Size = UDim2.new(0, 375, 0, 34)
				TextFrameColor.Font = Enum.Font.SourceSans
				TextFrameColor.Text = "  "
				TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextFrameColor.TextSize = 14.000
				TextFrameColor.BackgroundTransparency = 1
				TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

				local TextReal = Instance.new("TextLabel")

				TextReal.Parent = TextFrameColor
				TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextReal.BorderSizePixel = 0
				TextReal.Size = UDim2.new(0, 140, 0, 34)
				TextReal.Font = Enum.Font.Gotham
				TextReal.Text = text
				TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
				TextReal.TextSize = 11.000
				TextReal.BackgroundTransparency = 1
				TextReal.Position = UDim2.new(0.07, 0, 0., 0)
				TextReal.TextXAlignment = Enum.TextXAlignment.Left

				local BoxColor = Instance.new("Frame")

				BoxColor.Name = "BoxColor"
				BoxColor.Parent = TextFrameColor
				BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BoxColor.Position = UDim2.new(0.9, 0, 0.5, 0)
				BoxColor.Size = UDim2.new(0, 35, 0, 19)
				BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

				local BoxColorCorner = Instance.new("UICorner")

				BoxColorCorner.CornerRadius = UDim.new(0, 4)
				BoxColorCorner.Name = "BoxColorCorner"
				BoxColorCorner.Parent = BoxColor

				local TextButton_Dropdown = Instance.new("TextButton")


				TextButton_Dropdown.Parent = TextFrameColor
				TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				TextButton_Dropdown.BorderSizePixel = 0
				TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
				TextButton_Dropdown.Size = UDim2.new(0, 375, 0, 33)
				TextButton_Dropdown.Font = Enum.Font.SourceSans
				TextButton_Dropdown.Text = "  "
				TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Dropdown.TextSize = 14.000
				TextButton_Dropdown.AutoButtonColor = false
				--TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
				TextButton_Dropdown.BackgroundTransparency = 1



				Pixker.MouseEnter:Connect(function()
					TweenService:Create(
						FrameStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255,255, 255)}
					):Play()

				end)
				Pixker.MouseLeave:Connect(function()
					TweenService:Create(
						FrameStroke,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.7}
					):Play()
					TweenService:Create(
						TextReal,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(155,155, 155)}
					):Play()
				end)
				-- Rainbow Toggle


				local TextButton_2_Toggle = Instance.new("TextButton")

				TextButton_2_Toggle.Parent = TextFrameColor
				TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(15,15,15)
				--        TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(255, 23, 46)
				TextButton_2_Toggle.BorderSizePixel = 0
				TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_2_Toggle.Position = UDim2.new(0.1, 0, 1.87, 0)
				TextButton_2_Toggle.Size = UDim2.new(0, 35, 0, 17)
				TextButton_2_Toggle.Font = Enum.Font.SourceSans
				TextButton_2_Toggle.Text = " "
				TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_2_Toggle.TextSize = 12.000
				TextButton_2_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner.Name = ""
				TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

				local TextButton_PageframeStroke = Instance.new("UIStroke")

				TextButton_PageframeStroke.Thickness = 1
				TextButton_PageframeStroke.Name = ""
				TextButton_PageframeStroke.Parent = TextButton_2_Toggle
				TextButton_PageframeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				TextButton_PageframeStroke.LineJoinMode = Enum.LineJoinMode.Round
				TextButton_PageframeStroke.Color = Color3.fromRGB(0, 0, 0)
				TextButton_PageframeStroke.Transparency = 0

				local TextButton_3_Toggle = Instance.new("TextButton")

				TextButton_3_Toggle.Parent = TextButton_2_Toggle
				TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
				--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 23, 46)
				TextButton_3_Toggle.BorderSizePixel = 0
				TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle.Position = UDim2.new(0.214285731, 0, 0.5, 0)
				TextButton_3_Toggle.Size = UDim2.new(0, 13, 0, 13)
				TextButton_3_Toggle.Font = Enum.Font.SourceSans
				TextButton_3_Toggle.Text = " "
				TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_3_Toggle.TextSize = 12.000
				TextButton_3_Toggle.AutoButtonColor = false

				local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner2.Name = ""
				TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

				local TextButton_4_Toggle = Instance.new("TextButton")

				TextButton_4_Toggle.Parent = TextButton_3_Toggle
				TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
				--        TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(255, 23, 46)
				TextButton_4_Toggle.BorderSizePixel = 0
				TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
				TextButton_4_Toggle.Font = Enum.Font.SourceSans
				TextButton_4_Toggle.Text = " "
				TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_4_Toggle.TextSize = 12.000
				TextButton_4_Toggle.AutoButtonColor = false
				TextButton_4_Toggle.BackgroundTransparency = 1
				TextButton_4_Toggle.Visible = true

				local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

				TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
				TextButton_Pageframe_Uiconner4.Name = ""
				TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


				local TextButton_Toggle = Instance.new("TextButton")

				TextButton_Toggle.Parent = ValueFrame
				TextButton_Toggle.BackgroundTransparency =1
				TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_Toggle.BorderSizePixel = 0
				TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
				TextButton_Toggle.AutoButtonColor = false
				TextButton_Toggle.Font = Enum.Font.SourceSans
				TextButton_Toggle.Text = " "
				TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton_Toggle.TextSize = 12.000
				TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

				local TextButton_3_Toggle2 = Instance.new("TextLabel")

				TextButton_3_Toggle2.Parent = TextButton_2_Toggle
				TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
				TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(80, 245, 245)
				TextButton_3_Toggle2.BorderSizePixel = 0
				TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton_3_Toggle2.Position = UDim2.new(2.2, 0, 0.5, 0)
				TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
				TextButton_3_Toggle2.Font = Enum.Font.Gotham
				TextButton_3_Toggle2.Text = "Rainbow"
				TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton_3_Toggle2.TextSize = 11.000
				TextButton_3_Toggle2.BackgroundTransparency = 1

				local OMF = Instance.new("TextButton")

				OMF.Parent = TextButton_2_Toggle
				OMF.BackgroundTransparency = 1
				OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OMF.BorderSizePixel = 0
				OMF.Size = UDim2.new(0, 100, 0, 20)
				OMF.AutoButtonColor = false
				OMF.Font = Enum.Font.SourceSans
				OMF.Text = " "
				OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
				OMF.TextSize = 12.000
				OMF.AnchorPoint = Vector2.new(0.5, 0.5)
				OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

				local Color =  Instance.new("ImageLabel")

				Color.Name = "Color"
				Color.Parent = TextFrameColor
				Color.BackgroundColor3 = Color3.fromRGB(80, 245, 245)
				Color.Position = UDim2.new(0.03,0,4,0)
				Color.Size = UDim2.new(0, 350, 0, 40)
				Color.ZIndex = 0
				Color.BorderSizePixel = 0
				Color.Image = "rbxassetid://4155801252"

				local ColorFucj = Instance.new("UICorner")

				ColorFucj.CornerRadius = UDim.new(0, 4)
				ColorFucj.Name = ""
				ColorFucj.Parent = Color

				local ColorSelection =  Instance.new("ImageLabel")

				ColorSelection.Name = "ColorSelection"
				ColorSelection.Parent = Color
				ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorSelection.BackgroundTransparency = 1.000
				ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
				ColorSelection.Size = UDim2.new(0, 18, 0, 18)
				ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
				ColorSelection.ScaleType = Enum.ScaleType.Fit
				ColorSelection.Visible = true

				local Hue =  Instance.new("ImageLabel")

				Hue.Name = "Hue2"
				Hue.Parent = TextFrameColor
				Hue.Position = UDim2.new(0.03,0,3,0)
				Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Hue.Size = UDim2.new(0, 350, 0, 25)
				Hue.ZIndex = 0
				Hue.BorderSizePixel = 0

				local ColorFucj2 = Instance.new("UICorner")

				ColorFucj2.CornerRadius = UDim.new(0, 4)
				ColorFucj2.Name = ""
				ColorFucj2.Parent = Hue

				local HueGradient = Instance.new("UIGradient")

				HueGradient.Color = ColorSequence.new {
					ColorSequenceKeypoint.new(0.00, Color3.fromRGB(80, 245, 245)),
					ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
					ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
					ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
					ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
					ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
					ColorSequenceKeypoint.new(1.00, Color3.fromRGB(80, 245, 245))
				}
				HueGradient.Rotation = 0
				HueGradient.Name = "HueGradient"
				HueGradient.Parent = Hue

				local HueSelection =  Instance.new("ImageLabel")

				HueSelection.Name = "HueSelection"
				HueSelection.Parent = Hue
				HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				HueSelection.BackgroundTransparency = 1.000
				HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
				HueSelection.Size = UDim2.new(0, 18, 0, 18)
				HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
				HueSelection.ScaleType = Enum.ScaleType.Fit
				HueSelection.Visible = true


				local BTN_XD = Instance.new("TextButton")

				BTN_XD.Parent = TextFrameColor
				BTN_XD.BackgroundColor3 = Color3.fromRGB(10,10,10)
				BTN_XD.BorderColor3 = Color3.fromRGB(10,10,10)
				BTN_XD.BorderSizePixel = 0
				BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
				BTN_XD.Position = UDim2.new(0.43, 0, 1.9, 0)
				BTN_XD.Size = UDim2.new(0, 50, 0, 25)
				BTN_XD.Font = Enum.Font.GothamSemibold
				BTN_XD.Text = "Confirm"
				BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
				BTN_XD.TextSize = 11.000
				BTN_XD.AutoButtonColor = false

				local BTN_XD_COnner = Instance.new("UICorner")

				BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
				BTN_XD_COnner.Name = ""
				BTN_XD_COnner.Parent = BTN_XD



				local BTN_XDStroke = Instance.new("UIStroke")

				BTN_XDStroke.Thickness = 1
				BTN_XDStroke.Name = ""
				BTN_XDStroke.Parent = BTN_XD
				BTN_XDStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				BTN_XDStroke.LineJoinMode = Enum.LineJoinMode.Round
				BTN_XDStroke.Color = Color3.fromRGB(80, 245, 245)
				BTN_XDStroke.Transparency = 0.7


				local UwU = false


				OMF.MouseButton1Click:Connect(function()
					if       UwU == false  then
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(80, 245, 245)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 13, 0, 13), UDim2.new(0.8, 0, 0.5, 0), "Out", "Quad", 0.1, true)
					else
						TweenService:Create(
							TextButton_3_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TweenService:Create(
							TextButton_2_Toggle,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 =  Color3.fromRGB(15,15,15)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 13, 0, 13), UDim2.new(0.214285731, 0, 0.5, 0), "Out", "Quad", 0.1, true)
					end
					UwU = not UwU
				end)

				OMF.MouseButton1Down:Connect(
					function()
						RainbowColorPicker = not RainbowColorPicker

						if ColorInput then
							ColorInput:Disconnect()
						end

						if HueInput then
							HueInput:Disconnect()
						end

						if RainbowColorPicker then


							OldToggleColor = BoxColor.BackgroundColor3
							OldColor = Color.BackgroundColor3
							OldColorSelectionPosition = ColorSelection.Position
							OldHueSelectionPosition = HueSelection.Position

							while RainbowColorPicker do
								BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
								Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

								ColorSelection.Position = UDim2.new(1, 0, 0, 0)
								HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

								pcall(callback, BoxColor.BackgroundColor3)
								wait()
							end
						elseif not RainbowColorPicker then

							BoxColor.BackgroundColor3 = OldToggleColor
							Color.BackgroundColor3 = OldColor

							ColorSelection.Position = OldColorSelectionPosition
							HueSelection.Position = OldHueSelectionPosition

							pcall(callback, BoxColor.BackgroundColor3)
						end
					end
				)
				TextButton_3_Toggle.MouseButton1Down:Connect(
					function()
						RainbowColorPicker = not RainbowColorPicker

						if ColorInput then
							ColorInput:Disconnect()
						end

						if HueInput then
							HueInput:Disconnect()
						end

						if RainbowColorPicker then


							OldToggleColor = BoxColor.BackgroundColor3
							OldColor = Color.BackgroundColor3
							OldColorSelectionPosition = ColorSelection.Position
							OldHueSelectionPosition = HueSelection.Position

							while RainbowColorPicker do
								BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
								Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

								ColorSelection.Position = UDim2.new(1, 0, 0, 0)
								HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

								pcall(callback, BoxColor.BackgroundColor3)
								wait()
							end
						elseif not RainbowColorPicker then

							BoxColor.BackgroundColor3 = OldToggleColor
							Color.BackgroundColor3 = OldColor

							ColorSelection.Position = OldColorSelectionPosition
							HueSelection.Position = OldHueSelectionPosition

							pcall(callback, BoxColor.BackgroundColor3)
						end
					end
				)


				local function UpdateColorPicker(nope)
					BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
					Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

					pcall(callback, BoxColor.BackgroundColor3)
				end
				ColorH =
					1 -
					(math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
						Hue.AbsoluteSize.Y)
				ColorS =
					(math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
						Color.AbsoluteSize.X)
				ColorV =
					1 -
					(math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
						Color.AbsoluteSize.Y)

				BoxColor.BackgroundColor3 = preset
				Color.BackgroundColor3 = preset
				pcall(callback, BoxColor.BackgroundColor3)

				local RainbowColorPicker = false

				Color.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if ColorInput then
								ColorInput:Disconnect()
							end

							ColorInput =
								RunService.RenderStepped:Connect(
									function()
									local ColorX =
										(math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
											Color.AbsoluteSize.X)
									local ColorY =
										(math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
											Color.AbsoluteSize.Y)

									ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
									ColorS = ColorX
									ColorV = 1 - ColorY

									UpdateColorPicker(true)
								end
								)
						end
					end
				)


				Color.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if ColorInput then
								ColorInput:Disconnect()
							end
						end
					end
				)

				Hue.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if HueInput then
								HueInput:Disconnect()
							end

							HueInput =
								RunService.RenderStepped:Connect(
									function()
									local HueY =
										(math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
											Hue.AbsoluteSize.Y)
									local HueX =
										(math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
											Hue.AbsoluteSize.X)

									HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
									ColorH = 1 - HueY

									UpdateColorPicker(true)
								end
								)
						end
					end
				)

				Hue.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if HueInput then
								HueInput:Disconnect()
							end
						end
					end
				)
				local sk = false
				TextButton_Dropdown.MouseButton1Click:Connect(function()
					if sk == false then
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 180)}
						):Play()
					else
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 33)}
						):Play()
					end
					sk = not sk
				end
				)
				BTN_XD.MouseButton1Click:Connect(
					function()
						TweenService:Create(
							Pixker,
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 375, 0, 33)}
						):Play()
						sk = not sk
					end)
			end
			return main
		end
		return uipage
	end
	return uitap
end
local window = ui:CreateWindow("Edog Hub🐹 | " ..os.date("%d ")..os.date("%A ")..os.date("%B ")..os.date("%Y"),0,10123314587,Enum.KeyCode.RightControl)
local tap1 = window:CreateTap("Main😿","")
local tap2 = window:CreateTap("AutoFarm🤓","")
local tap3 = window:CreateTap("Status📊","")
local tap4 = window:CreateTap("Teleport🌞","")
local tap5 = window:CreateTap("Raids🧛🏻","")
local tap6 = window:CreateTap("Buy Item⚔️","")
local tap7 = window:CreateTap("Misc🕳️","")
local tap8 = window:CreateTap("Ruok👽","")
local tap9 = window:CreateTap("Setting⚙️","")


local page1 = tap1:Createpage()
local page2 = tap2:Createpage()
local page3 = tap3:Createpage()
local page4 = tap4:Createpage()
local page5 = tap5:Createpage()
local page6 = tap6:Createpage()
local page7 = tap7:Createpage()
local page8 = tap8:Createpage()
local page9 = tap9:Createpage()
function loadcheck()
	if isfile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json") then
		else
			writefile("Rezy hub Premium_"..game.Players.LocalPlayer.Name..".json",game:GetService("HttpService"):JSONEncode(_G.Save))
		return
	end
end
pcall(function()
	_G.Save = {
		["Autofarm Lv. Mode2 (Beta!)"] = false,
		["AutoNewWorld"] = false,
		["Auto Superhuman "] = false,
		["Auto Death Step"] = false,
		["Auto Dragon Talon"] = false,
		["Auto Electric Clow"] = false,
		["Fast Attack "] = false,
		["UltraFast Attack "] = false,
		["SuperFast Attack "] = false,
		["AutoFastFarm"] = false,
		["AutoEliteHunter"] = false,
		["AutoSetSpawn"] = false,
		["Autofarm Lv. Mode1"] = false,
		["AutoEquip"] = false,
		["AutoEquipMelee"] = false,
		["Autothird"] = false,
		["Auto Bone & Money"] = false,
		["Auto EliteHunter"] = false,
		["Legendary Sword"] = false,
		["Yama,BuddySword,Cavender Hop"] = false,
		["Legendary Sword hop"] = false,
		["Auto Buddy Sword"] = false,
		["AutoFastFarm"] = false,
		["Auto Canvender"] = false,
		["Auto Yama"] = false,
		["Auto Boss"] = false,
		["Melee"] = false,
		["DemonFruit"] = false,
		["Sword"] = false,
		["Gun"] = false,
		["Defense"] = false,
		["Dodge No Cooldown (Bug)"] = false,
		["Infinits Energy"] = false,
		["Auto Click"] = false,
		["HyperFast Attack"] = false,
		["Whilte Screen Press P"] = false,
		["Bring DevilFruit"] = false,
		["Auto EatFruit"] = false,
		["Anit AFK"] = false,
		["Aimbot Skill"] = false,
		["Spectate Player"] = false,
		["Aimbot Gun"] = false,
		["Auto Awakener"] = false,
		["Auto Raid"] = false,
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
page2:Title("Auto Farm")
page5:Title("Auto Raids")
Wapon = {}
Wapon2 = nil
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	  if not table.find(Wapon, v.name) then
		 if v:IsA("Tool") then
			table.insert(Wapon ,v.Name)
		 end
	 end 
end 
page2:Toggle("Autofarm Lv. Mode1 ",_G.Save["Autofarm Lv. Mode1"],function(vu)
	_G.AutoFarmMode1 = vu
	_G.Save["Autofarm Lv. Mode1"] = vu
	SaveSetting()
end)

page2:Toggle("Autofarm Lv. Mode2 (Beta!)",_G.Save["Autofarm Lv. Mode2 (Beta!)"],function(vu)
    _G.AutoFarm = vu
    _G.FastAttack = vu
	_G.Save["Autofarm Lv. Mode2 (Beta!)"] = vu
	SaveSetting()
end)
page2:Toggle("AutoNewWorld",_G.Save["AutoNewWorld"],function(value)
	_G.AutoNewWorld = Value
end)
page2:Toggle("Autothird",_G.Save["Autothird"],function(value)
	_G.Autothird = Value
end)
page2:Toggle("AutoFastFarm (Beta!).",_G.Save["AutoFastFarm"],function(vu)
	_G.FastFarm = vu
	_G.FastAttack = vu
end)

	page2:Button("OpenHaki", function(Value)
		_G.OpenHaki = Value
		local args = {
			[1] = "Buso"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

	end)

	local Weaponlist = {}
Weapon = nil
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	if not table.find(Wapon, v.name) then
	   if v:IsA("Tool") then
		  table.insert(Wapon ,v.Name)
	   end
   end 
end 
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end
	page2:Toggle("Auto Equip",_G.Save["AutoEquip"],function(bool)
        _G.Equip = bool
    end)
    page2:Toggle("Auto Equip Melee",_G.Save["AutoEquipMelee"],function(vu)
        _G.AutoMeleekaitun = vu
    end)
	local SelectWeapona = page2:Dropdown("Select Weapon",Wapon,function(Value)
        SelectToolWeapon = Value
        SelectToolWeaponOld = Value
        Wapon2 = Value
    end)
    page2:Button("Refresh Weapon", function()
        SelectWeapona:Clear()
        Wapon = {}
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
  spawn(function()
        while wait() do
            if _G.Equip then
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Wapon2))
            end
        end
    end)
    spawn(function()
		while true do wait(2)
            if _G.AutoMeleekaitun then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if v.ClassName == "Tool" then
                            if v.ToolTip == "Melee" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    local ToolSe = tostring(v.Name)
                                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                                end
                            end
                        end
                    end
                end
            end
        end)

	page2:Title("Fast Attack")
	page2:Toggle("Fast Attack",_G.Save["Fast Attack"],function(value)
	_G.FastAttack = value
	end)
	page2:Toggle("SuperFast Attack",_G.Save["SuperFast Attack"],function(value)
		_G.SuperFastAttack = value
		end)
		page2:Toggle("UltraFast Attack",_G.Save["UltraFast Attack"],function(value)
			_G.UntraFastAttack = value
			end)
			page2:Toggle("HyperFast Attack",_G.Save["HyperFast Attack"],function(vu)
				getgenv().HyFastAttack = vu
				end)
				getgenv().HyFastAttack = vu
				local CombatFrameworkR = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if getgenv().HyFastAttack  then
			pcall(function()
				CombatFrameworkR.activeController.hitboxMagnitude = 55
				CombatFrameworkR.activeController.timeToNextAttack = 0
				CombatFrameworkR.activeController.attacking = false
				CombatFrameworkR.activeController.increment = 3
				CombatFrameworkR.activeController.blocking = false
				CombatFrameworkR.activeController.timeToNextBlock = 0
				game.Players.LocalPlayer.Character.Humanoid.Sit = false	
			end)
		end
	end)
end)

spawn(function()
	while wait() do
		if _G.Autothird then
			local MyLevel = game.Players.localPlayer.Data.Level.Value
			if MyLevel >= 1500 and NewWorld and _G.Autothird then
				if Auto_Farm then
					MainAutoFarmFunction:Stop()
				end
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
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(SelectToolWeapon)
												Usefastattack = true
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												Click()
											end 
										until not _G.Autothird or not v.Parent or v.Humanoid.Health <= 0 
										wait(.5)
										asmrqq = 2
										repeat wait()
											local args = {
												[1] = "TravelZou" -- OLD WORLD to NEW WORLD
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										until asmrqq == 1
										Usefastattack = false
									end
								end
							else -- SlashHit : rbxassetid://2453605589
								local string_1 = "ZQuestProgress";
								local string_2 = "Check";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2);
								wait()
								local string_1 = "ZQuestProgress";
								local string_2 = "Begin";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2);
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
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(SelectToolWeapon)
												Usefastattack = true
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												Click()
											end 
										until not _G.Autothird or not v.Parent or v.Humanoid.Health <= 0 
										Usefastattack = false
									end
								end
							else -- SlashHit : rbxassetid://2453605589
								TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
								if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if TweenDonSwanthireworld then
										TweenDonSwanthireworld:Stop()
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
									end
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
											local string_1 = "LoadFruit";
											local string_2 = DevilFruitStore;
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2);
										else
											local string_1 = "TalkTrevor";
											local string_2 = "1";
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2);
											local string_1 = "TalkTrevor";
											local string_2 = "2";
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2);
											local string_1 = "TalkTrevor";
											local string_2 = "3";
											local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
											Target:InvokeServer(string_1, string_2);
										end
									end
								end
							end

							local string_1 = "TalkTrevor";
							local string_2 = "1";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1, string_2);
							local string_1 = "TalkTrevor";
							local string_2 = "2";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1, string_2);
							local string_1 = "TalkTrevor";
							local string_2 = "3";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1, string_2);
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
													Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(SelectToolWeapon)
													Usefastattack = true
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
													Click()
												end 
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Autothird == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
											AutoBartiloBring = false
											Usefastattack = false
										end)
									end
								end
							else
								Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
								if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
								end
							end
						else
							Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
							if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then
									Bartilotween:Stop()
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
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
											Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(SelectToolWeapon)
											Usefastattack = true
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
											Click()
										end 
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Autothird == false
									Usefastattack = false
								end
							end
						else
							Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
							if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then
									Bartilotween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
							end
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
						if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
							Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
						elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if Bartilotween then
								Bartilotween:Stop()
							end
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
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
	game:GetService('RunService').Heartbeat:connect(function() 
		pcall(function()
			if getgenv().HyFastAttack  then
				if CombatFrameworkR.activeController:attack() then
					if	CombatFrameworkR.activeController:attack()then
						if	CombatFrameworkR.activeController:attack()then
							if	CombatFrameworkR.activeController:attack()then
								if	CombatFrameworkR.activeController:attack()then
					CombatFrameworkR.activeController:attack()
				end
			end
		end
	end
			end
			end
		end)
	end)
end)
			page2:Title("")
			page2:Button("Redeem All Code",function()
				function UseCode(Text)
					game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
				end
				UseCode("SUB2GAMERROBOT_EXP1")
				UseCode("StrawHatMaine")
				UseCode("Sub2OfficialNoobie")
				UseCode("FUDD10")
				UseCode("BIGNEWS")
				UseCode("THEGREATACE")
				UseCode("SUB2NOOBMASTER123")
				UseCode("Sub2Daigrock")
				UseCode("Axiore")
				UseCode("TantaiGaming")
				UseCode("STRAWHATMAINE")
				UseCode("Sub2Fer999")
				UseCode("Enyu_is_Pro")
				UseCode("Magicbus")
				UseCode("Magicbus")
				UseCode("Starcodeheo")
			end)
			page2:Toggle("Auto Superhuman",_G.Save["Auto Superhuman"],function(vu)
				_G.Superhuman = vu
				_G.SuperhumanFull = vu
				if vu then
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
				-- Auto Death Step
				page2:Toggle("Auto Death Step",_G.Save["Auto Death Step"],function(vu)
		_G.DeathStep = vu
		if vu then
			local args = {
				[1] = "BuyBlackLeg"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end)
	-- Auto Dargon Talon
	page2:Toggle("Auto Dragon Talon",_G.Save["Auto Dragon Talon"],function(vu)
		_G.DargonTalon = vu
		if vu then
			local args = {
				[1] = "BlackbeardReward",
				[2] = "DragonClaw",
				[3] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end)
	-- Auto Electric clow
	page2:Toggle("Auto Electric Clow",_G.Save["Auto Electric Clow"],function(vu)
		_G.Electricclow = vu
		if vu then
			local args = {
				[1] = "BuyElectro"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end)
	spawn(function()
		while wait(.25) do
			if _G.Superhuman or _G.SuperhumanFull and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					SelectToolWeapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
					SelectToolWeapon = "Black Leg"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
					SelectToolWeapon = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
					SelectToolWeapon = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
					SelectToolWeapon = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 100  then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if _G.SuperhumanFull and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							RaidsSelected = "ice"
							AutoRaids = true
							RaidsArua = true
						end
					else
						AutoRaids = false
						RaidsArua = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if _G.SuperhumanFull and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							RaidsSelected = "ice"
							AutoRaids = true
							RaidsArua = true
						end
					else
						AutoRaids = false
						RaidsArua = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end
			if _G.DeathStep and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
					local args = {
						[1] = "BuyDeathStep"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					SelectToolWeapon = "Death Step"
				end  
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
					local args = {
						[1] = "BuyDeathStep"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					
					SelectToolWeapon = "Death Step"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
					SelectToolWeapon = "Black Leg"
				end 
			end
			if _G.DargonTalon and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					SelectToolWeapon = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					SelectToolWeapon = "Dragon Claw"
				end
	
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					SelectToolWeapon = "Dragon Claw"
					if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
						local string_1 = "Bones";
						local string_2 = "Buy";
						local number_1 = 1;
						local number_2 = 1;
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, string_2, number_1, number_2);
	
						local string_1 = "BuyDragonTalon";
						local bool_1 = true;
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, bool_1);
					elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
					else
						local string_1 = "BuyDragonTalon";
						local bool_1 = true;
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, bool_1);
						local string_1 = "BuyDragonTalon";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end 
				end
			end
			if _G.Electricclow and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
					SelectToolWeapon = "Electro"
				end  
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
					SelectToolWeapon = "Electro"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
					local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
					if v175 == 4 then
						local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
						if v176 == nil then
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
						end
					else
						local string_1 = "BuyElectricClaw";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
					local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
					if v175 == 4 then
						local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
						if v176 == nil then
							game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
						end
					else
						local string_1 = "BuyElectricClaw";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end
				end
			end
		end
	end)
	
			
	   local function refreshWeapon2()
	
		  table.clear(Wapon)
	
		  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			 if not table.find(Wapon, v.name) then
				if v:IsA("Tool") then
				   table.insert(Wapon ,v.Name)
				end
			 end
		  end
	
		  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			 if not table.find(Wapon, v.name) then
				if v:IsA("Tool") then
				   table.insert(Wapon ,v.Name)
				end
			 end
		  end
	
	   end
	   spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
		 pcall(function()
			 if _G.UntraFastAttack then
				 local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
				 local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
				 Camera:Stop()
				 Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
				 Combat.activeController.timeToNextAttack = -300
				 Combat.activeController.hitboxMagnitude = 120
				 Combat.activeController.increment = 3
			 end
		 end)
	 end) 
	 end)
	 local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	 local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
	 Camera:Stop()
	 coroutine.wrap(function()
		 game:GetService("RunService").Stepped:Connect(function()
			 if getupvalues(CombatFramework)[2]['activeController'].timeToNextAttack then
				 getupvalues(CombatFramework)[2]['activeController'].timeToNextAttack = 0
				 getupvalues(CombatFramework)[2]['activeController'].hitboxMagnitude = 25
				 getupvalues(CombatFramework)[2]['activeController']:attack()
			 end
		 end)
	 end)()
	   spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
		 pcall(function()
			 if _G.SuperFastAttack then
				 local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
				 local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
				 Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
				 Combat.activeController.timeToNextAttack = -30
				 Combat.activeController.hitboxMagnitude = 120
				 Combat.activeController.increment = 3
			 end
		 end)
	 end) 
	 end)
	spawn(function()
	   game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if _G.FastAttack then
				local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
				local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
				Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
				Combat.activeController.timeToNextAttack = -10
				Combat.activeController.hitboxMagnitude = 120
				Combat.activeController.increment = 3
			end
		end)
	end) 
	end)
	 
	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
		 pcall(function()
			 if _G.FastAttack then
				 game:GetService'VirtualUser':CaptureController()
				 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			 end
		 end)
	 end) 
	 end)

	 
	 
	 
	 
	 --AutoFarmLevel
	 local placeId = game.PlaceId
	 if placeId == 2753915549 then
		 OldWorld = true
	 elseif placeId == 4442272183 then
		 NewWorld =  true
	 elseif placeId == 7449423635 then
		 ThirdWorld =  true
	 else
		 game:GetService("Players").LocalPlayer:Kick("มึงรันแมพอื่นทำควยไร!")
	 end
	 
	 function topos(Para1)
		 Distance = (Para1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		 pcall(function() 
			 tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/225, Enum.EasingStyle.Linear),{CFrame = Para1})
			 tween:Play()
			 _G.Clip = true
			 if _G.StopTween == true then
				 tween:Cancel()
				 _G.Clip = true
			 end
			 if Distance <= 285 then
				 tween:Cancel()
				 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Para1
			 end
		 end)
	 end
	 
	 spawn(function()
		 game:GetService("RunService").Heartbeat:Connect(function()
			 if _G.AutoFarm then
				 if not game:GetService("Workspace"):FindFirstChild("PartNino") then
					 local LOL = Instance.new("Part")
					 LOL.Name = "PartNino"
					 LOL.Parent = game.Workspace
					 LOL.Anchored = true
					 LOL.Transparency = 1
					 LOL.Size = Vector3.new(30,0.5,30)
				 elseif game:GetService("Workspace"):FindFirstChild("PartNino") then
					 game.Workspace["PartNino"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
				 end
			 else
				 if game:GetService("Workspace"):FindFirstChild("PartNino") then
					 game:GetService("Workspace"):FindFirstChild("PartNino"):Destroy()
				 end
			 end
		 end)
	 end)
	 
	 spawn(function()
		 pcall(function()
			 game:GetService("RunService").Stepped:Connect(function()
				 if _G.AutoFarm then
					 for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						 if v:IsA("BasePart") then
							 v.CanCollide = false    
						 end
					 end
				 end
			 end)
		 end)
	 end)
	 
	 function Check() 
		 MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		 if OldWorld then
			 if MyLevel == 1 or MyLevel <= 9 then
				 Mon = "Bandit [Lv. 5]"
				 LevelQuest = 1
				 NameQuest = "BanditQuest1"
				 NameMon = "Bandit"
				 CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
			 elseif MyLevel == 10 or MyLevel <= 14 then
				 Mon = "Monkey [Lv. 14]"
				 LevelQuest = 1
				 NameQuest = "JungleQuest"
				 NameMon = "Monkey"
				 CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			 elseif MyLevel == 15 or MyLevel <= 29 then
				 Mon = "Gorilla [Lv. 20]"
				 LevelQuest = 2
				 NameQuest = "JungleQuest"
				 NameMon = "Gorilla"
				 CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			 elseif MyLevel == 30 or MyLevel <= 39 then
				 Mon = "Pirate [Lv. 35]"
				 LevelQuest = 1
				 NameQuest = "BuggyQuest1"
				 NameMon = "Pirate"
				 CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			 elseif MyLevel == 40 or MyLevel <= 59 then
				 Mon = "Brute [Lv. 45]"
				 LevelQuest = 2
				 NameQuest = "BuggyQuest1"
				 NameMon = "Brute"
				 CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			 elseif MyLevel == 60 or MyLevel <= 74 then
				 Mon = "Desert Bandit [Lv. 60]"
				 LevelQuest = 1
				 NameQuest = "DesertQuest"
				 NameMon = "Desert Bandit"
				 CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
			 elseif MyLevel == 75 or MyLevel <= 89 then
				 Mon = "Desert Officer [Lv. 70]"
				 LevelQuest = 2
				 NameQuest = "DesertQuest"
				 NameMon = "Desert Officer"
				 CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
			 elseif MyLevel == 90 or MyLevel <= 99 then
				 Mon = "Snow Bandit [Lv. 90]"
				 LevelQuest = 1
				 NameQuest = "SnowQuest"
				 NameMon = "Snow Bandit"
				 CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			 elseif MyLevel == 100 or MyLevel <= 119 then
				 Mon = "Snowman [Lv. 100]"
				 LevelQuest = 2
				 NameQuest = "SnowQuest"
				 NameMon = "Snowman"
				 CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			 elseif MyLevel == 120 or MyLevel <= 149 then
				 Mon = "Chief Petty Officer [Lv. 120]"
				 LevelQuest = 1
				 NameQuest = "MarineQuest2"
				 NameMon = "Chief Petty Officer"
				 CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			 elseif MyLevel == 150 or MyLevel <= 174 then
				 Mon = "Sky Bandit [Lv. 150]"
				 LevelQuest = 1
				 NameQuest = "SkyQuest"
				 NameMon = "Sky Bandit"
				 CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			 elseif MyLevel == 175 or MyLevel <= 189 then
				 Mon = "Dark Master [Lv. 175]"
				 LevelQuest = 2
				 NameQuest = "SkyQuest"
				 NameMon = "Dark Master"
				 CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-5227.513671875, 429.31536865234375, -2279.270263671875)
			 elseif MyLevel == 190 or MyLevel <= 209 then
				 Mon = "Prisoner [Lv. 190]"
				 LevelQuest = 1
				 NameQuest = "PrisonerQuest"
				 NameMon = "Prisoner"
				 CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			 elseif MyLevel == 210 or MyLevel <= 249 then
				 Mon = "Dangerous Prisoner [Lv. 210]"
				 LevelQuest = 2
				 NameQuest = "PrisonerQuest"
				 NameMon = "Dangerous Prisoner"
				 CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			 elseif MyLevel == 250 or MyLevel <= 274 then
				 Mon = "Toga Warrior [Lv. 250]"
				 LevelQuest = 1
				 NameQuest = "ColosseumQuest"
				 NameMon = "Toga Warrior"
				 CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
			 elseif MyLevel == 275 or MyLevel <= 299 then
				 Mon = "Gladiator [Lv. 275]"
				 LevelQuest = 2
				 NameQuest = "ColosseumQuest"
				 NameMon = "Gladiator"
				 CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
			 elseif MyLevel == 300 or MyLevel <= 324 then
				 Mon = "Military Soldier [Lv. 300]"
				 LevelQuest = 1
				 NameQuest = "MagmaQuest"
				 NameMon = "Military Soldier"
				 CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			 elseif MyLevel == 325 or MyLevel <= 374 then
				 Mon = "Military Spy [Lv. 325]"
				 LevelQuest = 2
				 NameQuest = "MagmaQuest"
				 NameMon = "Military Spy"
				 CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			 elseif MyLevel == 375 or MyLevel <= 399 then
				 Mon = "Fishman Warrior [Lv. 375]"
				 LevelQuest = 1
				 NameQuest = "FishmanQuest"
				 NameMon = "Fishman Warrior"
				 CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				 end
			 elseif MyLevel == 400 or MyLevel <= 449 then
				 Mon = "Fishman Commando [Lv. 400]"
				 LevelQuest = 2
				 NameQuest = "FishmanQuest"
				 NameMon = "Fishman Commando"
				 CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				 end
			 elseif MyLevel == 450 or MyLevel <= 474 then
				 Mon = "God's Guard [Lv. 450]"
				 LevelQuest = 1
				 NameQuest = "SkyExp1Quest"
				 NameMon = "God's Guard"
				 CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
			 elseif MyLevel == 475 or MyLevel <= 524 then
				 Mon = "Shanda [Lv. 475]"
				 LevelQuest = 2
				 NameQuest = "SkyExp1Quest"
				 NameMon = "Shanda"
				 CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
			 elseif MyLevel == 525 or MyLevel <= 549 then
				 Mon = "Royal Squad [Lv. 525]"
				 LevelQuest = 1
				 NameQuest = "SkyExp2Quest"
				 NameMon = "Royal Squad"
				 CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			 elseif MyLevel == 550 or MyLevel <= 624 then
				 Mon = "Royal Soldier [Lv. 550]"
				 LevelQuest = 2
				 NameQuest = "SkyExp2Quest"
				 NameMon = "Royal Soldier"
				 CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			 elseif MyLevel == 625 or MyLevel <= 649 then
				 Mon = "Galley Pirate [Lv. 625]"
				 LevelQuest = 1
				 NameQuest = "FountainQuest"
				 NameMon = "Galley Pirate"
				 CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
			 elseif MyLevel >= 650 then
				 Mon = "Galley Captain [Lv. 650]"
				 LevelQuest = 2
				 NameQuest = "FountainQuest"
				 NameMon = "Galley Captain"
				 CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
			 end
		 elseif NewWorld then
			 if MyLevel == 700 or MyLevel <= 724 then
				 Mon = "Raider [Lv. 700]"
				 LevelQuest = 1
				 NameQuest = "Area1Quest"
				 NameMon = "Raider"
				 CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
			 elseif MyLevel == 725 or MyLevel <= 774 then
				 Mon = "Mercenary [Lv. 725]"
				 LevelQuest = 2
				 NameQuest = "Area1Quest"
				 NameMon = "Mercenary"
				 CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
			 elseif MyLevel == 775 or MyLevel <= 799 then
				 Mon = "Swan Pirate [Lv. 775]"
				 LevelQuest = 1
				 NameQuest = "Area2Quest"
				 NameMon = "Swan Pirate"
				 CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
			 elseif MyLevel == 800 or MyLevel <= 874 then
				 Mon = "Factory Staff [Lv. 800]"
				 NameQuest = "Area2Quest"
				 LevelQuest = 2
				 NameMon = "Factory Staff"
				 CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			 elseif MyLevel == 875 or MyLevel <= 899 then
				 Mon = "Marine Lieutenant [Lv. 875]"
				 LevelQuest = 1
				 NameQuest = "MarineQuest3"
				 NameMon = "Marine Lieutenant"
				 CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			 elseif MyLevel == 900 or MyLevel <= 949 then
				 Mon = "Marine Captain [Lv. 900]"
				 LevelQuest = 2
				 NameQuest = "MarineQuest3"
				 NameMon = "Marine Captain"
				 CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			 elseif MyLevel == 950 or MyLevel <= 974 then
				 Mon = "Zombie [Lv. 950]"
				 LevelQuest = 1
				 NameQuest = "ZombieQuest"
				 NameMon = "Zombie"
				 CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
			 elseif MyLevel == 975 or MyLevel <= 999 then
				 Mon = "Vampire [Lv. 975]"
				 LevelQuest = 2
				 NameQuest = "ZombieQuest"
				 NameMon = "Vampire"
				 CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
			 elseif MyLevel == 1000 or MyLevel <= 1049 then
				 Mon = "Snow Trooper [Lv. 1000]"
				 LevelQuest = 1
				 NameQuest = "SnowMountainQuest"
				 NameMon = "Snow Trooper"
				 CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			 elseif MyLevel == 1050 or MyLevel <= 1099 then
				 Mon = "Winter Warrior [Lv. 1050]"
				 LevelQuest = 2
				 NameQuest = "SnowMountainQuest"
				 NameMon = "Winter Warrior"
				 CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			 elseif MyLevel == 1100 or MyLevel <= 1124 then
				 Mon = "Lab Subordinate [Lv. 1100]"
				 LevelQuest = 1
				 NameQuest = "IceSideQuest"
				 NameMon = "Lab Subordinate"
				 CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
			 elseif MyLevel == 1125 or MyLevel <= 1174 then
				 Mon = "Horned Warrior [Lv. 1125]"
				 LevelQuest = 2
				 NameQuest = "IceSideQuest"
				 NameMon = "Horned Warrior"
				 CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
			 elseif MyLevel == 1175 or MyLevel <= 1199 then
				 Mon = "Magma Ninja [Lv. 1175]"
				 LevelQuest = 1
				 NameQuest = "FireSideQuest"
				 NameMon = "Magma Ninja"
				 CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			 elseif MyLevel == 1200 or MyLevel <= 1249 then
				 Mon = "Lava Pirate [Lv. 1200]"
				 LevelQuest = 2
				 NameQuest = "FireSideQuest"
				 NameMon = "Lava Pirate"
				 CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			 elseif MyLevel == 1250 or MyLevel <= 1274 then
				 Mon = "Ship Deckhand [Lv. 1250]"
				 LevelQuest = 1
				 NameQuest = "ShipQuest1"
				 NameMon = "Ship Deckhand"
				 CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				 end
			 elseif MyLevel == 1275 or MyLevel <= 1299 then
				 Mon = "Ship Engineer [Lv. 1275]"
				 LevelQuest = 2
				 NameQuest = "ShipQuest1"
				 NameMon = "Ship Engineer"
				 CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				 end             
			 elseif MyLevel == 1300 or MyLevel <= 1324 then
				 Mon = "Ship Steward [Lv. 1300]"
				 LevelQuest = 1
				 NameQuest = "ShipQuest2"
				 NameMon = "Ship Steward"
				 CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				 end
			 elseif MyLevel == 1325 or MyLevel <= 1349 then
				 Mon = "Ship Officer [Lv. 1325]"
				 LevelQuest = 2
				 NameQuest = "ShipQuest2"
				 NameMon = "Ship Officer"
				 CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				 end
			 elseif MyLevel == 1350 or MyLevel <= 1374 then
				 Mon = "Arctic Warrior [Lv. 1350]"
				 LevelQuest = 1
				 NameQuest = "FrostQuest"
				 NameMon = "Arctic Warrior"
				 CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				 if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
				 end
			 elseif MyLevel == 1375 or MyLevel <= 1424 then
				 Mon = "Snow Lurker [Lv. 1375]"
				 LevelQuest = 2
				 NameQuest = "FrostQuest"
				 NameMon = "Snow Lurker"
				 CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
			 elseif MyLevel == 1425 or MyLevel <= 1449 then
				 Mon = "Sea Soldier [Lv. 1425]"
				 LevelQuest = 1
				 NameQuest = "ForgottenQuest"
				 NameMon = "Sea Soldier"
				 CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
			 elseif MyLevel >= 1450 then
				 Mon = "Water Fighter [Lv. 1450]"
				 LevelQuest = 2
				 NameQuest = "ForgottenQuest"
				 NameMon = "Water Fighter"
				 CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
			  
			  end
		   elseif ThirdWorld then
			 if MyLevel == 1500 or MyLevel <= 1524 then
				Mon = "Pirate Millionaire [Lv. 1500]"
				NameQ = "PiratePortQuest"
				NumberQ = 1
				NameMon = "Pirate Millionaire"
				POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				
			 elseif MyLevel == 1525 or MyLevel <= 1574 then
				Mon = "Pistol Billionaire [Lv. 1525]"
				NameQ = "PiratePortQuest"
				LevelQuest = 2
				NameMon = "Pistol Billionaire"
				POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				
			 elseif MyLevel == 1575 or MyLevel <= 1599 then
				Mon = "Dragon Crew Warrior [Lv. 1575]"
				NameQ = "AmazonQuest"
				NumberQ = 1
				NameMon = "Dragon Crew Warrior"
				POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				
			 elseif MyLevel == 1600 or MyLevel <= 1624 then
				Mon = "Dragon Crew Archer [Lv. 1600]"
				NameQ = "AmazonQuest"
				NumberQ = 2
				NameMon = "Dragon Crew Archer"
				POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				
			 elseif MyLevel == 1625 or MyLevel <= 1649 then
				Mon = "Female Islander [Lv. 1625]"
				NameQ = "AmazonQuest2"
				NumberQ = 1
				NameMon = "Female Islander"
				POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				
			 elseif MyLevel == 1650 or MyLevel <= 1699 then
				Mon = "Giant Islander [Lv. 1650]"
				NameQ = "AmazonQuest2"
				NumberQ = 2
				NameMon = "Giant Islander"
				POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				
			 elseif MyLevel == 1700 or MyLevel <= 1724 then
				Mon = "Marine Commodore [Lv. 1700]"
				NameQ = "MarineTreeIsland"
				NumberQ = 1
				NameMon = "Marine Commodore"
				POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				
			 elseif MyLevel == 1725 or MyLevel <= 1774 then
				Mon = "Marine Rear Admiral [Lv. 1725]"
				NameQ = "MarineTreeIsland"
				NumberQ = 2
				NameMon = "Marine Rear Admiral"
				POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				
			 elseif MyLevel == 1775 or MyLevel <= 1799 then
				Mon = "Fishman Raider [Lv. 1775]"
				NameQ = "DeepForestIsland3"
				NumberQ = 1
				NameMon = "Fishman Raider"
				POSQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				
			 elseif MyLevel == 1800 or MyLevel <= 1824 then
				Mon = "Fishman Captain [Lv. 1800]"
				NameQ = "DeepForestIsland3"
				NumberQ = 2
				NameMon = "Fishman Captain"
				POSQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				
			 elseif MyLevel == 1825 or MyLevel <= 1849 then
				Mon = "Forest Pirate [Lv. 1825]"
				NameQ = "DeepForestIsland"
				NumberQ = 1
				NameMon = "Forest Pirate"
				POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				
			 elseif MyLevel == 1850 or MyLevel <= 1899 then
				Mon = "Mythological Pirate [Lv. 1850]"
				NameQ = "DeepForestIsland"
				NumberQ = 2
				NameMon = "Mythological Pirate"
				POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				
			 elseif MyLevel == 1900 or MyLevel <= 1924 then
				Mon = "Jungle Pirate [Lv. 1900]"
				NameQ = "DeepForestIsland2"
				NumberQ = 1
				NameMon = "Jungle Pirate"
				POSQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				
			 elseif MyLevel == 1925 or MyLevel <= 1974 then
				Mon = "Musketeer Pirate [Lv. 1925]"
				NameQ = "DeepForestIsland2"
				NumberQ = 2
				NameMon = "Musketeer Pirate"
				POSQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				
			   elseif MyLevel == 1975 or MyLevel <= 1999 then
				Mon = "Reborn Skeleton [Lv. 1975]"
				NameQ = "HauntedQuest1"
				NumberQ = 1
				NameMon = "Reborn Skeleton"
				POSQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				
			   elseif MyLevel == 2000 or MyLevel <= 2024 then
				Mon = "Living Zombie [Lv. 2000]"
				NameQ = "HauntedQuest1"
				NumberQ = 2
				NameMon = "Living Zombie"
				POSQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				
			 elseif MyLevel == 2025 or MyLevel <= 2049 then
				Mon = "Demonic Soul [Lv. 2025]"
				NameQ = "HauntedQuest2"
				NumberQ = 1
				NameMon = "Demonic Soul"
				POSQ = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
				
			 elseif MyLevel == 2050 or MyLevel <= 2074 then
				Mon = "Posessed Mummy [Lv. 2050]" 
				NameQ = "HauntedQuest2"
				NumberQ = 2
				NameMon = "Posessed Mummy"
				POSQ = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
				
			 elseif MyLevel == 2075 or MyLevel <= 2099 then
				Mon = "Peanut Scout [Lv. 2075]" 
				NameQ = "NutsIslandQuest"
				NumberQ = 1
				NameMon = "Peanut Scout"
				POSQ = CFrame.new(-2103.05786, 38.2287407, -10191.8506, 0.741642892, -1.49368617e-09, 0.670794845, 3.05409564e-09, 1, -1.14992271e-09, -0.670794845, 2.90150326e-09, 0.741642892)
				
			 elseif MyLevel == 2100 or MyLevel <= 2124 then
				Mon = "Peanut President [Lv. 2100]" 
				NameQ = "NutsIslandQuest"
				NumberQ = 2
				NameMon = "Peanut President"
				POSQ = CFrame.new(-2103.05786, 38.2287407, -10191.8506, 0.741642892, -1.49368617e-09, 0.670794845, 3.05409564e-09, 1, -1.14992271e-09, -0.670794845, 2.90150326e-09, 0.741642892)
				
			 elseif MyLevel == 2125 or MyLevel <= 2149  then
				Mon = "Ice Cream Chef [Lv. 2125]" 
				NameQ = "IceCreamIslandQuest"
				NumberQ = 1
				NameMon = "Ice Cream Chef"
				POSQ = CFrame.new(-821.283081, 65.9448776, -10965.6074, 0.785351455, -3.35560451e-08, -0.619050145, -5.61092506e-09, 1, -6.13239379e-08, 0.619050145, 5.1634288e-08, 0.785351455)
				
			 elseif MyLevel == 2150 or MyLevel <= 2199 then
				Mon = "Ice Cream Commander [Lv. 2150]"
				NameQ = "IceCreamIslandQuest"
				NumberQ = 2
				NameMon = "Ice Cream Commander"
				POSQ = CFrame.new(-821.283081, 65.9448776, -10965.6074, 0.785351455, -3.35560451e-08, -0.619050145, -5.61092506e-09, 1, -6.13239379e-08, 0.619050145, 5.1634288e-08, 0.785351455)
				
			 elseif MyLevel == 1684 or MyLevel <= 2224 then
				   Mon = "Cookie Crafter [Lv.2200]"
				   NameQ = "CakeQuest1"
				   NumberQ = 1
				   NamrMon = "Cookie Crafter"
				   POSQ = CFrame.new(-2019.956787109375, 37.82402420043945, -12023.904296875)
				   
			 elseif MyLevel == 2225 or MyLevel <= 2249 then
				   Mon = "Cake Guard [Lv.2225]"
				   NameQ = "CakeQuest1"
				   NumberQ = 2
				   NamrMon = "Cake Guard"
				   POSQ = CFrame.new(-2019.956787109375, 37.82402420043945, -12023.904296875)
							  
			 elseif MyLevel == 2250 or MyLevel <= 2274 then
				   Mon = "Baking Staff [Lv.2250]"
				   NameQ = "CakeQuest2"
				   NumberQ = 1
				   NamrMon = "Baking Staff"
				   POSQ = CFrame.new(-1926.592529296875, 37.82393264770508, -12846.8037109375)            
			 elseif MyLevel >= 2275 then
				   Mon = "Head Baker [Lv.2275]"
				   NameQ = "CakeQuest2"
				   NumberQ = 2
				   NameMon = "Head Baker"
				   POSQ = CFrame.new(-1926.592529296875, 37.82393264770508, -12846.8037109375)
			   end
		   end
	   end
	 
	 function Buso()
		 if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
		 end
	 end
	 
	 spawn(function()
		 while wait() do
			 if _G.AutoFarm then
				 pcall(function()
					 if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						 MagnetLv = false
						 Check()
						 repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 or not _G.AutoFarm
						 if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
							 wait(1.1)
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
							 wait(0.5)
						 end
					 elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						 Check()
						 if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									 if v.Name == Mon then
										 if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											 repeat task.wait()
												 Buso()
												 PosMon = v.HumanoidRootPart.CFrame
												 topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
												 v.HumanoidRootPart.CanCollide = false
												 v.Head.CanCollide = false
												 MagnetLv = true
												 game:GetService'VirtualUser':CaptureController()
												 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											 until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										 else
											 MagnetLv = false
											 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
										 end
									 end
								 end
							 end
						 else
							 MagnetLv = false
							 if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
								 topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,30,1))
					   else
								 topos(PosMon)
							 end
						 end
					 end
				 end)
			 end
		 end
	 end)
	 
	 spawn(function()
		 while task.wait() do
			 pcall(function()
				 Check()
				 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					 if _G.AutoFarm and MagnetLv and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Head Baker [Lv. 2275]" or Mon == "Baking Staff [Lv. 2250]" or Mon == "Cake Guard [Lv. 2225]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
						 v.HumanoidRootPart.CFrame = PosMon
						 v.Humanoid:ChangeState(14)
						 v.HumanoidRootPart.CanCollide = false
						 v.Head.CanCollide = false
						 if v.Humanoid:FindFirstChild("Animator") then
							 v.Humanoid.Animator:Destroy()
						 end
						 sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					 elseif _G.AutoFarm and MagnetLv and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
						 v.HumanoidRootPart.CFrame = PosMon
						 v.Humanoid:ChangeState(14)
						 v.HumanoidRootPart.CanCollide = false
						 v.Head.CanCollide = false
						 if v.Humanoid:FindFirstChild("Animator") then
							 v.Humanoid.Animator:Destroy()
						 end
						 sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					 end
				 end
			 end)
		 end
	 end)
	 
	 local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
	 Script = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	 CombatFrame = debug.getupvalues(Script)[2]
	 spawn(function()
		 game:GetService("RunService").RenderStepped:Connect(function()
			 if _G.FastAttack then do wait(0000000000000000000000000000000000000000)
				 if typeof(CombatFrame) == "table" then
					 pcall(function()
						 CameraShaker:Stop()
						 CombatFrame.activeController.attacking = false
						 CombatFrame.activeController.blocking = false
						 CombatFrame.activeController.timeToNextAttack = 0
						 CombatFrame.activeController.hitboxMagnitude = 120
						 CombatFrame.activeController.increment = 3                    
						 CombatFrame.activeController.timeToNextBlock = 0
						 CombatFrame.activeController:attack()
					 end)
				 end
			 end
			 end
	 end)
	 end)
	 
	 
	 function TP(P1)
		 Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		 if Distance < 250 then
			 Speed = 600
		 elseif Distance < 500 then
			 Speed = 400
		 elseif Distance < 1000 then
			 Speed = 350
		 elseif Distance >= 1000 then
			 Speed = 200
		 end
		 game:GetService("TweenService"):Create(
			 game.Players.LocalPlayer.Character.HumanoidRootPart,
			 TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			 {CFrame = P1}
		 ):Play()
	 end
	 
	 function TP2(P1)
		 Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		 if Distance < 1000 then
			 Speed = 400
		 elseif Distance >= 1000 then
			 Speed = 250
		 end
		 game:GetService("TweenService"):Create(
			 game.Players.LocalPlayer.Character.HumanoidRootPart,
			 TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			 {CFrame = P1}
		 ):Play()
		 Clip = true
		 wait(Distance/Speed)
		 Clip = true
	 end
	spawn(function()
	   game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
			if _G.FastAttack then
				game:GetService'VirtualUser':CaptureController()
				game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			end
		end)
	end) 
	end)
	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
		 pcall(function()
			 if _G.SuperFastAttack then
				 game:GetService'VirtualUser':CaptureController()
				 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			 end
		 end)
	 end) 
	 end)
	 spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
		 pcall(function()
			 if _G.UntraFastAttack then
				game:GetService'VirtualUser':CaptureController()
				 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
			 end
		 end)
	 end) 
	 end)
	
	function tweenCF(CF, speed,p) 

		local bodyvelocityenabled = true
		
		local Plr = game.Players.LocalPlayer
		local Mouse = Plr:GetMouse()
		local Chr = Plr.Character
		pcall(function()
		local ts = game:GetService("TweenService")
		local char = game.Players.LocalPlayer.Character
		if p then
		hm = p
		else
		hm = char.HumanoidRootPart
		end
		local VEE = Vector3.new(CF.X,CF.Y,CF.Z)
		local dist = (hm.Position - VEE).magnitude
		local tweenspeed = dist/tonumber(speed)
		local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
		local tp = {CFrame = CF}
		
		
		ts:Create(hm, ti, tp):Play()
		if bodyvelocityenabled == true then
		local bv = Instance.new("BodyVelocity")
		bv.Parent = hm
		bv.MaxForce = Vector3.new(100000,100000,100000)
		bv.Velocity = Vector3.new(0,0,0)
		wait(tonumber(tweenspeed))
		bv:Destroy()
		end
		end)
		end
		Wapon = {}
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			  if not table.find(Wapon, v.name) then
				 if v:IsA("Tool") then
					table.insert(Wapon ,v.Name)
				 end
			 end
		end 
	
	--AutoFarmLevel
	local placeId = game.PlaceId
	if placeId == 2753915549 then
		OldWorld = true
	elseif placeId == 4442272183 then
		NewWorld =  true
	elseif placeId == 7449423635 then
		ThirdWorld =  true
	else
		game:GetService("Players").LocalPlayer:Kick("มึงรันแมพอื่นทำควยไร!")
	end
	
	function topos(Para1)
		Distance = (Para1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		pcall(function() 
			tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/225, Enum.EasingStyle.Linear),{CFrame = Para1})
			tween:Play()
			_G.Clip = true
			if _G.StopTween == true then
				tween:Cancel()
				_G.Clip = true
			end
			if Distance <= 285 then
				tween:Cancel()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Para1
			end
		end)
	end
	
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if _G.AutoFarm then
				if not game:GetService("Workspace"):FindFirstChild("PartNino") then
					local LOL = Instance.new("Part")
					LOL.Name = "PartNino"
					LOL.Parent = game.Workspace
					LOL.Anchored = true
					LOL.Transparency = 1
					LOL.Size = Vector3.new(30,0.5,30)
				elseif game:GetService("Workspace"):FindFirstChild("PartNino") then
					game.Workspace["PartNino"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
				end
			else
				if game:GetService("Workspace"):FindFirstChild("PartNino") then
					game:GetService("Workspace"):FindFirstChild("PartNino"):Destroy()
				end
			end
		end)
	end)
	
	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.AutoFarm then
					for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false    
						end
					end
				end
			end)
		end)
	end)
	
	

local placeId = game.PlaceId

if placeId == 2753915549 then
    Old_World = true  
elseif placeId == 4442272183 then
    New_World = true
elseif placeId == 7449423635 then
    SeaThird_World = true    
end

function CheckLevel()
    local MyLevel =  game.Players.LocalPlayer.Data.Level.Value
    if Old_World then
        Dis = 300
        if MyLevel == 1 or MyLevel <= 9 then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
        elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
        elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
        elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
            Dis = 150
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
        elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
            Dis = 150
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
        elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
        elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
        elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
        elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
        elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
      elseif MyLevel == 190 or MyLevel <= 209 then -- Prisoner
          Ms = "Prisoner [Lv. 190]"
          NameQuest = "PrisonerQuest"
          LevelQuest = 1
          NameMon = "Prisoner"
          CFrameMon = CFrame.new(5109.94482421875, 0.4170166552066803, 470.39263916015625)
          CFrameQuest = CFrame.new(5306.27587890625, 1.9984018802642822, 474.7127380371094)
      elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
          Ms = "Dangerous Prisoner [Lv. 210]"
          NameQuest = "PrisonerQuest"
          LevelQuest = 2
          NameMon = "Dangerous Prisoner"
          CFrameMon = CFrame.new(5261.5791015625, 1.9956092834472656, 1080.3525390625)
          CFrameQuest = CFrame.new(5306.27587890625, 1.9984018802642822, 474.7127380371094)
        elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 250]"
            NameQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
        elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
            Ms = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"
            LevelQuest = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
        elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
        elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
            FM = false
            Ms = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
        elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
            FM = true
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
        elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
            FM = true
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
            CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
        elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
            FM = false
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
        elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
            sky = false
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
        elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
            sky = true
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
        elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
            Dis = 240
            sky = true
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
            Dis = 240
            sky = false
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
        elseif MyLevel >= 650 then -- Galley Captain
            Dis = 240
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
        end
    elseif New_World then
        Dis = 240
        if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-427, 72, 1836)
            CFrameMon = CFrame.new(-614, 45, 2170)
        elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-427, 72, 1836)
            CFrameMon = CFrame.new(-808, 68, 1689)
        elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(635, 73, 917)
            CFrameMon = CFrame.new(719, 72, 1265)
        elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(635, 73, 918)
            CFrameMon = CFrame.new(221, 73, -345)
        elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442, 73, -3217)
            CFrameMon = CFrame.new(-2433, 80, -3202)
        elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
            Ms = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442, 73, -3219)
            CFrameMon = CFrame.new(-2433, 80, -3200)
        elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5493, 48, -794)
            CFrameMon = CFrame.new(-5521, 40, -805)
        elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5493, 48, -794)
            CFrameMon = CFrame.new(-5924, 35, -1088)
        elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(607, 401, -5376)
            CFrameMon = CFrame.new(572, 390, -5360)
        elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
        elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
        elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
        elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
        elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
        elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"
            LevelQuest = 1
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
        elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"
            LevelQuest = 2
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
            CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
        elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"
            LevelQuest = 1
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
        elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"
            LevelQuest = 2
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
            CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
        elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"
            LevelQuest = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
        elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"
            LevelQuest = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
        elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"
            LevelQuest = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
        elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"
            LevelQuest = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
            CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
        end
    elseif SeaThird_World then
        Dis = 240
        if MyLevel == 1500 or MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"
            LevelQuest = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Ms = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"
            LevelQuest = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"
            LevelQuest = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Ms = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Ms = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Ms = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Ms = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"
            LevelQuest = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Ms = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"
            LevelQuest = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Ms = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"
            LevelQuest = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Ms = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"
            LevelQuest = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Ms = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"
            LevelQuest = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Ms = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"
            LevelQuest = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NameQuest = "HauntedQuest1"
            LevelQuest = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Ms = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"
            LevelQuest = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Ms = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest2"
            LevelQuest = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
            CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Ms = "Posessed Mummy [Lv. 2050]" 
            NameQuest = "HauntedQuest2"
            LevelQuest = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
            CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameMon = CFrame.new(-2124, 123, -10435)
            CFrameQuest = CFrame.new(-2104, 38, -10192)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameMon = CFrame.new(-2124, 123, -10435)
            CFrameQuest = CFrame.new(-2104, 38, -10192)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameMon = CFrame.new(-641, 127, -11062)
            CFrameQuest = CFrame.new(-822, 66, -10965)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameMon = CFrame.new(-641, 127, -11062)
            CFrameQuest = CFrame.new(-822, 66, -10965)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Ms = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameMon = CFrame.new(-2166, 70, -12125)
            CFrameQuest = CFrame.new(-2022, 38, -12034)
        elseif MyLevel >= 2225 then
            Ms = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameMon = CFrame.new(-2166, 70, -12125)
            CFrameQuest = CFrame.new(-2022, 38, -12034)
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			Mon = "Baking Staff [Lv.2250]"
			NameQ = "CakeQuest2"
			NumberQ = 1
			NamrMon = "Baking Staff"
			POSQ = CFrame.new(-1926.592529296875, 37.82393264770508, -12846.8037109375)            
	  elseif MyLevel >= 2275 then
			Mon = "Head Baker [Lv.2275]"
			NameQ = "CakeQuest2"
			NumberQ = 2
			NameMon = "Head Baker"
			POSQ = CFrame.new(-1926.592529296875, 37.82393264770508, -12846.8037109375)


        end
    end
end
page7:Title("Selec Team ")
page7:Button("Join Pirates",function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
end)
page7:Button("Join Marines",function(Value)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
end)
page6:Title("Buy Melee ")
page6:Button("BuyElectro",function(Value)
    local args = {
        [1] = "BuyElectro" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuyBlackLeg",function(Value)
    local args = {
        [1] = "BuyBlackLeg" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuyFishmanKarate",function(Value)
    local args = {
        [1] = "BuyFishmanKarate" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuyDragonClaw",function(Value)
	local args = {
		[1] = "BlackbeardReward",
		[2] = "DragonClaw",
		[3] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuySuperhuman",function(Value)
    local args = {
        [1] = "BuySuperhuman" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuyElectricClaw",function(Value)
    local args = {
        [1] = "BuyElectricClaw" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuyDeathStep",function(Value)
    local args = {
        [1] = "BuyDeathStep" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuyDragonTalon",function(Value)
    local args = {
        [1] = "BuyDragonTalon" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw,BuySharkmanKarate
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("BuySharkmanKarate",function(Value)
    local args = {
        [1] = "BuySharkmanKarate" --BuyBlackLeg,BuyDragonTalon,BuySuperhuman,BuyDragonClaw,BuyFishmanKarate,BuyDeathStep,BuyElectricClaw,BuySharkmanKarate
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Title("Buy Sword")
page6:Button("Katana [ $1,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Katana"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

page6:Button("Cutlass [ $1,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Cutlass"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

page6:Button("Dual Katana [ $12,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Dual Katana"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Iron Mace [ $25,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Iron Mace"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Triple Katana [ $60,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Triple Katana"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Pipe [ $100,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Pipe"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Soul Cane [ $750,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Soul Cane"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Dual-Headed Blade [ $400,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Dual-Headed Blade"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Bisento [ $1,200,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Bisento"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Buy AllSword",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Bisento"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Dual-Headed Blade"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Soul Cane"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Pipe"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Triple Katana"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Iron Mace"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Dual Katana"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Cutlass"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuyItem",
        [2] = "Katana"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Title("Buy Gun")
page6:Button("Slingshot [ $5,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Slingshot"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Musket [ $8,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Musket"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Flintlock [ $10,500 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Flintlock"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Refined Slingshot [ $30,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Refined Slingshot"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Refined Flintlock [ $65,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Refined Flintlock"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Kabucha [ 1,500 Fragments)",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Kabucha"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Title("Accessories")
page6:Button("Black Cape [ $50,000 Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Black Cape"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Swordsman Hat [ 150k Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Swordsman Hat"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Tomoe Ring [ $500k Beli ]",function(Value)
    local args = {
        [1] = "BuyItem",
        [2] = "Tomoe Ring"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Title("Race & Status")
page6:Button("Race Ghoul",function()
    local args = {
        [1] = "Ectoplasm",
        [2] = "BuyCheck",
        [3] = 4
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "Ectoplasm",
        [2] = "Change",
        [3] = 4
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Race Cyborg",function()
    local args = {
        [1] = "CyborgTrainer",
        [2] = "Buy"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Random Race (Use 3K Fragments)",function()
    local args = {
        [1] = "BlackbeardReward",
        [2] = "Reroll",
        [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page6:Button("Reset Stats (Use 2.5K Fragments)",function()
    local args = {
        [1] = "BlackbeardReward",
        [2] = "Refund",
        [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
spawn(function()
    while wait() do
        pcall(function()
            if Old_World then
                Dis = 200
                if game:GetService("Players").LocalPlayer.Data.Level.Value == 30 or game:GetService("Players").LocalPlayer.Data.Level.Value <= 59 then 
                    Dis = 150
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value == 550 or game:GetService("Players").LocalPlayer.Data.Level.Value >= 650 then
                    Dis = 240 
                end
            else
                Dis = 200
            end
        end
        )     
    end
end
)

spawn(function()
    pcall(function()
        while wait() do
            if getgenv().noclip then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local noclip = Instance.new("BodyVelocity")
                    noclip.Name = "noclip"
                    noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    noclip.MaxForce = Vector3.new(10000,10000,10000)
                    noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("noclip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("noclip"):Destroy()
                end
            end
        end
    end
    )
end
)
function stoptween()
    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if getgenv().noclip then
			for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end
    )
end
)
function EquipWeapon(ToolSe)
    pcall(function()
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe))
        end
    end)
end 
function GetQuest(a,b)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",a,b)
end
function Tween(Para1)
    Distance = (Para1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 300
    pcall(function()
        tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = Para1})
        tween:Play()
        if Distance <= Dis then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Para1
        end
    end
	)
end



spawn(function()
    while wait() do
        if _G.AutoFarmMode1 then
            pcall(function ()
                CheckLevel()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    UseMagnet = false
                    Tween(CFrameQuest)
                    if (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                        stoptween()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163, 11, 1819))
                    elseif New_World and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                        stoptween()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 126, 32852))
                    end
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                        wait(.5)
                        GetQuest(NameQuest,LevelQuest)
                        if getgenv().AutoSetSpawn then
                            game:GetService('ReplicatedStorage').Remotes['CommF_']:InvokeServer("SetSpawnPoint")
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    repeat wait()
                                        UseMagnet = true
                                        PositionMonFarmLevel = v.HumanoidRootPart.CFrame
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                        end
                                        EquipWeapon(getgenv().SelectWeapon)
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then 
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
                                        end
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end	
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)  
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        Tween(PositionMonFarmLevel * CFrame.new(0,20,0))
                                        game:GetService('VirtualUser'):CaptureController() 
                                        game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
                                    until not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or not v.Parent or not _G.AutoFarmMode1 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or v.Humanoid.Health <= 0
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                            end
                        end
                    else
						UseMagnet = false
                        Tween(CFrameMon)
						if (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
							stoptween()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163, 11, 1819))
						elseif New_World and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
							stoptween()
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 126, 32852))
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
		if _G.FastFarm then
			pcall(function()
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 2500 then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								game.Players.LocalPlayer.Character.Humanoid.Health = 0
								wait(0.5)
								local args = {
									[1] = "SetSpawnPoint"
								}
								
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
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
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									_G.FastAttack = true
									Tween(v.HumanoidRootPart.CFrame * CFrame.new(1,10,1))								
								until _G.FastFarm == false or v.Humanoid.Health <= 0
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
	while task.wait(.0000001) do
		if _G.AutoFarmMode1 then
			pcall(function()
				CheckLevel()
				for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.AutoFarmMode1 and UseMagnet and v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (Ms == "Factory Staff [Lv. 800]" or Ms == "Monkey [Lv. 14]" or Ms == "Dragon Crew Warrior [Lv. 1575]" or Ms == "Dragon Crew Archer [Lv. 1600]" or Ms == "Head Baker [Lv. 2275]" or Ms == "Baking Staff [Lv. 2250]" or Ms == "Cake Guard [Lv. 2225]") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 225 then
						v.HumanoidRootPart.CFrame = PositionMonFarmLevel
						v.Humanoid:ChangeState(14)
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.AutoFarmMode1 and UseMagnet and v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and string.find(Ms, "Fishman") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 170 then
						v.HumanoidRootPart.CFrame = PositionMonFarmLevel
						v.Humanoid:ChangeState(14)
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.AutoFarmMode1 and UseMagnet and v.Name == Ms and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 270 then
						v.HumanoidRootPart.CFrame = PositionMonFarmLevel
						v.Humanoid:ChangeState(14)
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					end
				end
			end
            )
		end
	end
end
)

	function Buso()
		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
		end
	end
	
	spawn(function()
		while wait() do
			if _G.AutoFarm then
				pcall(function()
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						MagnetLv = false
						Check()
						repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 or not _G.AutoFarm
						if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
							wait(0.5)
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						Check()
						if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if v.Name == Mon then
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											repeat task.wait()
												Buso()
												PosMon = v.HumanoidRootPart.CFrame
												topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												MagnetLv = true
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										else
											MagnetLv = false
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
										end
									end
								end
							end
						else
							MagnetLv = false
							if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,30,1))
					  else
								topos(PosMon)
							end
						end
					end
				end)
			end
		end
	end)
	
	spawn(function()
		while task.wait() do
			pcall(function()
				Check()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.AutoFarm and MagnetLv and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Head Baker [Lv. 2275]" or Mon == "Baking Staff [Lv. 2250]" or Mon == "Cake Guard [Lv. 2225]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					elseif _G.AutoFarm and MagnetLv and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
						v.HumanoidRootPart.CFrame = PosMon
						v.Humanoid:ChangeState(14)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
					end
				end
			end)
		end
	end)
	
	local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
	Script = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	CombatFrame = debug.getupvalues(Script)[2]
	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if _G.FastAttack then do wait()
				if typeof(CombatFrame) == "table" then
					pcall(function()
						CameraShaker:Stop()
						CombatFrame.activeController.attacking = false
						CombatFrame.activeController.blocking = false
						CombatFrame.activeController.timeToNextAttack = 0
						CombatFrame.activeController.hitboxMagnitude = 120
						CombatFrame.activeController.increment = 3                    
						CombatFrame.activeController.timeToNextBlock = 0
						CombatFrame.activeController:attack()
					end)
				end
			end
		end
	end)
	end)
	local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
	Script = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	CombatFrame = debug.getupvalues(Script)[2]
	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if _G.SuperFastAttack then do wait(.10)
				if typeof(CombatFrame) == "table" then
					pcall(function()
						CameraShaker:Stop()
						CombatFrame.activeController.attacking = false
						CombatFrame.activeController.blocking = false
						CombatFrame.activeController.timeToNextAttack = -60
						CombatFrame.activeController.hitboxMagnitude = 120
						CombatFrame.activeController.increment = 3                    
						CombatFrame.activeController.timeToNextBlock = 0
						CombatFrame.activeController:attack()
					end)
				end
			end
		end
	end)
	end)
	local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
	Script = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	CombatFrame = debug.getupvalues(Script)[2]
	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			if _G.UntraFastAttack then do wait()
				if typeof(CombatFrame) == "table" then
					pcall(function()
						CameraShaker:Stop()
						CombatFrame.activeController.attacking = false
						CombatFrame.activeController.blocking = false
						CombatFrame.activeController.timeToNextAttack = -100
						CombatFrame.activeController.hitboxMagnitude = 120
						CombatFrame.activeController.increment = 3                    
						CombatFrame.activeController.timeToNextBlock = 0
						CombatFrame.activeController:attack()
					end)
				end
			end
		end
	end)
	end)
	local CombatFrameworkROld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
	local CombatFrameworkR = getupvalues(CombatFrameworkROld)[2]
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	CameraShakerR:Stop()
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				CombatFrameworkR.activeController.hitboxMagnitude = 55
				if _G.GodFastAttack then
					if _G.GodFastAttack then
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
						CombatFrameworkR.activeController.timeToNextBlock = -100
						game.Players.LocalPlayer.Character.Humanoid.Sit = false	
					end
				end
			end)
		end)
	end)
	
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				if _G.GodFastAttack then
					if _G.GodFastAttack then
						Click()
					end
				end
			end)
		end)
	end)
	
	function TP(P1)
		Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 250 then
			Speed = 600
		elseif Distance < 500 then
			Speed = 400
		elseif Distance < 1000 then
			Speed = 350
		elseif Distance >= 1000 then
			Speed = 200
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
			TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Play()
	end
	
	function TP2(P1)
		Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 1000 then
			Speed = 400
		elseif Distance >= 1000 then
			Speed = 250
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
			TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Play()
		Clip = true
		wait(Distance/Speed)
		Clip = true
	end
	page2:Title("Auto Farm Tool")
	page2:Toggle("Auto Bone & Money", _G.Save["Auto Bone & Money"],function(vu)
		_G.Auto_Bone = vu
	end)
	page2:Toggle("Auto EliteHunter",_G.Save["Auto EliteHunter"],function(vu)
		_G.AutoEliteHunter = vu
	end)
	page2:Title("Auto Sword")
	page2:Toggle("Legendary Sword ", _G.Save["Legendary Sword"],function(Value)
		_G.Legendary = Value    
	end)
	page2:Toggle("Legendary Sword hop ",_G.Save["Legendary Sword hop"],function(Value)
		_G.LegendaryHop = Value    
	end)
	page2:Toggle("Yama,BuddySword,Cavender Hop", _G.Save["Yama,BuddySword,Cavender Hop"],function(vu)
		_G.Hopsword = vu
	end)
	page2:Toggle("Auto Buddy Sword",_G.Save["Auto Buddy Sword"],function(vu)
		_G.Buddy = vu
	end)
	page2:Toggle("Auto Canvender",_G.Save["Auto Canvender"],function(vu)
		_G.Canvender = vu
	end)
	page2:Toggle("Auto Yama",_G.Save["Auto Yama"],function(vu)
		_G.Autoyama = vu
	end)
	page2:Title("Auto Boss")
	local Bosslist = {}
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name ~= "Ice Admiral [Lv. 700] [Boss]" then
            table.insert(Bosslist, v.Name)
        end
    end
end
for i, v in pairs(game.workspace.Enemies:GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name ~= "Ice Admiral [Lv. 700] [Boss]" then
            table.insert(Bosslist, v.Name)
        end
    end
end
	_G.SelectBoss = ""
	local BossSelected = page2:Dropdown("Select Boss",Bosslist,function(Value)
		_G.SelectBoss = Value
	end)
		page2:Toggle("Auto Boss",_G.Save["Auto Boss"],function(vu)
		_G.AutoBoss = vu
	end)
	page2:Button("Refresh Boss", function()
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
		BossSelected:Refresh(Boss)
	end)
	page3:Title("Auto Status")
	
page3:Toggle("Melee",_G.Save["Melee"],function(Value)
    _G.Melee = Value
    while _G.Melee  == true do
    wait()
    local args = {
        [1] = "AddPoint",
        [2] = "Melee",
        [3] = PointStats
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    print("test")
    end
     
    end)
	page3:Toggle("Defense",_G.Save["Defense"],function(Value)
		_G.Defense = Value
		while _G.Defense  == true do
		wait()
		local args = {
			[1] = "AddPoint",
			[2] = "Defense",
			[3] = PointStats
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		print("test")
		end
		 
		end)
		page3:Toggle("Sword",_G.Save["Sword"],function(Value)
			_G.Sword = Value
			while _G.Sword  == true do
			wait()
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = PointStats
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			print("test")
			end
			 
			end)
			page3:Toggle("Gun",_G.Save["Gun"],function(Value)
				_G.Gun = Value
				while _G.Gun  == true do
				wait()
				local args = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				print("test")
				end
				 
				end)
				page4:Title("Teleport World")
				page4:Button("Teleport To Sea 1" ,function()
					local args = {
						[1] = "TravelMain" -- OLD WORLD to NEW WORLD
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Teleport To Sea 2" ,function()
					local args = {
						[1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				
				page4:Button("Teleport To Sea 3" ,function()
					local args = {
						[1] = "TravelZou" -- OLD WORLD to NEW WORLD
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				
				
				if placeId == 2753915549 then
					page4:Title("Teleport Lands World 1")
				page4:Button("Start Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
				page4:Button("Marine Start", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374, 6.88881969, 2046.99817)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Middle Town", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Jungle", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Pirate Village", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Desert", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Frozen Village", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("MarineFord", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Colosseum", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1428.35474, 7.38933945, -3014.37305)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Sky 1st Floor", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Sky 2st Floor", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Sky 3st Floor", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Prison", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4874.8125, 5.6519904136658, 735.57012939453)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
					page4:Button("Magma Village", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
					page4:Button("UndeyWater City", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
			
					page4:Button("Fountain City", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
			wait(0.5)
											local args = {
												[1] = "SetSpawnPoint"
											}
											
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				
			
					page4:Button("House Cyborg's", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			
				
					page4:Button("Shank's Room", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
					function TP(P1,P2)
						local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance < 1000 then
							Speed = 150
						elseif Distance >= 1000 then
							Speed = 400
						end
						game:GetService("TweenService"):Create(
							game.Players.LocalPlayer.Character.HumanoidRootPart,
							TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
							{CFrame = P2}
						):Play()
						Clip = true
						wait(Distance/Speed)
						Clip = false
					end
					
					TP(Vector3.new(-1442.16553, 29.8788261, -28.3547478), CFrame.new(-1442.16553, 29.8788261, -28.3547478))
					
					game:GetService("RunService").Heartbeat:connect(function()
						if Clip then
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
						end
					end)
				end)
			
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
												name.TextColor3 = Color3.fromRGB(139, 69, 19)
												name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
											end
											if v.Name == "Chest2" then
												name.TextColor3 = Color3.fromRGB(255, 215, 0)
												name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
											end
											if v.Name == "Chest3" then
												name.TextColor3 = Color3.fromRGB(0, 191, 255)
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
										name.TextColor3 = Color3.fromRGB(255, 250, 250)
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
										name.TextColor3 = Color3.fromRGB(255, 255 ,255)
										if v.Name == "Flower1" then 
											name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
											name.TextColor3 = Color3.fromRGB(0, 0, 255)
										end
										if v.Name == "Flower2" then
											name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
											name.TextColor3 = Color3.fromRGB(205, 0, 0)
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
					page4:Button("Mob Island", function()
						function TP(P1,P2)
							local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
							if Distance < 1000 then
								Speed = 150
							elseif Distance >= 1000 then
								Speed = 400
							end
							game:GetService("TweenService"):Create(
								game.Players.LocalPlayer.Character.HumanoidRootPart,
								TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
								{CFrame = P2}
							):Play()
							Clip = true
							wait(Distance/Speed)
							Clip = false
						end
						
						TP(Vector3.new(-2850.20068, 7.39224768, 5354.99268), CFrame.new(-2850.20068, 7.39224768, 5354.99268))
						
						game:GetService("RunService").Heartbeat:connect(function()
							if Clip then
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
							end
						end)
				end)
			end
			if placeId == 4442272183 then
				page4:Title("Teleport Lands World 2")
				page4:Button("First Spot", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Cafe", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Kingdom of Rose", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				
				page4:Button("Green bit", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Colosseum", function()
					function TP(P1,P2)
						local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance < 1000 then
							Speed = 150
						elseif Distance >= 1000 then
							Speed = 400
						end
						game:GetService("TweenService"):Create(
							game.Players.LocalPlayer.Character.HumanoidRootPart,
							TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
							{CFrame = P2}
						):Play()
						Clip = true
						wait(Distance/Speed)
						Clip = false
					end
					
					TP(Vector3.new(-1836.58191, 44.5890656, 1360.30652), CFrame.new(-1836.58191, 44.5890656, 1360.30652))
					
					game:GetService("RunService").Heartbeat:connect(function()
						if Clip then
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
						end
					end)
				end)
				page4:Button("Ghost Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5571.84424, 195.182297, -795.432922)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				
				page4:Button("Snow Mountain", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1384.68298, 453.569031, -4990.09766)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Cold Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Magma Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Cursed Ship", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Ice Castle", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Forgotten Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3043.31543, 238.881271, -10191.5791)
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
								wait(0.5)
																local args = {
																	[1] = "SetSpawnPoint"
																}
																
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Usoapp Island", function()
					function TP(P1,P2)
						local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance < 1000 then
							Speed = 150
						elseif Distance >= 1000 then
							Speed = 400
						end
						game:GetService("TweenService"):Create(
							game.Players.LocalPlayer.Character.HumanoidRootPart,
							TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
							{CFrame = P2}
						):Play()
						Clip = true
						wait(Distance/Speed)
						Clip = false
					end
					
					TP(Vector3.new(4748.78857, 8.35370827, 2849.57959), CFrame.new(4748.78857, 8.35370827, 2849.57959))
					
					game:GetService("RunService").Heartbeat:connect(function()
						if Clip then
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
						end
					end)
					end)
				page4:Button("Minisky Island", function()
					function TP(P1,P2)
						local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance < 1000 then
							Speed = 150
						elseif Distance >= 1000 then
							Speed = 400
						end
						game:GetService("TweenService"):Create(
							game.Players.LocalPlayer.Character.HumanoidRootPart,
							TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
							{CFrame = P2}
						):Play()
						Clip = true
						wait(Distance/Speed)
						Clip = false
					end
					
					TP(Vector3.new(-260.358917, 49325.7031, -35259.3008), CFrame.new(-260.358917, 49325.7031, -35259.3008))
					
					game:GetService("RunService").Heartbeat:connect(function()
						if Clip then
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
						end
					end)
					end)
				page4:Button("Secret room", function()
					function TP(P1,P2)
						local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance < 1000 then
							Speed = 150
						elseif Distance >= 1000 then
							Speed = 400
						end
						game:GetService("TweenService"):Create(
							game.Players.LocalPlayer.Character.HumanoidRootPart,
							TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
							{CFrame = P2}
						):Play()
						Clip = true
						wait(Distance/Speed)
						Clip = false
					end
					
					TP(Vector3.new(-2128.38867, 149.874435, -95.2233658, -0.190948173, 1.07975268e-07, -0.981599987, 2.93935e-06, 1, -4.61784907e-07, 0.981599987, -2.97344309e-06, -0.190948173), CFrame.new(-2128.38867, 149.874435, -95.2233658, -0.190948173, 1.07975268e-07, -0.981599987, 2.93935e-06, 1, -4.61784907e-07, 0.981599987, -2.97344309e-06, -0.190948173))
					
					game:GetService("RunService").Heartbeat:connect(function()
						if Clip then
							game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
							local args = {
								[1] = "SetSpawnPoint"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
					end)
				end)
			end
			if placeId == 7449423635 then
				page4:Title("Teleport Lands World 3")
				page4:Button("Prot Town", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-287, 30, 5388)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Hydar Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3399.32227, 72.4142914, 1572.99963, -0.809679806, -4.48284467e-08, 0.586871922, 2.42332163e-08, 1, 1.09818842e-07, -0.586871922, 1.0313989e-07, -0.809679806)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Room Yama", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5247, 7, 1097)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("House Hydar Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5245, 602, 251)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Great Tree", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2443, 36, -6573)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Castle on the sea", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5500, 314, -2855)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Mansion", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Floating Turtlea", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10016, 332, -8326)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Haunted Castle", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9509.34961, 142.130661, 5535.16309)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Peanut Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2131, 38, -10106)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("Ice Cream Island", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-950, 59, -10907)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
				page4:Button("CakeLoaf", function()
					game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1762, 38, -11878)
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			end
				page3:Toggle("DemonFruit",_G.Save["DemonFruit"],function(Value)
					_G.DemonFruit = Value
					while _G.DemonFruit  == true do
					wait()
					local args = {
						[1] = "AddPoint", 
						[2] = "Demon Fruit",
						[3] = PointStats
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					print("test")
					end
					 
					
   
					end)
					page6:Title("Buy-Item")
					page6:Button("BuyAllCommonSword", function(Value)
						_G.BuyallCommonSword = Value
						local args = {
							[1] = "BuyItem",
							[2] = "Bisento"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Dual-Headed Blade"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Soul Cane"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Pipe"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Triple Katana"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Iron Mace"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Dual Katana"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Cutlass"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "BuyItem",
							[2] = "Katana"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end)
					page7:Title("--Character--")
page7:Toggle("Dodge No Cooldown (Bug)",_G.Save["Dodge No Cooldown (Bug)"],function(Value)
	nododgecool = Value
	NoDodgeCool()
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
page7:Toggle("Infinits Energy",_G.Save["Infinits Energy"],function(Value)
	InfinitsEnergy = value
	originalstam = LocalPlayer.Character.Energy.Value
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
page7:Toggle("Auto Click",_G.Save["Auto Click"],function(value)
	AuctoClick = value
end)
spawn(function()
	while wait(.1) do
		if AuctoClick then
			Click()
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Legendary then
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end 
		if _G.LegendaryHop then
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
			wait(3)
		end 
		if Enhancement then
			local args = {
				[1] = "ColorsDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end 
	end
end)   
spawn(function()
	while wait(.1) do
		if AuctoClick then
			game:GetService'VirtualUser':CaptureController()
			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
		end
	end
end)
page7:Title("FPS BOOTS")
page7:Toggle("Whilte Screen Press P",_G.Save["Whilte Screen Press P"],function(Value)
	_G.WhilteScreen = Value
end)
	while _G.WhilteScreen == true do
	wait()
	game:GetService("RunService"):Set3dRenderingEnabled(false) 

	print("test")
	end
	spawn(function()
		while wait() do
			while _G.WhilteScreen == true do
				wait()
				game:GetService("RunService"):Set3dRenderingEnabled(false) 
			
				print("test")
				end
		end
		end)
page7:Button("FPS Boost", function()
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)
page7:Button("Super FPS Boost", function()
	for i,v in pairs(game.Workspace.Map:GetDescendants()) do
		if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
			v:Destroy()
		end
	end 
	for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
		if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
			v:Destroy()
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
			v:Destroy()
		end
	end
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
	local g = game
	local w = g.Workspace
	local l = g.Lighting
	local t = w.Terrain
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 0
	l.GlobalShadows = false
	l.FogEnd = 9e9
	l.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for i, v in pairs(g:GetDescendants()) do
		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		end
	end
	for i, e in pairs(l:GetChildren()) do
		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
			e.Enabled = false
		end
	end
end)
page7:Title("Haki Stage ")
page7:Button("Stage 0", function()
	local args = {
		[1] = "ChangeBusoStage",
		[2] = 0
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page7:Button("Stage 1", function()
	local args = {
		[1] = "ChangeBusoStage",
		[2] = 1
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page7:Button("Stage 2", function()
	local args = {
		[1] = "ChangeBusoStage",
		[2] = 2
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page7:Button("Stage 3", function()
	local args = {
		[1] = "ChangeBusoStage",
		[2] = 3
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page7:Button("Stage 4", function()
	local args = {
		[1] = "ChangeBusoStage",
		[2] = 4
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page7:Button("Stage 5", function()
	local args = {
		[1] = "ChangeBusoStage",
		[2] = 5
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
page7:Title("Fruit")
page7:Toggle("Bring DevilFruit",_G.Save["Bring DevilFruit"],function(a)
	_G.BringFruit = a
end)
page7:Toggle("Auto EatFruit",_G.Save["Auto EatFruit"],function(b)
	_G.AutoEatFruit = b
end)
page9:Title("Setting")
page9:Toggle("Anit AFK",_G.Save["Anit AFK"],function(vu)
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)
	ws = false
    game:GetService("UserInputService").InputBegan:Connect(function(input,chat)
        if chat then return end
        if input.KeyCode == Enum.KeyCode.P then 
            if ws == false then
                ws = true
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            else 
               ws = false 
                game:GetService("RunService"):Set3dRenderingEnabled(true)
            end 
        end
    end)
	page9:Title("Sever")
	page9:Button("Rejoin", function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end)
    local function HttpGet(url)
        return game:GetService("HttpService"):JSONDecode(htgetf(url))
    end
	page9:Button("Server Hop", function()
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
    end)
    
	spawn(function()
        while wait() do
            if _G.AutoEatFruit then
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name:find("Fruit") then
                        local tools = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tools)
                        wait(.9)
                        local args = {
                            [1] = 0
                        }
                        
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(v.Name).Relay:FireServer(unpack(args))
                    end
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name:find("Fruit") then
                        local tools = game.Players.LocalPlayer.Character:FindFirstChild(v.Name)
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tools)
                        wait(.9)
                        local args = {
                            [1] = 0
                        }
                        
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(v.Name).Relay:FireServer(unpack(args))
                    end
                end
            end
        end
    end)
	page2:Title("Auto Skill (ComingSoon)")
	page2:Toggle("Auto Skill Z",false,function(vu)
		_G.SkillZ = vu
	end)
	page2:Toggle("Auto Skill X",false,function(vu)
		_G.SkillX = vu
	end)
	page2:Toggle("Auto Skill C",false,function(vu)
	    
		_G.SkillC = vu
	end)
	page2:Toggle("Auto Skill V",false,function(vu)
		_G.SkillV = vu
	end)
	page2:Toggle("Auto Skill F",false,function(vu)
	    
		_G.SkillF = vu
	end)
	page2:Toggle("Auto Skill E",false,function(vu)
	    
		_G.SkillE = vu
	end)
	spawn(function()
        while wait(.1) do
            if _G.SkillZ then
workspace.Characters.LocalPlayer.Humanoid['']:InvokeServer("Z")
            end
        end
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.SkillX then
                pcall(function()
                    Skill("X")
                end)
            end
        end
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.SkillC then
                pcall(function()
                    Skill("C")
                end)
            end
        end
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.SkillV then
                pcall(function()
                    Skill("V")
                end)
            end
        end
    end)
    spawn(function()
        while wait(.1) do
            if _G.SkillE then
                pcall(function()
                    Skill("E")
                end)
            end
        end
    end)
    spawn(function()
        while wait(.1) do
            if _G.SkillF then
                pcall(function()
                    Skill("F")
                end)
            end
        end
    end)
	page8:Toggle("Spectate Player",_G.Save["Spectate Player"],function(bool)
		Sp = bool
		local plr1 = game.Players.LocalPlayer.Character.Humanoid
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		repeat wait(.1)
			game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
		until Sp == false 
		game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end)
	page8:Button("Teleport Player",function()
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
		plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
					wait(0.5)
													local args = {
														[1] = "SetSpawnPoint"
													}
													
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

	end)
	page8:Toggle("Aimbot Skill",_G.Save["Aimbot Skill"],function(bool)
		KillPlayer = bool
		while KillPlayer do wait()
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
	 spawn(function()
		while wait() do
			if KillPlayer then
				if game.Players:FindFirstChild(SelectedKillPlayer) and (game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 300 then
					KillTween = toTarget(game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position,game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame)
				elseif game.Players:FindFirstChild(SelectedKillPlayer) and (game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 300 then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
					game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CanCollide = false
					game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
					EquipWeapon(SelectToolWeaponGun)
					if game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) then
						spawn(function()
							pcall(function()
								local args = {
									[1] = v.HumanoidRootPart.Position,
									[2] = v.HumanoidRootPart
								}
								game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
							end)
						end)
					end 
				end
			end 
			if Skillaimbot then
				if game.Players:FindFirstChild(SelectedKillPlayer) and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectedKillPlayer).Character.Humanoid.Health > 0 then
					AimBotSkillPosition = game.Players:FindFirstChild(SelectedKillPlayer).Character:FindFirstChild("HumanoidRootPart").Position
				end
			end
		end
	end)
	
	page7:Toggle("ESP Player",false,function(ESP)
	    
        ESPPlayer = ESP
        while ESPPlayer do wait()
            UpdatePlayerChams()
        end
	end)
	page7:Toggle("ESP Chest",false,function(a)
		ChestESP = a
		while ChestESP do wait()
			UpdateChestChams() 
		end
	end)
	page7:Toggle("ESP Devil Fruit",false,function(a)
		DevilFruitESP = a
		while DevilFruitESP do wait()
			UpdateDevilChams() 
		end
	end)
	page7:Toggle("ESP Flower",false,function(a)
		FlowerESP = a
		while FlowerESP do wait()
			UpdateFlowerChams() 
		end
	end)
	 page8:Toggle("Aimbot Gun","",_G.Save["Aimbot Gun"],function(bool)
		   Aimbot = bool
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
	 PlayerName = {}
	 for i,v in pairs(game.Players:GetChildren()) do  
		table.insert(PlayerName ,v.Name)
	 end
	 SelectedKillPlayer = ""
	 page8:Dropdown("Selected Player",PlayerName,function(plys) --true/false, replaces the current title "Dropdown" with the option that t
		SelectedKillPlayer = plys
		SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
	 end)
	 page8:Button("Refrsh Player","",function()
		PlayerName = {}
		Player:Clear()
		for i,v in pairs(game.Players:GetChildren()) do  
		   Player:Add(v.Name)
		end
	 end)
	spawn(function ()
        while wait() do
            if _G.BringFruit then
                pcall(function()
                    for i,v in pairs(game.Workspace.Trees.Tree.Model:GetChildren()) do 
                        if v.ClassName == "Tool" then 
                            fireclickdetector(v.Main.ClickDetector)
                        end
                    end
                end)
            end
        end
    end)
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
                            bill.ExtentsOffset = Vector3.new(0, 2, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Character.Head
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "SourceSansBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 2
                            if v.Team == game.Players.LocalPlayer.Team then
                                name.TextColor3 = Color3.new(0, 191, 255)
                            else
                                name.TextColor3 = Color3.new(255, 0, 0)
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
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Bone then
					if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
								if v:WaitForChild("Humanoid").Health > 0 then
									repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											   local args = {
												  [1] = "Buso"
											   }
											   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
										MainMonBone = v.HumanoidRootPart.CFrame
										BoneMagnet = true
									until _G.Auto_Bone == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					else
						BoneMagnet = false
						Tween(CFrame.new(-9501.64453, 582.052612, 6034.20117))
					end
				end
			end)
		end
	end)
	page7:Toggle("No Clip",false,function(a)
        _G.NoClip = a
    end)
    page8:Toggle("BringPlayer",false,function(vu)
        _G.BringPlayer = vu
    end)
  spawn(function()
        game:GetService('RunService').Stepped:connect(function()
            if _G.NoClip == true then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)
    end)

    spawn(function()
        while wait() do
            if _G.BringPlayer then
                pcall(function()
                    game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
                end)
            end
        end
    end)
	task.spawn(function()
		pcall(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				if _G.Auto_Bone or _G.Buddy or _G.Canvender then
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
	 end)
	  spawn(function()
		 while game:GetService("RunService").Stepped:wait() do
			 character = game.Players.LocalPlayer.Character 
			 if _G.Auto_Bone or  _G.Buddy or _G.Canvender then
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
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Bone and BoneMagnet  then
						if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - MainMonBone.Position).Magnitude <= 300 then
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.Sit = false
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.CFrame = MainMonBone
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end
				end
			end)
		end)
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
	task.spawn(function()
		while task.wait() do
			if _G.Buddy then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
								if v:WaitForChild("Humanoid").Health > 0 then
									repeat task.wait()
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										EquipWeapon(_G.SelectToolWeapon)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
									until not _G.Buddy or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					else
						Tween(CFrame.new())
						if _G.Hopsword then
							if not game:GetService("Workspace").Enemie:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
								Teleport() 
							end
						end
					end
				end)
			end
		end
	end)
	task.spawn(function()
		while wait() do
			if _G.Canvender then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
								if v:WaitForChild("Humanoid").Health > 0 then
									repeat task.wait()
										_G.AutoFarm = false
										_G.Buddy = false
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
						_G.AutoFarm = false
						_G.Buddy = false
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817383, -125.94227600098))
						wait(3)
						if _G.Hopsword then
							if not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
								Teleport() 
							end
						end
					end
				end)
			end
		end
	end)
	spawn(function()
		while wait() do
			if _G.AutoEliteHunter then
				pcall(function()
					local args = {
						[1] = "EliteHunter"
					}
				
					remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					if string.find(remote, 'Hydra Island') then
						EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
						for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							if v:IsA('Model') then
								if string.find(v.Name, EliteHunterName) then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoiPartdRootPart.CFrame.Position).Magnitude >= 4000 then
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
									end
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
								until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.AutoEliteHunter
							end
						end
					end
					if string.find(remote, 'Turtle') then
						EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
						for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							if v:IsA('Model') then
								if string.find(v.Name, EliteHunterName) then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
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
									until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.AutoEliteHunter
								end
							end
						end
					end
					if not string.find(remote, 'Turtle') and not string.find(remote, 'Hydra Island')  then
						EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
						for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							if v:IsA('Model') then
								if string.find(v.Name, EliteHunterName) then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
										end
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
								until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.AutoEliteHunter
							end
						end
					end
				end) 
			end
		end
	end)
	page5:Dropdown("Select Microchip",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand"},function(Value)
		_G.Chip = Value
	end)
	page5:Toggle("Auto Raid",_G.Save["Auto Raid"],function(vu)
		_G.autoraid = vu
	end)
	page5:Toggle("Auto Awakener",_G.Save["Auto Awakener"],function(value)
		_G.Awakener = value
	end)
	spawn(function()
		while wait(.1) do
			if _G.Awakener then
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
	spawn(function()
		while wait(.1) do
			if _G.autoraid == true then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")  then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Chip)
					end
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")  then
						if New_World then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						elseif SeaThird_World then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
				end
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if _G.autoraid == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then
						pcall(function()
							repeat wait(.1)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
								v.HumanoidRootPart.CanCollide = false
								if v.Humanoid.Health > 0 then
									v.Humanoid.Health = 0
								elseif v.Humanoid.Health == 0 then
									v.Humanoid.Health = v.Humanoid.MaxHealth
								else
									v.Humanoid.Health = 0
								end
							until not _G.autoraid or not v.Parent or v.Humanoid.Health <= 0
						end)
					end
				end
				pcall(function()
					if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") or game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
						if game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland5") then
							Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,10,10))
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland4") then
							Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,10,10))
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland3") then
							Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,10,10))
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland2") then
							Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,10,10))
						elseif game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1") then
							--TP2FF(game:GetService("Workspace").Map.RaidMap:FindFirstChild("RaidIsland1"):FindFirstChildWhichIsA("Part").CFrame*CFrame.new(0,20,0))
						end
					else
						if New_World then
							Tween(CFrame.new())
						elseif SeaThird_World then
							Tween(CFrame.new())
						end
					end
				end)
			end
		end
	end)
	
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Autoyama then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") < 30 then
						local args = {
							[1] = "EliteHunter"
						}
						remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						if string.find(remote, 'Hydra Island') then
							EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
							for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if v:IsA('Model') then
									if string.find(v.Name, EliteHunterName) then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoiPartdRootPart.CFrame.Position).Magnitude >= 4000 then
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
										end
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
										--EquipWeapon(_G.SelectToolWeapon)
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
									until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.AutoEliteHunter
								end
							end
						end
						if string.find(remote, 'Turtle') then
							EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
							for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if v:IsA('Model') then
									if string.find(v.Name, EliteHunterName) then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
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
										--EquipWeapon(_G.SelectToolWeapon)
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
										until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.AutoEliteHunter
									end
								end
							end
						end
						if not string.find(remote, 'Turtle') and not string.find(remote, 'Hydra Island')  then
							EliteHunterName = string.split(string.split(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Defeat')[2], ' ')[2]:gsub(' ', '')
							for _i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
								if v:IsA('Model') then
									if string.find(v.Name, EliteHunterName) then
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - v.HumanoidRootPart.CFrame.Position).Magnitude >= 4000 then
												Tween(v.HumanoidRootPart.CFrame * CFrame.new(-75, 75, 75))
											end
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
										--EquipWeapon(_G.SelectToolWeapon)
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
									until not v:FindFirstChild("Humanoid") or  not v:FindFirstChild("HumanoidRootPart") or not v.Humanoid.Health > 0 or not _G.AutoEliteHunter
								end
							end
						end
					else
						PosGhostYamma = nil
						Tween(CFrame.new(5227.13037109375, 8.086737632751465, 1100.6697998046875) * CFrame.new(0, 40,0))
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if string.find(v.Name, 'Ghost') and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								if not PosGhostYamma then
									PosGhostYamma = v.HumanoidRootPart.CFrame
								end
								v.HumanoidRootPart.CFrame = PosGhostYamma
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
					end
				end
			end
		end)
	end)
	task.spawn(function()
		pcall(function()
			game:GetService("RunService").Heartbeat:Connect(function()
				if _G.Autoyama then
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
	 end)
	  spawn(function()
		 while game:GetService("RunService").Stepped:wait() do
			 character = game.Players.LocalPlayer.Character 
			 if _G.Autoyama then
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
	function CheckQuestBoss()
		-- Old World
		if _G.SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
			MsBoss = "Saber Expert [Lv. 200] [Boss]"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif _G.SelectBoss == "The Saw [Lv. 100] [Boss]" then
			MsBoss = "The Saw [Lv. 100] [Boss]"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif _G.SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
			MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif _G.SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]"
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif _G.SelectBoss == "Bobby [Lv. 55] [Boss]" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif _G.SelectBoss == "Yeti [Lv. 110] [Boss]" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif _G.SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif _G.SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif _G.SelectBoss == "Warden [Lv. 175] [Boss]" then
			MsBoss = "Warden [Lv. 175] [Boss]"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
			MsBoss = "Chief Warden [Lv. 200] [Boss]"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.SelectBoss == "Swan [Lv. 225] [Boss]" then
			MsBoss = "Swan [Lv. 225] [Boss]"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif _G.SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif _G.SelectBoss == "Wysper [Lv. 500] [Boss]" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif _G.SelectBoss == "Thunder God [Lv. 575] [Boss]" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif _G.SelectBoss == "Cyborg [Lv. 675] [Boss]" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
		-- New World
		elseif _G.SelectBoss == "Diamond [Lv. 750] [Boss]" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif _G.SelectBoss == "Jeremy [Lv. 850] [Boss]" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif _G.SelectBoss == "Fajita [Lv. 925] [Boss]" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif _G.SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif _G.SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif _G.SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif _G.SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif _G.SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif _G.SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif _G.SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			 NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		-- Thire World
		elseif _G.SelectBoss == "Stone [Lv. 1550] [Boss]" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)
		elseif _G.SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			 NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)
		elseif _G.SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)
		elseif _G.SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)
		elseif _G.SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)
		elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
			MsBoss = "Cake Queen [Lv. 2175] [Boss]"
			NameQuestBoss = "IceCreamIslandQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-716, 382, -11010)
			CFrameBoss = CFrame.new(-821, 66, -10965)
		elseif _G.SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
			MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)
		elseif _G.SelectBoss == "Longma [Lv. 2000] [Boss]" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		elseif _G.SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
			MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		end
	end
	page1:Label("")
	page1:Label("")
	page1:Label("")
	page1:Label("")
	page1:Label("")
	page1:Label("")
	page1:Label("")
	page1:Label("")
	page1:Line()
page1:Label("สวัสดีชาว Edog Hub ทุกๆท่านด้วยนะครับ")
page1:Label("สคิป อาจจะยังไม่ดีเท่าที่ควรก็ขออภัยด้วยนะครับ")
page1:Label("หากมีบัคหรือต้องการฟังชั่นอะไรสามารถแจ้งในดิสได้เลยครับ📬")
page1:Label("พร้อมรับฟังทุกคำขอ/เสนอ")
page1:Label("ขอบคุณทุกการซื้อนะครับ 💸❤️❤️")
page1:Line()
	_G.AutoNewWorld = Value
local Plr = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')
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
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/300, Enum.EasingStyle.Linear)
		local tween, err = pcall(function()
			tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
			tween:Play()
		end)
		if not tween then return err end
	end
end
spawn(function()
    while wait() do
        if _G.AutoNewWorld then
            if game.Players.localPlayer.Data.Level.Value >= 700 then
                if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
                    if Workspace.Map.Ice.Door.Transparency == 1 then
                        if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                wait(.4)
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                            end
                            Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        elseif game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 and (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                                [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoNewWorld == false
                                end
                            end
                        else
                            _G.FastAttack = true
                        end 
                    else
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                            Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                Tween(CFrame.new(1347.7124, 37.3751602, -1325.6488))
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
                            Tween(CFrame.new(4849.29883, 5.65138149, 719.611877))
                            if (CFrame.new(4849.29883, 5.65138149, 719.611877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                Tween(CFrame.new(4849.29883, 5.65138149, 719.611877))
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
	spawn(function()
		while wait() do
			if _G.AutoBoss then
				pcall(function()
					CheckQuestBoss()
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							local args = {
								[1] = "SetSpawnPoint"
							}
	
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						else
							Tween(CFrameQuestBoss)
						end
					elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							local args = {
								[1] = "AbandonQuest"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
									if v.Name == MsBoss then
										repeat wait()
											Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
										until not _G.AutoBoss or v.Humanoid.Health <= 0
									end
								end
							end
						else
							Tween(CFrameBoss)
						end
					end
				end)
			end
		end
	end)


	page6:Toggle("AutoSetSpawn",false, function(Value)
		_G.AutoSetSpawn  = Value
	end)
		while _G.AutoSetSpawn  == true do
		wait()
		local string_1 = "SetSpawnPoint";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);
		print("test")
		end
