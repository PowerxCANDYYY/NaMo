local Old = game:GetService("RbxAnalyticsService"):GetClientId()
if game:GetService("RbxAnalyticsService"):GetClientId() ~= Old then
	game.Players.LocalPlayer:Kick("")
	while true do end
	for i = 0 , 10000000 do
		while true do end
		repeat until not game
	end
end

spawn(function()
	while wait() do
		pcall(function()
			local a = game:GetService("RbxAnalyticsService"):GetClientId()
			if string.lower(a) ~= game:GetService("RbxAnalyticsService"):GetClientId() then
				repeat until not game
				wait(3)
				game:Shutdown()
			end
		end)
	end
end)


spawn(function()
	game:GetService("RunService").RenderStepped:connect(function()
		for i,v in pairs (game:GetService("CoreGui"):GetChildren())do
			if v.Name == "DevConsoleMaster" then
				v.Enabled = false
				v:Destroy()
				game.Players.LocalPlayer:Kick("")
				spawn(function()
					while true do end
					for i = 0 , 10000000 do
						while true do end
						repeat until not game
					end
				end)
				wait(1)
				game:Shutdown()
			end
		end
	end)
end)

spawn(function()
	game:GetService("RunService").RenderStepped:connect(function()
		for i,v in pairs (game:GetService("CoreGui"):GetChildren())do
			if v.Name == "DevConsoleMaster" then
				v.Enabled = false
				v:Destroy()
				game.Players.LocalPlayer:Kick("")
				spawn(function()
					while true do end
					for i = 0 , 10000000 do
						while true do end
						repeat until not game
					end
				end)
				wait(1)
				game:Shutdown()
			end
		end
	end)
end)
local KeyCheck = getgenv().Key
local DiscordidCheck = getgenv().Discordid
local LocalPlayer = game.Players.LocalPlayer
local str = string.reverse
function ClientId()
    return game:GetService("RbxAnalyticsService"):GetClientId()
end
local check = "https://dfskgdifj.000webhostapp.com/server.php?hwid=" .. str(ClientId()) .. "&Key="..KeyCheck.."&disid=" .. DiscordidCheck
local server = game:HttpGet(check)
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
-- encoding
function encode(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end
-- decoding
function decode(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end

local chars = '1234564890'
local length = math.random(1,10)
local randomString = ''
charTable = {}
for c in chars:gmatch"." do
    table.insert(charTable, c)
end
for i = 1, length do
    randomString = randomString .. charTable[math.random(1, #charTable)]
end
local Lago_random = randomString
local Check2 = "https://dfskgdifj.000webhostapp.com/random.php?random="..Lago_random
local serverradnom = game:HttpGet(Check2)
local domnumber = math.random(1,100)
local CheckServerRandom = {
    [1] = string.rep(serverradnom,domnumber)
}
function TT(strf)
    return string.find(decode(CheckServerRandom[1]),strf)
end
if decode(server) ~= "Invaid Hwid" then
	if decode(server) ~= "Invaid Key" then
		if decode(server) ~= "Invaid DiscordId" then
			if TT("1") or TT("2") or TT("3") or TT("4") or TT("5") or TT("6") then
				
if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then		   
	do
	local ui = game.CoreGui:FindFirstChild("Hovxrz")
	if ui then
	ui:Destroy()
	end
	if _G.Color == nil then
	_G.Color = Color3.fromRGB(110,63,277)
	end
	end
	
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
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
	
	local library = {}
	
	function library:AddWindow(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 0
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local Hovxrz = Instance.new("ScreenGui")
	Hovxrz.Name = "Hovxrz"
	Hovxrz.Parent = game.CoreGui
	Hovxrz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = Hovxrz
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
	
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
	Hub.Text = "HUB"
	Hub.TextColor3 = _G.Color
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
	Tab.Size = UDim2.new(0, 150, 0, 265)
	
	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Tab
	
	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 265)
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
	Page.Position = UDim2.new(0.245426834, 0, 0, 30)
	Page.Size = UDim2.new(0, 490, 0, 265)
	
	local PCNR = Instance.new("UICorner")
	PCNR.Name = "PCNR"
	PCNR.Parent = Page
	
	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 265)
	
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
	
	UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode[yoo] then
		if uihide == false then
			uihide = true
			Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
		else
			uihide = false
			Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
		end
	end
	end)
	
	local uitab = {}
	
	function uitab:AddTab(text)
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
	MainFramePage.Size = UDim2.new(0, 490, 0, 265)
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
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end
			TweenService:Create(
				TabButton,
				TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
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
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end
			TweenService:Create(
				TabButton,
				TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
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
	function main:AddButton(text,callback)
		local Button = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local TextBtn = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local Black = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		
		Button.Name = "Button"
		Button.Parent = MainFramePage
		Button.BackgroundColor3 = _G.Color
		Button.Size = UDim2.new(0, 470, 0, 31)
		
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Button
		
		TextBtn.Name = "TextBtn"
		TextBtn.Parent = Button
		TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		TextBtn.Position = UDim2.new(0, 1, 0, 1)
		TextBtn.Size = UDim2.new(0, 468, 0, 29)
		TextBtn.AutoButtonColor = false
		TextBtn.Font = Enum.Font.GothamSemibold
		TextBtn.Text = text
		TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
		TextBtn.TextSize = 15.000
		
		UICorner_2.CornerRadius = UDim.new(0, 5)
		UICorner_2.Parent = TextBtn
		
		Black.Name = "Black"
		Black.Parent = Button
		Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Black.BackgroundTransparency = 1.000
		Black.BorderSizePixel = 0
		Black.Position = UDim2.new(0, 1, 0, 1)
		Black.Size = UDim2.new(0, 468, 0, 29)
		
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
			TextBtn.TextSize = 0
			TweenService:Create(
				TextBtn,
				TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
				{TextSize = 15}
			):Play()
			callback()
		end)
	end
	function main:AddToggle(text,config,callback)
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
	
		Toggle.Name = "Toggle"
		Toggle.Parent = MainFramePage
		Toggle.BackgroundColor3 = _G.Color
		Toggle.Size = UDim2.new(0, 470, 0, 31)
	
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Toggle
	
		Button.Name = "Button"
		Button.Parent = Toggle
		Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Button.Position = UDim2.new(0, 1, 0, 1)
		Button.Size = UDim2.new(0, 468, 0, 29)
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
		Label.Size = UDim2.new(0, 468, 0, 29)
		Label.Font = Enum.Font.GothamSemibold
		Label.Text = text
		Label.TextColor3 = Color3.fromRGB(225, 225, 225)
		Label.TextSize = 15.000
	
		ToggleImage.Name = "ToggleImage"
		ToggleImage.Parent = Toggle
		ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
		ToggleImage.Position = UDim2.new(0, 415, 0, 5)
		ToggleImage.Size = UDim2.new(0, 45, 0, 20)
	
		UICorner_3.CornerRadius = UDim.new(0, 10)
		UICorner_3.Parent = ToggleImage
	
		Circle.Name = "Circle"
		Circle.Parent = ToggleImage
		Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
		Circle.Position = UDim2.new(0, 2, 0, 2)
		Circle.Size = UDim2.new(0, 16, 0, 16)
	
		UICorner_4.CornerRadius = UDim.new(0, 10)
		UICorner_4.Parent = Circle
	
		Button.MouseButton1Click:Connect(function()
			if toggled == false then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = _G.Color}
				):Play()
			else
				toggled = false
				Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
				):Play()
			end
			pcall(callback,toggled)
		end)
	
		if config == true then
			toggled = true
			Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
			TweenService:Create(
				Circle,
				TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
				{BackgroundColor3 = _G.Color}
			):Play()
			pcall(callback,toggled)
		end
	end
	function main:AddDropdown(text,option,callback)
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
		Dropdown.Size = UDim2.new(0, 470, 0, 31)
		
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Dropdown
		
		DropTitle.Name = "DropTitle"
		DropTitle.Parent = Dropdown
		DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropTitle.BackgroundTransparency = 1.000
		DropTitle.Size = UDim2.new(0, 470, 0, 31)
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
		DropScroll.Position = UDim2.new(0, 0, 0, 31)
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
		DropImage.Position = UDim2.new(0, 445, 0, 6)
		DropImage.Rotation = 180.000
		DropImage.Size = UDim2.new(0, 20, 0, 20)
		DropImage.Image = "rbxassetid://6031090990"
		
		DropButton.Name = "DropButton"
		DropButton.Parent = Dropdown
		DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropButton.BackgroundTransparency = 1.000
		DropButton.Size = UDim2.new(0, 470, 0, 31)
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
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end)
	
			Item.MouseLeave:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end)
	
			Item.MouseButton1Click:Connect(function()
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				callback(Item.Text)
				DropTitle.Text = text.." : "..Item.Text
			end)
		end
	
		DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
	
		DropButton.MouseButton1Click:Connect(function()
			if isdropping == false then
				isdropping = true
				Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 0}
				):Play()
			else
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
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
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end)
	
			Item.MouseLeave:Connect(function()
				TweenService:Create(
					Item,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0.5}
				):Play()
			end)
	
			Item.MouseButton1Click:Connect(function()
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				callback(Item.Text)
				DropTitle.Text = text.." : "..Item.Text
			end)
		end
		function dropfunc:Clear()
			DropTitle.Text = tostring(text).." : "
			isdropping = false
			Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
			TweenService:Create(
				DropImage,
				TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
				{Rotation = 180}
			):Play()
			for i,v in next, DropScroll:GetChildren() do
				if v:IsA("TextButton") then
					v:Destroy()
				end
			end
		end
		return dropfunc
	end
	
	function main:AddSlider(text,min,max,set,callback)
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
		Slider.BackgroundColor3 = _G.Color
		Slider.BackgroundTransparency = 0
		Slider.Size = UDim2.new(0, 470, 0, 51)
	
		slidercorner.CornerRadius = UDim.new(0, 5)
		slidercorner.Name = "slidercorner"
		slidercorner.Parent = Slider
	
		sliderr.Name = "sliderr"
		sliderr.Parent = Slider
		sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		sliderr.Position = UDim2.new(0, 1, 0, 1)
		sliderr.Size = UDim2.new(0, 468, 0, 49)
	
		sliderrcorner.CornerRadius = UDim.new(0, 5)
		sliderrcorner.Name = "sliderrcorner"
		sliderrcorner.Parent = sliderr
	
		SliderLabel.Name = "SliderLabel"
		SliderLabel.Parent = sliderr
		SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderLabel.BackgroundTransparency = 1.000
		SliderLabel.Position = UDim2.new(0, 15, 0, 0)
		SliderLabel.Size = UDim2.new(0, 180, 0, 26)
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
		AHEHE.Position = UDim2.new(0, 10, 0, 35)
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
		bar1.BackgroundColor3 = _G.Color
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
		slidervalue.BackgroundColor3 = _G.Color
		slidervalue.BackgroundTransparency = 0
		slidervalue.Position = UDim2.new(0, 395, 0, 5)
		slidervalue.Size = UDim2.new(0, 65, 0, 18)
	
		valuecorner.CornerRadius = UDim.new(0, 5)
		valuecorner.Name = "valuecorner"
		valuecorner.Parent = slidervalue
	
		TextBox.Parent = slidervalue
		TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TextBox.Position = UDim2.new(0, 1, 0, 1)
		TextBox.Size = UDim2.new(0, 63, 0, 16)
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
	
	function main:AddTextbox(text,disappear,callback)
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
		Textbox.BackgroundColor3 = _G.Color
		Textbox.BackgroundTransparency = 0
		Textbox.Size = UDim2.new(0, 470, 0, 31)
	
		TextboxCorner.CornerRadius = UDim.new(0, 5)
		TextboxCorner.Name = "TextboxCorner"
		TextboxCorner.Parent = Textbox
	
		Textboxx.Name = "Textboxx"
		Textboxx.Parent = Textbox
		Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Textboxx.Position = UDim2.new(0, 1, 0, 1)
		Textboxx.Size = UDim2.new(0, 468, 0, 29)
	
		TextboxxCorner.CornerRadius = UDim.new(0, 5)
		TextboxxCorner.Name = "TextboxxCorner"
		TextboxxCorner.Parent = Textboxx
	
		TextboxLabel.Name = "TextboxLabel"
		TextboxLabel.Parent = Textbox
		TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextboxLabel.BackgroundTransparency = 1.000
		TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
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
		RealTextbox.Position = UDim2.new(0, 360, 0, 4)
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
	function main:AddLabel(text)
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
	function main:AddSeperator(text)
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
		Sep1.BackgroundColor3 = _G.Color
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
		Sep3.BackgroundColor3 = _G.Color
		Sep3.BorderSizePixel = 0
		Sep3.Position = UDim2.new(0, 390, 0, 10)
		Sep3.Size = UDim2.new(0, 80, 0, 1)
	end
	
	function main:AddLine()
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
		Line.BackgroundColor3 = _G.Color
		Line.BorderSizePixel = 0
		Line.Position = UDim2.new(0, 0, 0, 10)
		Line.Size = UDim2.new(0, 470, 0, 1)
	end
	return main
	end
	return uitab
	end
	require(game.ReplicatedStorage.Notification).new("<Color=Red>กรุณารอสักครู่สคิปกำลังรัน <Color=/>"):Display()
	require(game.ReplicatedStorage.Notification).new("<Color=Red>อย่าพึงใช้สคิปรอจนกว่าจะขึ้นคำว่า ไวริส<Color=/>"):Display()
	
	local ScreenGui = Instance.new("ScreenGui")
	local ImageButton = Instance.new("ImageButton")
	
	ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	
	ImageButton.Parent = ScreenGui
	ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
	ImageButton.Size = UDim2.new(0, 50, 0, 50)
	ImageButton.Image = "rbxassetid://8848493414"
	ImageButton.Draggable = true
	ImageButton.MouseButton1Down:connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,"RightControl",false,game)
	end)
	
	local win = library:AddWindow("PUTAYA","8620462290",Enum.KeyCode.RightControl)
	local page1 = win:AddTab("Main")
	local page2 = win:AddTab("Combat")
	local page3 = win:AddTab("Boss")
	local page4 = win:AddTab("Teleport")
	local page5 = win:AddTab("Shop")
	local page6 = win:AddTab("Raid")
	local page7 = win:AddTab("Devil Fruits")
	local page8 = win:AddTab("Web Hook")
	local page9 = win:AddTab("Misc")
	function FastAttack()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	end
	function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
	getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
	wait(.1)
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
	end
	function topos(Para1)
	Distance = (Para1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance <= 290 then
	Speed = 99999
	elseif Distance >= 400 then
	Speed = 270
	end
	game:GetService("TweenService"):Create(
	game.Players.LocalPlayer.Character.HumanoidRootPart,
	TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
	{CFrame = Para1}
	):Play()
	end
	function Buso()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
	end
	local OldWorld = false
	local Sea2 = false
	local ThreeWorld = false
	local placeId = game.PlaceId
	if placeId == 2753915549 then
	OldWorld = true
	elseif placeId == 4442272183 then
	Sea2 = true
	elseif placeId == 7449423635 then
	ThreeWorld = true
	end
	local placeId = game.PlaceId
	if placeId == 2753915549 then
	OldWorld = true
	elseif placeId == 4442272183 then
	NewWorld =  true
	elseif placeId == 7449423635 then
	ThirdWorld =  true
	end
	WeaponList = {}
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	table.insert(WeaponList,v.Name)
	end
	page1:AddSeperator("Putaya BloxFruit Mobile [V.1.1]")
	local SelectToolWeapona = page1:AddDropdown("SelectWeapon",WeaponList,function(Select)
	_G.SelectWeapon = Select
	end)
	page1:AddButton("Refresh Weapon", function()
	SelectToolWeapona:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	if v:IsA("Tool") then
		SelectToolWeapona:Add(v.Name)
	end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if v:IsA("Tool") then
	SelectToolWeapona:Add(v.Name)
	end
	end
	end)
	
	page1:AddLine()
	function LV()
	local lv = game.Players.LocalPlayer.Data.Level.Value
	if OldWorld then
	if lv == 1 or lv <= 9 then
		Mon = "Bandit [Lv. 5]"
		NameQ = "BanditQuest1"
		NumberQ = 1
		NameMon = "Bandit"
		POSQ = CFrame.new(1061.11, 16.3627, 1549.23)
	elseif lv == 10 or lv <= 14 then
		Mon = "Monkey [Lv. 14]"
		NameQ = "JungleQuest"
		NumberQ = 1
		NameMon = "Monkey"
		POSQ = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
	elseif lv == 15 or lv <= 29 then
		Mon = "Gorilla [Lv. 20]"
		NameQ ="JungleQuest"
		NumberQ = 2
		NameMon = "Gorilla"
		POSQ = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
	elseif lv == 30 or lv <= 39 then
		Mon = "Pirate [Lv. 35]"
		NameQ ="BuggyQuest1"
		NumberQ = 1
		NameMon = "Pirate"
		POSQ = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
	elseif lv == 40 or lv <= 59 then
		Mon = "Brute [Lv. 45]"
		NameQ ="BuggyQuest1"
		NumberQ = 2
		NameMon = "Brute"
		POSQ = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
	elseif lv == 60 or lv <= 74 then
		Mon = "Desert Bandit [Lv. 60]"
		NameQ ="DesertQuest"
		NumberQ = 1 
		NameMon = "Desert Bandit"
		POSQ = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
	elseif lv == 75 or lv <= 89 then
		Mon = "Desert Officer [Lv. 70]"
		NameQ ="DesertQuest"
		NumberQ = 2 
		NameMon = "Desert Officer"
		POSQ = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
	elseif lv == 90 or lv <= 99 then
		Mon = "Snow Bandit [Lv. 90]"
		NameQ ="SnowQuest"
		NumberQ = 1 
		NameMon = "Snow Bandit"
		POSQ = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
	elseif lv == 100 or lv <= 119 then
		Mon = "Snowman [Lv. 100]"
		NameQ ="SnowQuest"
		NumberQ = 2 
		NameMon = "Snowman"
		POSQ = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
	elseif lv == 120 or lv <= 149 then
		Mon = "Chief Petty Officer [Lv. 120]"
		NameQ ="MarineQuest2"
		NumberQ = 1 
		NameMon = "Chief Petty Officer"
		POSQ = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
	elseif lv == 150 or lv <= 174 then
		Mon = "Sky Bandit [Lv. 150]"
		NameQ ="SkyQuest"
		NumberQ = 1 
		NameMon = "Sky Bandit"
		POSQ = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
	elseif lv == 175 or lv <= 189 then
		Mon = "Dark Master [Lv. 175]"
		NameQ ="SkyQuest"
		NumberQ = 2
		NameMon = "Dark Master"
		POSQ = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
	elseif lv == 190 or lv <= 209 then
		Mon = "Prisoner [Lv. 190]"
		NameQ ="PrisonerQuest"
		NumberQ = 1
		NameMon = "Prisoner"
		POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
	elseif lv == 210 or lv <= 249 then
		Mon = "Dangerous Prisoner [Lv. 210]"
		NameQ ="PrisonerQuest"
		NumberQ = 2
		NameMon = "Dangerous Prisoner"
		POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
	elseif lv == 250 or lv <= 274 then
		Mon = "Toga Warrior [Lv. 250]"
		NameQ ="ColosseumQuest"
		NumberQ = 1 
		NameMon = "Toga Warrior"
		POSQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
	elseif lv == 275 or lv <= 300 then
		Mon = "Gladiator [Lv. 275]"
		NameQ ="ColosseumQuest"
		NumberQ = 2 
		NameMon = "Gladiator"
		POSQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
	elseif lv == 300 or lv <= 324 then
		Mon = "Military Soldier [Lv. 300]"
		NameQ ="MagmaQuest"
		NumberQ = 1 
		NameMon = "Military Soldier"
		POSQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
	elseif lv == 325 or lv <= 375 then
		Mon = "Military Spy [Lv. 325]"
		NameQ ="MagmaQuest"
		NumberQ = 2 
		NameMon = "Military Spy"
		POSQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
	elseif lv == 375 or lv <= 400 then
		Mon = "Fishman Warrior [Lv. 375]"
		NameQ ="FishmanQuest"
		NumberQ = 1 
		NameMon = "Fishman Warrior"
		POSQ = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif lv == 400 or lv <= 450 then
		Mon = "Fishman Commando [Lv. 400]"
		NameQ ="FishmanQuest"
		NumberQ = 2
		NameMon = "Fishman Commando"
		POSQ = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		end
	elseif lv == 450 or lv <= 475 then
		Mon = "God's Guard [Lv. 450]"
		NameQ ="SkyExp1Quest"
		NumberQ = 1
		NameMon = "God's Guard"
		POSQ = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		end
	elseif lv == 475 or lv <= 525 then
		Mon = "Shanda [Lv. 475]"
		NameQ ="SkyExp1Quest"
		NumberQ = 2
		NameMon = "Shanda"
		POSQ = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
		if  _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
	elseif lv == 525 or lv <= 550 then
		Mon = "Royal Squad [Lv. 525]"
		NameQ ="SkyExp2Quest"
		NumberQ = 1
		NameMon = "Royal Squad"
		POSQ = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
		if  _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
	elseif lv == 550 or lv <= 625 then
		Mon = "Royal Soldier [Lv. 550]"
		NameQ ="SkyExp2Quest"
		NumberQ = 2
		NameMon = "Royal Soldier"
		POSQ = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
		if  _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
	elseif lv == 625 or lv <= 650 then
		Mon = "Galley Pirate [Lv. 625]"
		NameQ ="FountainQuest"
		NumberQ = 1
		NameMon = "Galley Pirate"
		POSQ = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
	elseif lv >= 650 then
		Mon = "Galley Captain [Lv. 650]"
		NameQ ="FountainQuest"
		NumberQ = 2
		NameMon = "Galley Captain"
		POSQ = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
	end
	end
	if NewWorld then
	if lv == 700 or lv <= 724 then
		Mon = "Raider [Lv. 700]"
		NameQ ="Area1Quest"
		NumberQ = 1
		NameMon = "Raider"
		POSQ = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
	elseif lv == 725 or lv <= 774 then
		Mon = "Mercenary [Lv. 725]"
		NameQ ="Area1Quest"
		NumberQ = 2
		NameMon = "Mercenary"
		POSQ = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
	elseif lv == 775 or lv <= 799 then
		Mon = "Swan Pirate [Lv. 775]"
		NameQ ="Area2Quest"
		NumberQ = 1
		NameMon = "Swan Pirate"
		POSQ = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
	elseif lv == 800 or lv <= 874 then
		Mon = "Factory Staff [Lv. 800]"
		NameQ ="Area2Quest"
		NumberQ = 2
		NameMon = "Factory Staff"
		POSQ = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
	elseif lv == 875 or lv <= 899 then
		Mon = "Marine Lieutenant [Lv. 875]"
		NameQ ="MarineQuest3"
		NumberQ = 1
		NameMon = "Marine Lieutenant"
		POSQ = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
	elseif lv == 900 or lv <= 949 then
		Mon = "Marine Captain [Lv. 900]"
		NameQ ="MarineQuest3"
		NumberQ = 2
		NameMon = "Marine Captain"
		POSQ = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
	elseif lv == 950 or lv <= 974 then
		Mon = "Zombie [Lv. 950]"
		NameQ ="ZombieQuest"
		NumberQ = 1
		NameMon = "Zombie"
		POSQ = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
	elseif lv == 975 or lv <= 999 then
		Mon = "Vampire [Lv. 975]"
		NameQ ="ZombieQuest"
		NumberQ = 2 
		NameMon = "Vampire"
		POSQ = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
	elseif lv == 1000 or lv <= 1049 then
		Mon = "Snow Trooper [Lv. 1000]"
		NameQ ="SnowMountainQuest"
		NumberQ = 1 
		NameMon = "Snow Trooper"
		POSQ = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
	elseif lv == 1050 or lv <= 1099 then
		Mon = "Winter Warrior [Lv. 1050]"
		NameQ ="SnowMountainQuest"
		NumberQ = 2
		NameMon = "Winter Warrior"
		POSQ = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
	elseif lv == 1100 or lv <= 1124 then
		Mon = "Lab Subordinate [Lv. 1100]"
		NameQ ="IceSideQuest"
		NumberQ = 1
		NameMon = "Lab Subordinate"
		POSQ = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
	elseif lv == 1125 or lv <= 1174 then
		Mon = "Horned Warrior [Lv. 1125]"
		NameQ ="IceSideQuest"
		NumberQ = 2
		NameMon = "Horned Warrior"
		POSQ = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
	elseif lv == 1175 or lv <= 1199 then
		Mon = "Magma Ninja [Lv. 1175]"
		NameQ ="FireSideQuest"
		NumberQ = 1
		NameMon = "Magma Ninja"
		POSQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
	elseif lv == 1200 or lv <= 1249 then
		Mon = "Lava Pirate [Lv. 1200]"
		NameQ ="FireSideQuest"
		NumberQ = 2
		NameMon = "Lava Pirate"
		POSQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
	elseif lv == 1250 or lv <= 1274 then
		Mon = "Ship Deckhand [Lv. 1250]"
		NameQ ="ShipQuest1"
		NumberQ = 1
		NameMon = "Ship Deckhand"
		POSQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif lv == 1275 or lv <= 1299 then
		Mon = "Ship Engineer [Lv. 1275]"
		NameQ ="ShipQuest1"
		NumberQ = 2
		NameMon = "Ship Engineer"
		POSQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif lv == 1300 or lv <= 1325 then
		Mon = "Ship Steward [Lv. 1300]"
		NameQ ="ShipQuest2"
		NumberQ = 1
		NameMon = "Ship Steward"
		POSQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif lv == 1325 or lv <= 1350 then
		Mon = "Ship Officer [Lv. 1325]"
		NameQ ="ShipQuest2"
		NumberQ = 2
		NameMon = "Ship Officer"
		POSQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		end
	elseif lv == 1350 or lv <= 1375 then
		Mon = "Arctic Warrior [Lv. 1350]"
		NameQ ="FrostQuest"
		NumberQ = 1
		NameMon = "Arctic Warrior"
		POSQ = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
		if _G.Auto_Farm and (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
	elseif lv == 1375 or lv <= 1425 then
		Mon = "Snow Lurker [Lv. 1375]"
		NameQ ="FrostQuest"
		NumberQ = 2
		NameMon = "Snow Lurker"
		POSQ = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
	elseif lv == 1425 or lv <= 1450 then
		Mon = "Sea Soldier [Lv. 1425]"
		NameQ ="ForgottenQuest"
		NumberQ = 1
		NameMon = "Sea Soldier"
		POSQ = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
	elseif lv >= 1450 then
		Mon = "Water Fighter [Lv. 1450]"
		NameQ ="ForgottenQuest"
		NumberQ = 2
		NameMon = "Water Fighter"
		POSQ = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
	end
	end
	if ThirdWorld then
	if lv == 1500 or lv <= 1525 then
		Mon = "Pirate Millionaire [Lv. 1500]"
		NameQ ="PiratePortQuest"
		NumberQ = 1
		NameMon = "Pirate Millionaire"
		POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
	elseif lv == 1525 or lv <= 1575 then
		Mon = "Pistol Billionaire [Lv. 1525]"
		NameQ ="PiratePortQuest"
		NumberQ = 2
		NameMon = "Pistol Billionaire"
		POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
	elseif lv == 1575 or lv <= 1600 then
		Mon = "Dragon Crew Warrior [Lv. 1575]"
		NameQ ="AmazonQuest"
		NumberQ = 1
		NameMon = "Dragon Crew Warrior"
		POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
	elseif lv == 1600 or lv <= 1625 then
		Mon = "Dragon Crew Archer [Lv. 1600]"
		NameQ ="AmazonQuest"
		NumberQ = 2
		NameMon = "Dragon Crew Archer"
		POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
	elseif lv == 1625 or lv <= 1650 then
		Mon = "Female Islander [Lv. 1625]"
		NameQ ="AmazonQuest2"
		NumberQ = 1
		NameMon = "Female Islander"
		POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
	elseif lv == 1650 or lv <= 1700 then
		Mon = "Giant Islander [Lv. 1650]"
		NameQ ="AmazonQuest2"
		NumberQ = 2
		NameMon = "Giant Islander"
		POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
	elseif lv == 1700 or lv <= 1725 then
		Mon = "Marine Commodore [Lv. 1700]"
		NameQ ="MarineTreeIsland"
		NumberQ = 1
		NameMon = "Marine Commodore"
		POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
	elseif lv == 1725 or lv <= 1775 then
		Mon = "Marine Rear Admiral [Lv. 1725]"
		NameQ ="MarineTreeIsland"
		NumberQ = 2
		NameMon = "Marine Rear Admiral"
		POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
	elseif lv == 1775 or lv <= 1800 then
		Mon = "Fishman Raider [Lv. 1775]"
		NameQ ="DeepForestIsland3"
		NumberQ = 1
		NameMon = "Fishman Raider"
		POSQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
	elseif lv == 1800 or lv <= 1825 then
		Mon = "Fishman Captain [Lv. 1800]"
		NameQ ="DeepForestIsland3"
		NumberQ = 2
		NameMon = "Fishman Captain"
		POSQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
	elseif lv == 1825 or lv <= 1850 then
		Mon = "Forest Pirate [Lv. 1825]"
		NameQ ="DeepForestIsland"
		NumberQ = 1
		NameMon = "Forest Pirate"
		POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
	elseif lv == 1850 or lv <= 1900 then
		Mon = "Mythological Pirate [Lv. 1850]"
		NameQ ="DeepForestIsland"
		NumberQ = 2
		NameMon = "Mythological Pirate"
		POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
	elseif lv == 1900 or lv <= 1925 then
		Mon = "Jungle Pirate [Lv. 1900]"
		NameQ ="DeepForestIsland2"
		NumberQ = 1
		NameMon = "Jungle Pirate"
		POSQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
	elseif lv == 1925 or lv <= 1975 then
		Mon = "Musketeer Pirate [Lv. 1925]"
		NameQ ="DeepForestIsland2"
		NumberQ = 2
		NameMon = "Musketeer Pirate"
		POSQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
	elseif lv == 1975 or lv <= 2000 then
		Mon = "Reborn Skeleton [Lv. 1975]"
		NameQ ="HauntedQuest1"
		NumberQ = 1
		NameMon = "Reborn Skeleton"
		POSQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
	elseif lv == 2000 or lv <= 2025 then
		Mon = "Living Zombie [Lv. 2000]"
		NameQ ="HauntedQuest1"
		NumberQ = 2
		NameMon = "Living Zombie"
		POSQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
	elseif lv == 2025 or lv <= 2050 then
		Mon = "Demonic Soul [Lv. 2025]"
		NameQ ="HauntedQuest2"
		NumberQ = 1
		NameMon = "Demonic Soul"
		POSQ = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
	elseif lv == 2050 or lv <= 2075 then
		Mon = "Posessed Mummy [Lv. 2050]" 
		NameQ ="HauntedQuest2"
		NumberQ = 2
		NameMon = "Posessed Mummy"
		POSQ = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
	elseif lv == 2075 or lv <= 2100 then
		Mon = "Peanut Scout [Lv. 2075]"
		NameQ ="NutsIslandQuest"
		NumberQ = 1
		NameMon = "Peanut Scout"
		POSQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
	elseif lv == 2100 or lv <= 2125 then
		Mon = "Peanut President [Lv. 2100]"
		NameQ ="NutsIslandQuest"
		NumberQ = 2
		NameMon = "Peanut President"
		POSQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
	elseif lv == 2125 or lv <= 2150 then
		Mon = "Ice Cream Chef [Lv. 2125]"
		NameQ ="IceCreamIslandQuest"
		NumberQ = 1
		NameMon = "Ice Cream Chef"
		POSQ = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
	elseif lv == 2150 or lv <= 2199 then
		Mon = "Ice Cream Commander [Lv. 2150]"
		NameQ ="IceCreamIslandQuest"
		NumberQ = 2
		NameMon = "Ice Cream Commander"
		POSQ = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
	elseif lv == 2200 or lv <= 2224 then
		Mon = "Cookie Crafter [Lv. 2200]"
		NameQ ="CakeQuest1"
		NumberQ = 1
		NameMon = "Cookie Crafter"
		POSQ = CFrame.new(-2021.845947265625, 43.73057174682617, -12032.326171875)
	elseif lv == 2225 or lv <= 2249 then
		Mon = "Cake Guard [Lv. 2225]"
		NameQ ="CakeQuest1"
		NumberQ = 2
		NameMon = "Cake Guard"
		POSQ = CFrame.new(-2021.845947265625, 43.73057174682617, -12032.326171875)
	elseif lv == 2250 or lv <= 2274 then
		Mon = "Baking Staff [Lv. 2250]"
		NameQ ="CakeQuest2"
		NumberQ = 1
		NameMon = "Baking Staff"
		POSQ = CFrame.new(-1926.545166015625, 37.82309341430664, -12841.3876953125)
	elseif lv >= 2275 then
		Mon = "Head Baker [Lv. 2275]"
		NameQ ="CakeQuest2"
		NumberQ = 2
		NameMon = "Head Baker"
		POSQ = CFrame.new(-1926.545166015625, 37.82309341430664, -12841.3876953125)
	
	end
	end
	end
	spawn(function()
	pcall(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.Auto_Farm or _G.Tp or _G.MobKill or TPAWAKE or TPLAB or _G.Auto_Farm_Bounty or _G.Second or _G.AutoFarmCandies or _G.FarmMasDf or _G.Thrid or _G.Pole or _G.AutoFarmBone or _G.AutoElectricClaw or _G.AutoDragonTalon or _G.Factory or _G.Seabeast or _G.AutoSaber or _G.Buddy or _G.AutoObservation or _G.Canvender or _G.AutoHallowScythe or _G.AutoElitehunter or _G.AutoHolyTorch or _G.Tushita or _G.TwinHooks or _G.DarkDagger or _G.AutoRengoku or _G.Serpentbow or _G.AutoBartilo or _G.Trident or _G.Longsword or _G.SwanGlasses then
			for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = false    
				end
			end
		end
	end)
	end)
	end)
	spawn(function()
	while wait() do
	pcall(function()
		if _G.Auto_Farm then
			LV()
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				MagnetMon = false
				topos(POSQ)
				SuperhumanFarm = true
				if (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
					wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQ,NumberQ)
					wait(.3)
				end
			elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == Mon then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								if v.Humanoid.Health > 0 then
									if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
											repeat wait()
												Buso()
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.CanCollide = false
												v.Head.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
												MagnetMon = true
												SuperhumanFarm = false
												PosMon = v.HumanoidRootPart.CFrame
												OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
												v.Humanoid:ChangeState(11)
										until not _G.Auto_Farm or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									else
										MagnetMon = false
										SuperhumanFarm = false
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
									end
								end
							end
						end
					end
				else
					MagnetMon = false
					SuperhumanFarm = false
					if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
					else
						if (POSQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if PosMon ~= nil then
								topos(PosMon * CFrame.new(0,40,0))
							else
								if OldPos ~= nil then
									topos(OldPos.Position)
								end
							end
						end
					end
				end
			end
		end
	end)
	end
	end)
	spawn(function()
	pcall(function()
	while wait() do
		if _G.Auto_Farm or _G.Tp or _G.Auto_Farm_Bounty or _G.MobKill or TPAWAKE or TPLAB or _G.AutoFarmCandies or TPI1 or TPI2 or TPI3 or TPI4 or TPI5 or _G.Second or _G.FarmMasDf or _G.Thrid or _G.Pole or _G.AutoFarmBone or _G.AutoFarmDungeon or _G.AutoElectricClaw or _G.AutoDragonTalon or _G.Factory or _G.Seabeast or _G.AutoSaber or _G.Buddy or _G.AutoObservation or _G.Canvender or _G.AutoHallowScythe or _G.AutoElitehunter or _G.AutoHolyTorch or _G.Tushita or _G.TwinHooks or _G.DarkDagger or _G.AutoRengoku or _G.Serpentbow or _G.AutoBartilo or _G.Trident or _G.Longsword or _G.SwanGlasses then 
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				local Noclip = Instance.new("BodyVelocity")
				Noclip.Name = "BodyClip"
				Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
				Noclip.MaxForce = Vector3.new(100000,100000,100000)
				Noclip.Velocity = Vector3.new(0,0,0)
			end
		end 
	end
	end)
	end) 
	
	spawn(function()
	while task.wait() do 
	pcall(function()
	if _G.BringMon and MagnetMon then
		LV()
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					if v.Name == "Bandit [Lv. 5]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 400 then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						   end
					elseif v.Name == "Monkey [Lv. 14]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 200 then
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					elseif v.Name == "Gorilla [Lv. 20]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 370 then
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					elseif v.Name == "Pirate [Lv. 35]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 225 then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
						elseif v.Name == "Brute [Lv. 45]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 325 then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Desert Bandit [Lv. 60]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 260 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							  end
					   elseif v.Name == "Desert Officer [Lv. 70]" then
						  if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 280 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							   end
						elseif v.Name == "Snow Bandit [Lv. 90]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 280 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Snowman [Lv. 100]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Chief Petty Officer [Lv. 120]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 400 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Sky Bandit [Lv. 150]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 280 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Dark Master [Lv. 175]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Toga Warrior [Lv. 225]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 365 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Gladiator [Lv. 275]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
						elseif v.Name == "Military Soldier [Lv. 300]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Military Spy [Lv. 330]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Fishman Warrior [Lv. 375]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Fishman Commando [Lv. 400]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "God's Guard [Lv. 450]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Shanda [Lv. 475]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 320 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end	
						elseif v.Name == "Royal Soldier [Lv. 550]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Galley Pirate [Lv. 625]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Galley Captain [Lv. 650]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 300 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Raider [Lv. 700]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 345 then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Mercenary [Lv. 725]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Factory Staff [Lv. 800]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 200 then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Lava Pirate [Lv. 1200]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 270 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Ship Engineer [Lv. 1275]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 275 then
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Ship Officer [Lv. 1325]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 285 then
								
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Water Fighter [Lv. 1450]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 280 then
								
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == "Posessed Mummy [Lv. 2050]" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 290 then
								
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						elseif v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
								
								v.HumanoidRootPart.CFrame = PosMon
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(100,100,100)
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					   end
				end
			end
	end)
	end
	end)
	page1:AddToggle("Auto Farm Level",false, function(value)
	_G.Auto_Farm = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page1:AddToggle("Bring Mon",true,function(value)
	_G.BringMon = value
	end)
	page1:AddToggle("Auto Set Spawn",true, function(value)
	_G.AutoSave = value
	end)
	spawn(function()
	pcall(function()
	while wait() do
		if _G.AutoSave then
			if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end
		end
	end
	end)
	end)
	page1:AddSeperator("Auto World")
	page1:AddToggle("Auto Second Sea",false, function(value) 
	_G.Second = value
	if vu == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Destroy()
	end
	end)
	
	spawn(function()
	while wait() do
	if _G.Second and OldWorld then
		if game.Players.LocalPlayer.Data.Level.Value >= 700 then
			_G.Auto_Farm = false
			if game:GetService("Workspace").Map.Ice.Door.CanCollide == true and game:GetService("Workspace").Map.Ice.Door.Transparency == 0 then 
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
						topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
						EquipWeapon("Key")
					else
					topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
					if (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						wait(1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
					end
				end
			elseif game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
					topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
							if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
								repeat wait()
								Buso()
								EquipWeapon(_G.SelectWeapon)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,DistanceFarm,0))
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(7,5,5)
								v.HumanoidRootPart.Transparency = 1
								_G.FastAttack = true
								until v.Humanoid.Health <= 0  or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
					end
				else
					while wait() do
						pcall(function()
							TPReturner()
							if foundAnything ~= "" then
								TPReturner()
							end
						end)
					end
				end
			end
		end
	end
	end
	end)
	page1:AddToggle("Auto Thrid Sea",false, function(value) 
	_G.Thrid = value
	if vu == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Destroy()
	end
	end)
	spawn(function()
	while wait() do
	if _G.Thrid then
		pcall(function()
			Body()
			if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and NewWorld then
				if _G.Auto_Farm then
					_G.Auto_Farm = false
				end
				repeat
					topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016)) wait() 
					_G.FastAttack = false
				until (Vector3.new(-1926.3221435547, 12.819851875305, 1738.3092041016)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoThirdSea == false
				wait(1.1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
				wait(1.1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
				wait(3)
				if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "rip_indra [Lv. 1500] [Boss]" then
							repeat wait()
								EquipWeapon(_G.SelectWeapon)
								Buso()
								v.Humanoid.WalkSpeed = 0
								_G.FastAttack = true
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
									local bv = Instance.new("BodyVelocity")
									bv.Parent = v.HumanoidRootPart
									bv.MaxForce = Vector3.new(100000,100000,100000)
									bv.Velocity = Vector3.new(0,0,0)
								end
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))   
							until not _G.Thrid or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra [Lv. 1500] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					end
				end
			end
		end)
	end
	end
	end)
	spawn(function()
	while wait() do
	pcall(function()
		LV()
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if _G.BringMon and MagnetFarm then
				if v.Name == Mon then
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
							if not v.HumanoidRootPart:FindFirstChild("BodyClip") then
								local Noclip = Instance.new("BodyVelocity")
								Noclip.Name = "BodyClip"
								Noclip.Parent = v.HumanoidRootPart
								Noclip.MaxForce = Vector3.new(100000,100000,100000)
								Noclip.Velocity = Vector3.new(0,0,0)
							end
							sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
						end
					end
				end
			end
		end
	end)
	end
	end)
	page1:AddSeperator("Other")
	page1:AddButton("Use Code All", function()
	local x2Code = {
	"3BVISITS",
	"UPD16",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"StrawHatMaine",
	"Sub2OfficialNoobie",
	"SUB2NOOBMASTER123",
	"Sub2Daigrock",
	"Axiore",
	"TantaiGaming",
	"STRAWHATMAINE"
	}
	function RedeemCode(value)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
	end
	for i,v in pairs(x2Code) do
	RedeemCode(v)
	end
	end)
	
	page1:AddToggle("Auto Farm Bone",false,function(value)
	_G.AutoFarmBone = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page1:AddToggle("Kill Mob",false,function(value)
	_G.MobKill = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	spawn(function()
	while wait() do 
	if _G.AutoFarmBone then
		pcall(function()
			if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait()
								Buso()
								EquipWeapon(_G.SelectWeapon)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false 
								_G.FastAttack = true
								MagnetBone = true
								PosMon = v.HumanoidRootPart.CFrame
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
							until not _G.AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				end
				else
				for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
					if v.Name == "Reborn Skeleton [Lv. 1975]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					elseif v.Name == "Living Zombie [Lv. 2000]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					elseif v.Name == "Demonic Soul [Lv. 2025]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					elseif v.Name == "Posessed Mummy [Lv. 2050]" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					end
				end
			end
		end)
	end
	end
	end)
	
	spawn(function()
	while wait() do 
	pcall(function()
		if _G.AutoFarmBone and MagnetBone then
			LV()
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					if v.Name == "Reborn Skeleton [Lv. 1975]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
							
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					elseif v.Name == "Living Zombie [Lv. 2000]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
							
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					elseif v.Name == "Living Zombie [Lv. 2000]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
							
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					elseif v.Name == "Posessed Mummy [Lv. 2050]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 350 then
							
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end
				end
			end
		end
	end)
	end
	end)
	
	page1:AddSeperator("Fight Style")
	page1:AddToggle("Auto Superhuman",false,function(value)
	_G.Auto_Superhuman = value
	end)
	page1:AddToggle("Auto Sharkman",false,function(value)
	_G.AutoSharkman = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page1:AddToggle("Auto Death Step",false,function(value)
	_G.DeathStep = value
	end)
	page1:AddToggle("Auto Electric Claw",false,function(value)
	_G.AutoElectricClaw = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	
	page1:AddToggle("Auto Dragon Talon",false,function(value)
	_G.AutoDragonTalon = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page1:AddSeperator("Farm Mas BF")
	_G.HealthPW = 15
	page1:AddSlider("Health % 100",1,100,15,function(value)
	_G.HealthPW = value
	end)
	page1:AddToggle("Auto Farm BF",false,function(value)
	_G.FarmMasDf = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page1:AddToggle("Skill Z",true,function(value)
	SkillZ = value
	end)
	page1:AddToggle("Skill X",true,function(value)
	SkillX = value
	end)
	page1:AddToggle("Skill C",true,function(value)
	SkillC = value
	end)
	page1:AddToggle("Skill V",true,function(value)
	SkillV = value
	end)
	
	spawn(function()
	while wait() do
	pcall(function()
		if _G.FarmMasDf then
			LV()
			if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				HealthMin = v.Humanoid.MaxHealth * _G.HealthPW/100
				if v.Name == Mon and v.Humanoid.Health >= HealthMin then
					repeat wait()
						Buso()
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Transparency = 1
						MagnetFarmMasDf = true
						EquipWeapon(_G.SelectWeapon)
						FastAttack()
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						MagnetFarmMasDf = true
						USEBF = false
						PosMonMasteryFruit = v.HumanoidRootPart.CFrame
						PosMonMasteryDf = v.HumanoidRootPart.CFrame
					until v.Humanoid.Health <= HealthMin or _G.FarmMasDf == false
				end
				if v.Name == Mon and v.Humanoid.Health < HealthMin then
					repeat wait()
	
						v.Head.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.CanCollide = false
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
							USEBF = true
							else
							EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
						end
						PosMonMasteryFruit = v.HumanoidRootPart.CFrame
						MagnetFarmMasDf = true
						PosMonMasteryDf = v.HumanoidRootPart.CFrame
					until v.Humanoid.Health <= 0 or _G.FarmMasDf == false
				end
			end
			else
				USEBF = false
				PosMonMasteryDf = false
				local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
				if Mob then
					topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
				else
					if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
						task.wait()
						game.Players.LocalPlayer.Character.Humanoid.Jump = false
					end
				end
			end
		end
	end)
	end
	end)
	spawn(function()
	pcall(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if USEBF and PosMonMasteryFruit ~= nil and game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
			local args = {
			[1] = PosMonMasteryFruit.Position
			}
			game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
		end
	end)
	end)
	end)
	spawn(function()
	while wait(.1) do
	if USEBF then
		pcall(function()
		LV()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
				if SkillZ and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
					wait(.3)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
				end
				if SkillX then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
				end
				if SkillC then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
				end
				if SkillV then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
				end
				elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
				if SkillZ then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
				end
				if SkillX then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
				end
				if SkillC then
					local args = {
						[1] = PosMonMasteryFruit.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
					game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
				end
				if SkillV then
					local args = {
						[1] = PosMonMasteryFruit.Position
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
	page2:AddSeperator("Auto Stats")
	page2:AddToggle("Melee",false, function(value)
	_G.Melee = value
	while _G.Melee do wait()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.STATSUPPOINT)
	end
	end)
	page2:AddToggle("Defense",false, function(value)
	_G.DF = value
	while _G.DF do wait()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.STATSUPPOINT)
	end
	end)
	page2:AddToggle("Sword",false, function(value)
	_G.Sword = value
	while _G.Sword do wait()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.STATSUPPOINT)
	end
	end)
	page2:AddToggle("Gun",false, function(value)
	_G.Gun = value
	while _G.Gun do wait()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.STATSUPPOINT)
	end
	end)
	page2:AddToggle("Fruits",false, function(value)
	_G.Fruit = value
	while _G.Fruit do wait()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.STATSUPPOINT)
	end
	end)
	page2:AddSlider("Point",1,100,3, function(value)
	_G.STATSUPPOINT = value
	end)
	page2:AddSeperator("Players")
	players = {}
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(players,v.Name)
	end
	local getdrop = page2:AddDropdown("Players",players, function(value)
	_G.Playersaimbot = value
	end)
	page2:AddButton("Refresh Players", function()
	getdrop:Clear()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
	getdrop:Add(v.Name)
	end
	end)
	
	-- page2:AddToggle("Auto Bounty",false,function(value)
	-- 	_G.Auto_Farm_Bounty = value
	--     if value == false then
	--         wait()
	--         topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	--         game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	--     end
	-- end)
	-- page2:AddToggle("Auto Bounty Hop",false,function(value)
	-- 	_G.Auto_Farm_Bounty_Hop = value
	-- end)
	function CheckGunPlayer()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
	for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			if v:FindFirstChild("RemoteFunctionShoot") and v.ToolTip == "Gun" then 
				_G.GunWeapon = v.Name
			end
			if v2:FindFirstChild("RemoteFunctionShoot") and v2.ToolTip == "Gun" then
				_G.GunWeapon = v2.Name
			end
		end
	end
	end
	end
	
	StckKilled = 0
	spawn(function()
	while wait() do
	pcall(function()
	if _G.Auto_Farm_Bounty then
	for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
		if v.Name == "NotificationTemplate" then
			if string.find(v.Text,"from killing") then
				StckKilled = StckKilled + 1
			end
			if string.find(v.Text,"No reward") then
				v:Destroy()
				StckKilled = StckKilled + 1
			end
		end
	end
	end
	end)
	end
	end)
	
	spawn(function()
	while wait() do
	pcall(function()
	if _G.Auto_Farm_Bounty then
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
	end
	end)
	end
	end)
	
	spawn(function()
	while task.wait() do
	pcall(function()
	if _G.Auto_Farm_Bounty then
	game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
	spawn(function()
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
		game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
		game.Players.LocalPlayer.Character.Animate.Disabled = true
	end)
	end
	end)
	end
	end)
	CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
	MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
	Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
	HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
	spawn(function()
	while wait() do
	pcall(function()
	if _G.Auto_Farm_Bounty then
	for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
				plyselecthunthelpold = v.Humanoid.Health
				repeat task.wait()
					EquipWeapon(_G.GunWeapon)
					NameTarget = v.Name
					if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
						topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
					elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
						if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
							topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
						end
					end
					spawn(function()
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
							StartCheckTarget = true
						end
					end)
					v.HumanoidRootPart.CanCollide = false
					spawn(function()
						pcall(function()
							FastAttack()
							local args = {
								[1] = v.Character.HumanoidRootPart.Position,
								[2] = v.Character.HumanoidRootPart
							}
							game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
						end)
					end)
					TargetSelectHunt = v.Humanoid
				until _G.Auto_Farm_Bounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
				NextplySelect = false
				StartCheckTarget = false
			end
		end
	end
	end
	end)
	end
	end)
	
	spawn(function()
	pcall(function()
	while task.wait() do
	if _G.Auto_Farm_Bounty then
	game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
	game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
	end
	end
	end)
	end)
	
	spawn(function()
	pcall(function()
	while wait() do
	if _G.Auto_Farm_Bounty then
	if TargetSelectHunt ~= nil then
		if StartCheckTarget then
			wait(6.5)
			if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
				NextplySelect = true
				TargetSelectHunt = nil
			end
		end
	end
	end
	end
	end)
	end)
	
	spawn(function()
	pcall(function()
	while wait(.1) do
	if _G.Auto_Farm_Bounty then
	if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
	end
	end
	end
	end)
	end)
	
	spawn(function()
	while wait() do
	if _G.Auto_Farm_Bounty then
	if _G.Auto_Farm_Bounty_Hop then
	pcall(function()
		wait(120)
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
	end
	end
	end
	end)
	
	function AimbotPlayerNear()
	pcall(function()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name == game.Players.LocalPlayer.Name then
		else
			if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
				CheckGunPlayer()
				local args = {
					[1] = v.Character.HumanoidRootPart.Position,
					[2] = v.Character.HumanoidRootPart
				}
				game:GetService("Players").LocalPlayer.Character[_G.GunWeapon].RemoteFunctionShoot:InvokeServer(unpack(args))
			end
		end
	end
	end)
	end
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
	CheckGunPlayer()
	if AimBot and game.Players.LocalPlayer.Character:FindFirstChild(_G.GunWeapon) then 
	AimbotPlayerNear()
	end
	end)
	
	function PlayerNear()
	pcall(function()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name == game.Players.LocalPlayer.Name then
		else
			if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
				TargetPlayerAim = v.Name
			end
		end
	end
	end)
	end
	
	spawn(function()
	pcall(function()
	game:GetService("RunService").RenderStepped:connect(function()
		if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
			PlayerNear()
			local args = {
				[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
			}
			game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
		end
	end)
	end)
	end)
	
	page2:AddToggle("AimBot Gun Near",false, function(value)
	AimBot = value
	end)
	
	page2:AddToggle("Aimbot Skill Near",false, function(value)
	AimSkillNearest = value
	end)
	
	function PlayerNear()
	pcall(function()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name == game.Players.LocalPlayer.Name then
		else
			if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
				_G.PlayerTest = v.Name
			end
		end
	end
	end)
	end
	spawn(function()
	pcall(function()
	game.GetService(game, "RunService").Heartbeat:Connect(function()
		if _G.Playersaimbot then
			pcall(function()
				PlayerNear()
				local args = {
					[1] =  game:GetService("Players"):FindFirstChild(_G.PlayerTest).Character.HumanoidRootPart.Position
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
			end)
		end
	end)
	end)
	end)
	
	page3:AddLine()
	
	spawn(function()
	pcall(function()
	while wait() do 
		if _G.Auto_Superhuman and SuperhumanFarm then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
			end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
					_G.SelectWeapon = "Black Leg"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
					_G.SelectWeapon = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
					_G.SelectWeapon = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
					_G.SelectWeapon = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
				end 
			end
		end
	end
	end)
	end)
	
	
	spawn(function()
	while wait() do
	if _G.AutoSharkman then
	pcall(function()
	Body()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
	if game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
	topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	else 
	if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then   
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
			repeat wait()
				Buso()
				v.HumanoidRootPart.CanCollide = false
				v.HumanoidRootPart.Size = Vector3.new(60,60,60)
				v.Humanoid.WalkSpeed = 0
				if not v.HumanoidRootPart:FindFirstChild("BodyClip") then
					local bv = Instance.new("BodyClip")
					bv.Parent = v.HumanoidRootPart
					bv.MaxForce = Vector3.new(100000,100000,100000)
					bv.Velocity = Vector3.new(0,0,0)
				end
				topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
				game:GetService("VirtualUser"):CaptureController()
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
			until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")                                            
		end
	end
	else
	if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
	end
	end
	end
	else 
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
	end)
	end
	end
	end)
	spawn(function()
	while wait() do 
	if _G.DeathStep then
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") then
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
	local args = {
	[1] = "BuyDeathStep"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	_G.SelectWeapon = "Death Step"
	end  
	if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
	local args = {
	[1] = "BuyDeathStep"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
	_G.SelectWeapon = "Death Step"
	end  
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
	_G.SelectWeapon = "Black Leg"
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
	spawn(function()
	pcall(function()
	while wait() do
	if _G.AutoElectricClaw then
	Body()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	_G.SelectWeapon = "Electric Claw"
	end  
	if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	_G.SelectWeapon = "Electric Claw"
	end  
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
	_G.SelectWeapon = "Electro"
	end 
	else
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
	end
	if _G.AutoElectricClaw then
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
	if _G.Auto_Farm == false then
	repeat wait()
		topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
	until not _G.AutoElectricClaw or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
	wait(2)
	repeat wait()
		topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
	until not _G.AutoElectricClaw or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
	wait(1)
	repeat wait()
		topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
	until not _G.AutoElectricClaw or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
	wait(1)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	elseif _G.Auto_Farm == true then
	_G.Auto_Farm = false
	wait(1)
	repeat wait()
		topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
	until not _G.AutoElectricClaw or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
	wait(2)
	repeat wait()
		topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
	until not _G.AutoElectricClaw or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
	wait(1)
	repeat wait()
		topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
	until not _G.AutoElectricClaw or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
	wait(1)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	_G.SelectWeapon = "Electric Claw"
	wait(.1)
	_G.Auto_Farm = true
	end
	end
	end
	end
	end
	end)
	end)
	spawn(function()
	while wait() do
	if _G.AutoDragonTalon then
	Body()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	_G.SelectWeapon = "Dragon Talon"
	end  
	if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	_G.SelectWeapon = "Dragon Talon"
	end  
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
	_G.SelectWeapon = "Dragon Claw"
	end 
	else 
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
	end
	end
	end)
	page3:AddSeperator("Factory")
	page3:AddToggle("Auto Factory",false,function(value)
	_G.Factory = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Factory-Hop",false,function(value)
	_G.Factory_Hop = value
	end)
	page3:AddSeperator("FarmBoss")
	spawn(function()
	while wait() do
	if _G.Factory and NewWorld then
	pcall(function()
	if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Core" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Factory == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Core") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Core").HumanoidRootPart.CFrame)
	else
	if _G.Factory_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page3:AddToggle("Auto Farm Boss All",false,function(value)
	_G.AutoFarmAllBoss = value
	end)
	spawn(function()
	while wait() do 
	pcall(function()
	if _G.AutoFarmAllBoss then
	for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name , "Boss") then
	repeat wait()
	local magnitude = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if magnitude < 1000 then
	EquipWeapon(_G.SelectWeapon)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,15,8)
	v.HumanoidRootPart.Size = Vector3.new(40,40,40)
	v.HumanoidRootPart.Transparency = 1
	v.HumanoidRootPart.CanCollide = true
	v.Humanoid.WalkSpeed = 0
	v.Humanoid:ChangeState(11)
	FastAttack()
	else
		topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
	end
	until v.Humanoid.Health <= 0 or _G.AutoFarmAllBoss == false
	end
	end
	end
	end)
	end
	end)
	page3:AddLine()
	page3:AddSeperator("Cake Prince")
	page3:AddToggle("Auto Boss Cake Prince",false,function(value)
	_G.AutoFarmCandies = value
	if value == false then
	wait() 
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Boss Cake Prince Hop",false,function(value)
	_G.AutoFarmCandies_Hop = value
	end)
	
	page3:AddLine()
	
	page3:AddSeperator("Sea Beach")
	page3:AddToggle("Auto SeaBeach",false,function(value)
	_G.Seabeast = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto SeaBeach-Hop",false,function(value)
	_G.Seabeast_Hop = value
	end)
	spawn(function()
	while wait() do
	pcall(function()
	Body()
	if _G.Seabeast then
	if game:GetService("Workspace").SeaBeasts:FindFirstChild("HumanoidRootPart") then
	for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
	if v:FindFirstChild("HumanoidRootPart") then
	Buso()
	topos(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
	_G.FastAttack = true
	end
	end
	elseif _G.Seabeast_Hop then
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
	end
	end
	end)
	end
	end)
	page3:AddLine()
	page3:AddSeperator("Saber")
	page3:AddToggle("Auto Saber",false,function(value)
	_G.AutoSaber = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Saber-Hop",false,function(value)
	_G.AutoSaber_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.AutoSaber and OldWorld then
	pcall(function()
	Body()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value 
	local Part = game:GetService("Workspace").Map.Jungle.Final:FindFirstChild("Part")
	if MyLevel >= 200 and Part.CanCollide == true and Part.Transparency == 0 then
	repeat                
	wait(.1)
	if not game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") then
	repeat 
		topos(CFrame.new(-1421.87024, 55.4666862, 21.7750397)) 
		wait() 
	until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1421.87024, 55.4666862, 21.7750397)).Magnitude <= 3
	wait(.1)
	repeat 
		topos(CFrame.new(-1647.19556, 29.1544189, 438.299408)) 
		wait() 
	until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1647.19556, 29.1544189, 438.299408)).Magnitude <= 3
	wait(.1)
	repeat 
		topos(CFrame.new(-1324.10144, 31.4560413, -461.404114)) 
		wait() 
	until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1324.10144, 31.4560413, -461.404114)).Magnitude <= 3
	wait(.1)
	repeat 
		topos(CFrame.new(-1152.38464, 9.74718285, -700.309875)) 
		wait() 
	until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1152.38464, 9.74718285, -700.309875)).Magnitude <= 3
	wait(.1)
	repeat 
		topos(CFrame.new(-1180.89563, 21.0007095, 187.861374)) 
		wait() 
	until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1180.89563, 21.0007095, 187.861374)).Magnitude <= 3
	wait(.1)
	repeat 
		topos(CFrame.new(-1610.00757, 11.5049858, 164.001587)) 
		wait() 
	until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1610.00757, 11.5049858, 164.001587)).Magnitude <= 3
	wait(.1)             
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetTorch")
	else
	EquipWeapon("Torch")
	if not game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") then
		repeat 
			topos(CFrame.new(1114.55762, 4.9214654, 4349.2334)) 
			wait() 
		until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1114.55762, 4.9214654, 4349.2334)).Magnitude <= 3
		wait(3)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","DestroyTorch")
		repeat 
			topos(CFrame.new(1114.26721, 4.16943789, 4366.15332)) 
			wait() 
		until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1114.26721, 4.16943789, 4366.15332)).Magnitude <= 3
		wait(.3)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
		wait(.3)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
	else
		EquipWeapon("Cup")
		repeat 
			topos(CFrame.new(1397.0614, 37.3480072, -1321.03955)) 
			wait() 
		until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1397.0614, 37.3480072, -1321.03955)).Magnitude <= 3
		wait(1.1)            
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup"))
		repeat 
			topos(CFrame.new(1457.87976, 88.2521744, -1390.39575)) 
			wait() 
		until not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(1457.87976, 88.2521744, -1390.39575)).Magnitude <= 3
		wait(1.1)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
		repeat 
			topos(CFrame.new(-908.365845, 13.7778397, 4077.84668, -0.0465272143, 3.05009067e-08, -0.998917043, -2.55670285e-09, 1, 3.06530588e-08, 0.998917043, 3.98013533e-09, -0.0465272143)) 
			wait() 
		until (Vector3.new(-908.365845, 13.7778397, 4077.84668)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSaber == false
		wait(1.1)            
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
		wait(.3)
		repeat topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268)) 
			wait() 
		until (Vector3.new(-2850.20068, 7.39224768, 5354.99268)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
		wait(.3)
	end
	end
	if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v.Name == "Mob Leader [Lv. 120] [Boss]" then
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				repeat wait()    
					Buso()
					EquipWeapon(_G.SelectWeapon) 
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.Humanoid.WalkSpeed = 0
					_G.FastAttack = true
					topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
				until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoSaber
				repeat 
					topos(CFrame.new(-908.365845, 13.7778397, 4077.84668, -0.0465272143, 3.05009067e-08, -0.998917043, -2.55670285e-09, 1, 3.06530588e-08, 0.998917043, 3.98013533e-09, -0.0465272143)) 
					wait() 
				until (Vector3.new(-908.365845, 13.7778397, 4077.84668)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSaber == false
				wait(1.1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
				wait(.3)
				EquipWeapon("Relic")
				repeat 
					topos(CFrame.new(-1405.45728, 29.8778057, 4.69083405, 0.87234509, 1.10293916e-08, 0.488890588, -2.06415529e-09, 1, -1.88768947e-08, -0.488890588, 1.54580206e-08, 0.87234509)) 
					wait() 
				until (Vector3.new(-1405.45728, 29.8778057, 4.69083405)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSaber == false
				wait(.3)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
				wait(.3)
			end
		end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") * CFrame.new(0,25,5))
	end
	until Part.CanCollide == false and Part.Transparency == 1 or not _G.AutoSaber
	elseif MyLevel >= 200 and Part.CanCollide == false and Part.Transparency == 1 then
	if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Saber Expert [Lv. 200] [Boss]" then 
		if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
			repeat wait()
				Buso()
				EquipWeapon(_G.SelectWeapon)
				v.Humanoid.WalkSpeed = 0
				_G.FastAttack = true
				v.HumanoidRootPart.CanCollide = false
				v.HumanoidRootPart.Size = Vector3.new(60,60,60)
				if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
					local bv = Instance.new("BodyVelocity")
					bv.Parent = v.HumanoidRootPart
					bv.MaxForce = Vector3.new(100000,100000,100000)
					bv.Velocity = Vector3.new(0,0,0)
				end
				topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
				game:GetService("VirtualUser"):CaptureController()
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
			until _G.AutoSaber == true or v.Humanoid.Health <= 0
		end
	end
	end 
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
	else
	if _G.AutoSaber_Hop then 
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
	end
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("LegebdarySword")
	page3:AddToggle("Auto Buy LegebdarySword",false,function(value)
	_G.LegebdarySword = value
	end)
	page3:AddToggle("Auto Buy LegebdarySword-Hop",false,function(value)
	_G.LegebdarySword_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.LegebdarySword then
	local args = {
	[1] = "LegendarySwordDealer",
	[2] = "1"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
	[1] = "LegendarySwordDealer",
	[2] = "2"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	local args = {
	[1] = "LegendarySwordDealer",
	[2] = "3"
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	if _G.LegebdarySword_Hop or _G.Enhancement_Hop then
	wait(5)
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
	end
	end 
	end
	end)
	page3:AddSeperator("Enhancement")
	page3:AddToggle("Auto Buy Enhancement",false,function(value)
	_G.Enhancement = value
	end)
	page3:AddToggle("Auto Buy Enhancement-Hop",false,function(value)
	_G.Enhancement_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	pcall(function()
	while wait() do 
	if _G.Enhancement then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer", "2")
	end 
	end
	end)
	end)
	page3:AddSeperator("BuddySword")
	page3:AddToggle("Auto Buddy Sword",false,function(value)
	_G.Buddy = value
	end)
	page3:AddToggle("Auto Buddy Sword-Hop",false,function(value)
	_G.Buddy_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.Buddy and ThreeWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Buddy == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.Buddy_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("Pole v1")
	page3:AddToggle("Auto Pole v1",false,function(value)
	_G.Pole = value
	end)
	page3:AddToggle("Auto Pole v1-Hop",false,function(value)
	_G.Pole_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.Pole and OldWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Thunder God [Lv. 575] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Pole == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.Pole_Hop then
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
	end
	end
	end)
	end
	end
	end)
	
	page3:AddSeperator("Observation")
	page3:AddToggle("Auto Farm Observation",false,function(value)
	_G.AutoObservation = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	
	spawn(function()
	pcall(function()
	while wait() do
	if _G.AutoObservation then
	if game.Players.LocalPlayer.VisionRadius.Value == 3000 then
	game.StarterGui:SetCore("SendNotification", {
	Title = "Discord Putaya :\n2X8jtvP9J5", 
	Text = "Observation Max",
	Icon = "rbxassetid://8848493414",
	Duration = 10
	})
	else
	if SecondSea then
	if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
	if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
		repeat wait()
			topos(game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
		until _G.AutoObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
	else
		repeat wait()
			topos(game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0))
			wait(1)
			if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
				game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
			end
		until _G.AutoObservation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
	end
	else
	if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate [Lv. 1200]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
	end
	end
	elseif FirstSea then
	if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
	if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
		repeat wait()
			topos(game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
		until _G.AutoObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
	else
		repeat wait()
			topos(game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0))
			wait(1)
			if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
				game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
			end
		until _G.AutoObservation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
	end
	else
	if game:GetService("ReplicatedStorage"):FindFirstChild("Galley Captain [Lv. 650]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
	end
	end
	elseif ThirdSea then
	if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
	if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
		repeat wait()
			topos(game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
		until _G.AutoObservation == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
	else
		repeat wait()
			topos(game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0))
			wait(1)
			if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
				game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
			end
		until _G.AutoObservation == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
	end
	else
	if game:GetService("ReplicatedStorage"):FindFirstChild("Giant Islander [Lv. 1650]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0))
	end
	end
	end
	end
	end
	end
	end)
	end)
	page3:AddToggle("Auto Farm Observation-Hop",false,function(value)
	_G.AutoObservation_Hop = value
	end)
	
	page3:AddLine()
	page3:AddSeperator("Canvender")
	page3:AddToggle("Auto Canvender",false,function(value)
	_G.Canvender = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Canvender-Hop",false,function(value)
	_G.Canvender_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.Canvender and ThirdWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Canvender == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.Canvender_Hop then
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
	end
	end
	end)
	end
	end
	end)
	
	
	page3:AddSeperator("HallowScythe")
	page3:AddToggle("Auto HallowScythe",false,function(value)
	_G.AutoHallowScythe = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto HallowScythe-Hop",false,function(value)
	_G.AutoHallowScytheHop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.AutoHallowScythe and ThirdSea then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
	repeat wait()
		Buso()
		EquipWeapon(_G.SelectWeapon) 
		v.HumanoidRootPart.CanCollide = false
		v.HumanoidRootPart.Size = Vector3.new(60,60,60)
		v.Humanoid.WalkSpeed = 0
		if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
			local bv = Instance.new("BodyVelocity")
			bv.Parent = v.HumanoidRootPart
			bv.MaxForce = Vector3.new(100000,100000,100000)
			bv.Velocity = Vector3.new(0,0,0)
		end
		topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	until v.Humanoid.Health <= 0 or _G.AutoHallowScythe == false or not v.Parent                
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame)
	else
	if not _G.AutoHallowScytheHop then
	topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
	EquipWeapon("Hallow Essence")
	else
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
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("EliteHunter")
	page3:AddToggle("Auto EliteHunter",false,function(value)
	_G.AutoElitehunter = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto EliteHunter-Hop",false,function(value)
	_G.AutoElitehunterHop = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	spawn(function()
	while wait() do
	if  _G.AutoElitehunter and ThirdSea then
	pcall(function()
	Body()
	local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
	if not QuestVis() then
	repeat  wait()
	topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
	until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
	if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
	wait(1.1)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
	wait(0.5)
	end
	elseif QuestVis() then
	if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
	if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				repeat wait()
					Buso()
					EquipWeapon(_G.SelectWeapon)
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.Humanoid.WalkSpeed = 0
					_G.FastAttack = true
					if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
						local bv = Instance.new("BodyVelocity")
						bv.Parent = v.HumanoidRootPart
						bv.MaxForce = Vector3.new(100000,100000,100000)
						bv.Velocity = Vector3.new(0,0,0)
					end
					topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
				until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
			end
		end
	end
	else
	if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
		topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
	else
		if _G.AutoElitehunterHop then
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
		end
	end
	end                    
	end
	end
	end)
	end
	end
	end)
	function eltiepg()
	return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
	end
	page3:AddSlider("EliteHunter",0,100,30,function(value)
	_G.StartLockElite = value
	end)
	page3:AddToggle("Lock EliteHunter",false,function(value)
	_G.LockElite = value
	end)
	
	spawn(function()
	while wait() do 
	if _G.StartLockElite then
	if eltiepg() >= _G.LockElite then
	game.Players.LocalPlayer:Kick("EliteHunter MAX \n ครบจำนวนที่ท่านต้องการแล้วครับ / ค่ะ")
	end
	end
	end
	end)
	page3:AddLine()
	page3:AddSeperator("Yama") 
	page3:AddToggle("Auto Yama",false,function(value)
	_G.Yama = value
	end)
	spawn(function()
	while wait() do
	if _G.Yama then
	if eltiepg() >= 30 then
	repeat wait()
	fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
	until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Yama
	end
	end
	end
	end)
	page3:AddLine()
	page3:AddSeperator("HolyTorch")
	page3:AddToggle("Auto HolyTorch",false,function(value)
	_G.AutoHolyTorch = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	pcall(function()
	while wait() do
	if _G.AutoHolyTorch and ThirdWorld then
	Body()
	repeat topos(CFrame.new(-10752, 417, -9366)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
	wait(.3)
	repeat topos(CFrame.new(-11672, 334, -9474)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
	wait(.3)
	repeat topos(CFrame.new(-12132, 521, -10655)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
	wait(.3)
	repeat topos(CFrame.new(-13336, 486, -6985)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
	wait(.3)
	repeat topos(CFrame.new(-13489, 332, -7925)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
	end
	end
	end)
	end)
	page3:AddSeperator("Tushita")
	page3:AddToggle("Auto Tushita",false,function(value)
	_G.Tushita = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	pcall(function()
	if _G.Tushita then
	Body()
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	if v.Name == "Longma [Lv. 2000] [Boss]" then
	repeat wait()
	Buso()
	EquipWeapon(_G.SelectWeapon)
	v.HumanoidRootPart.CanCollide = false
	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
	v.Humanoid.WalkSpeed = 0
	_G.FastAttack = true
	v.HumanoidRootPart.Size = Vector3.new(60,60,60)
	if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
		local bv = Instance.new("BodyVelocity")
		bv.Parent = v.HumanoidRootPart
		bv.MaxForce = Vector3.new(100000,100000,100000)
		bv.Velocity = Vector3.new(0,0,0)
	end
	topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
	until _G.Tushita == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	end)
	end
	end)
	
	
	page3:AddSeperator("Twin Hooks")
	page3:AddToggle("Auto Twin Hooks",false,function(value)
	_G.TwinHooks = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Twin Hooks-Hop",false,function(value)
	_G.TwinHooks_Hop = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.TwinHooks and ThirdWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)                                    
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.TwinHooks == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.TwinHooks_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("DarkDagger") 
	page3:AddToggle("Auto DarkDagger",false,function(value)
	_G.DarkDagger = value 
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto DarkDagger-Hop",false,function(value)
	_G.DarkDagger_Hop = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.DarkDagger and ThirdWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.DarkDagger == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]").HumanoidRootPart.CFrame)
	else
	if _G.DarkDagger_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("Rengoku") 
	page3:AddToggle("Auto Rengoku",false,function(value)
	_G.AutoRengoku = value 
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	pcall(function()
	if _G.AutoRengoku and NewWorld then
	Body()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
	EquipWeapon("Hidden Key")
	topos(6569.63427734375, 296.6802673339844, -6968.0947265625)
	end
	if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") and not game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	if v.Name == "Snow Lurker [Lv. 1375]" and v.Humanoid.Health > 0 then
	repeat wait()    
		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			local args = {
				[1] = "Buso"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
		topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
		v.HumanoidRootPart.CanCollide = false
		v.HumanoidRootPart.Size = Vector3.new(60,60,60)
		EquipWeapon(_G.SelectWeapon)
		v.HumanoidRootPart.Size = Vector3.new(60,60,60)
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))   
	until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not _G.AutoRengoku or not v.Parent or v.Humanoid.Health <= 0
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Snow Lurker [Lv. 1375]") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,20,0))
	end
	end
	end)
	end
	end)
	
	page3:AddSeperator("Serpent bow") 
	page3:AddToggle("Auto Serpent bow",false,function(value)
	_G.Serpentbow = value 
	end)
	page3:AddToggle("Auto Serpent bow-Hop",false,function(value)
	_G.Serpentbow_Hop = value
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.Serpentbow and ThirdWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Island Empress [Lv. 1675] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.Humanoid.WalkSpeed = 0
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			_G.FastAttack = true
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Serpentbow == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.Serpentbow_Hop then
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
	end
	end
	end)
	end
	end
	end)
	function QuestVis()
	return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible 
	end
	
	function QuestVis()
	return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible 
	end
	
	page3:AddSeperator("Bartlio")
	page3:AddToggle("Auto Bartlio",false,function(value)
	_G.AutoBartilo = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	
	spawn(function()
	while wait() do
	if _G.AutoBartilo and SecondSea then
	pcall(function()
	local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
	if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
	if QuestVis() then 
	if string.find(QuestTitle, "Swan Pirates") and string.find(QuestTitle, "50") then
	if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v.Name == "Swan Pirate [Lv. 775]" then
				repeat wait()
					Buso()
					EquipWeapon(_G.SelectWeapon)
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.CanCollide = false
					v.Head.CanCollide = false
					PosMon =  v.HumanoidRootPart.CFrame
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					MagnetBartlio = true
					_G.FastAttack = true
					topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
				until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or not QuestVis()
			end
		end
	else
		MagnetBartlio = false
		if game:GetService("ReplicatedStorage"):FindFirstChild("Swan Pirate [Lv. 775]") then
			topos(game:GetService("ReplicatedStorage"):FindFirstChild("Swan Pirate [Lv. 775]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
		end
	end
	else
	MagnetBartlio = false
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
	end
	elseif not QuestVis() then
	repeat 
	topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 3
	wait(1.1)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
	wait(.5)
	end 
	elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
	if QuestVis() then
	if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v.Name == "Jeremy [Lv. 850] [Boss]" then
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				repeat wait()
					EquipWeapon(_G.SelectWeapon)
					Buso()
					v.Humanoid.WalkSpeed = 0
					_G.FastAttack = true
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.CanCollide = false                                        
					topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
				until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
			end
		end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
	end
	elseif not QuestVis() then
	repeat 
	topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
	wait(1.1)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
	wait(.5)
	end
	elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
	repeat
	topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 3
	wait(.3)
	repeat
	topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) 
	wait() 
	until not _G.AutoBartilo or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 3
	end
	end)
	end 
	end
	end)
	page3:AddLine()
	page3:AddSeperator("Trident")
	page3:AddToggle("Auto Trident",false,function(value)
	_G.Trident = value 
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Trident-Hop",false,function(value)
	_G.Trident_Hop = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.Trident and NewWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Trident == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.Trident_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("Longsword")
	page3:AddToggle("Auto Longsword",false,function(value)
	_G.Longsword = value 
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto Longsword-Hop",false,function(value)
	_G.Longsword_Hop = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.Longsword and NewWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Diamond [Lv. 750] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.Longsword == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diamond [Lv. 750] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diamond [Lv. 750] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.Longsword_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page3:AddSeperator("SwanGlasses")
	page3:AddToggle("Auto SwanGlasses",false,function(value)
	_G.SwanGlasses = value 
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddToggle("Auto SwanGlasses-Hop",false,function(value)
	_G.SwanGlasses_Hop = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page3:AddLine()
	spawn(function()
	while wait() do
	if _G.SwanGlasses and NewWorld then
	pcall(function()
	Body()
	if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == "Don Swan [Lv. 1000] [Boss]" then
	if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
		repeat wait()
			Buso()
			EquipWeapon(_G.SelectWeapon)
			v.HumanoidRootPart.CanCollide = false
			v.Humanoid.WalkSpeed = 0
			_G.FastAttack = true
			v.HumanoidRootPart.CanCollide = false
			v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
				local bv = Instance.new("BodyVelocity")
				bv.Parent = v.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000,100000,100000)
				bv.Velocity = Vector3.new(0,0,0)
			end
			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,5))
			game:GetService("VirtualUser"):CaptureController()
			game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
		until _G.SwanGlasses == false or v.Humanoid.Health <= 0 or not v.Parent
	end
	end
	end
	elseif game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
	topos(game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame)
	else
	if _G.SwanGlasses_Hop then
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
	end
	end
	end)
	end
	end
	end)
	page4:AddLine()
	page4:AddSeperator("Server")
	page4:AddButton("Rejoin Server",function()
	local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(game.PlaceId, p)
	end)
	page4:AddButton("Hop Server",function()
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
	page4:AddButton("Hop To Lower Server",function()
	require(game.ReplicatedStorage.Notification).new("Hoper to Lower Player"):Display()
	getgenv().AutoTeleport = true
	getgenv().DontTeleportTheSameNumber = true 
	getgenv().CopytoClipboard = false
	if not game:IsLoaded() then
	repeat wait() until game:IsLoaded()
	end
	local maxplayers = math.huge
	local serversmaxplayer;
	local goodserver;
	local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
	function serversearch()
	for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
		if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
			serversmaxplayer = v.maxPlayers
			maxplayers = v.playing
			goodserver = v.id
		end
	end
	end
	function getservers()
	serversearch()
	for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
		if i == "nextPageCursor" then
			if gamelink:find("&cursor=") then
				local a = gamelink:find("&cursor=")
				local b = gamelink:sub(a)
				gamelink = gamelink:gsub(b, "")
			end
			gamelink = gamelink .. "&cursor=" ..v
			getservers()
		end
	end
	end 
	getservers()
	if CopytoClipboard then
	end
	if AutoTeleport then
	if DontTeleportTheSameNumber then 
	if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
	elseif goodserver == game.JobId then
	end
	end
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
	end
	end)
	page4:AddLine()
	page4:AddSeperator("Teleport World")
	page4:AddButton("Teleport To Old Sea",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end)
	page4:AddButton("Teleport To Second Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end)
	page4:AddButton("Teleport To Third Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end)
	page4:AddLine()
	page4:AddSeperator("Island") 
	if OldWorld then
	page4:AddDropdown("Town",{
	"WindMill",
	"Marine",
	"Middle Town",
	"Jungle",
	"Pirate Village",
	"Desert",
	"Snow Island",
	"MarineFord",
	"Colosseum",
	"Sky Island 1",
	"Sky Island 2",
	"Sky Island 3",
	"Prison",
	"Magma Village",
	"Under Water Island",
	"Fountain City",
	"Shank Room",
	"Mob Island"
	} ,function(v)
	TPSELE = v 
	end)
	end
	
	if NewWorld then
	page4:AddDropdown("Town",{
	"cafe",
	"Frist Spot",
	"Dark Area",
	"Flamingo Mansion",
	"Flamingo Room",
	"Green Zone",
	"Factory",
	"Colossuim",
	"Zombie Island",
	"Two Snow Mountain",
	"Punk Hazard",
	"Cursed Ship",
	"Ice Castle",
	"Forgotten Island",
	"Ussop Island",
	"Mini Sky Island"
	} ,function(v)
	TPSELE = v 
	end)
	end
	if ThirdWorld then
	page4:AddDropdown("Town",{
	"Mansion",
		"Port Town", 
		"Great Tree", 
		"Castle On The Sea", 
		"MiniSky", 
		"Hydra Island",
		"Floating Turtle",
		"Haunted Castle",
		"Sea of Treats 1",
		"Sea of Treats 2"
	} ,function(v)
	TPSELE = v 
	end)
	end
	
	
	
	page4:AddToggle("Teleport",false ,function(v)
	_G.Tp = v
	if v == false then
	wait(0.5)
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	while wait() do
	if _G.Tp then
	workspace.Gravity = 0
	else
	workspace.Gravity = 196.19999694824
	end
	end
	end)
	
	
	
	spawn(function()
	while wait() do
	pcall(function()
		if _G.Tp then
			if TPSELE == "WindMill" then
					topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
			elseif TPSELE == "Marine" then
					topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
			elseif TPSELE == "Middle Town" then
					topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
			elseif TPSELE == "Jungle" then
					topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
			elseif TPSELE == "Pirate Village" then
					topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
			elseif TPSELE == "Desert" then
					topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
			elseif TPSELE == "Snow Island" then
					topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
			elseif TPSELE == "MarineFord" then
					topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
			elseif TPSELE == "Colosseum" then
				   topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
			elseif TPSELE == "Sky Island 1" then
					topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
			elseif TPSELE == "Sky Island 2" then
				game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("requestEntrance", Vector3.new(-7894.6176757812, 5547.1416015625, -380.29119873))
			elseif TPSELE == "Sky Island 3" then
					topos(CFrame.new(-7994.10546875, 5756.033203125, -1942.4979248047))
			elseif TPSELE == "Prison" then
					topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
			elseif TPSELE == "Magma Village" then
					topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
			elseif TPSELE == "Under Water Island" then
					topos(CFrame.new(3876.6374511719, 5.3731470108032, -1896.9306640625))
			elseif TPSELE == "Fountain City" then
					topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
			elseif TPSELE == "Shank Room" then
					topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
			elseif TPSELE == "Mob Island" then
					topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
			elseif TPSELE == "cafe" then
					topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
			elseif TPSELE == "Frist Spot" then
					topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
			elseif TPSELE == "Dark Area" then
					topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
			elseif TPSELE == "Flamingo Mansion" then
					topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
			elseif TPSELE == "Flamingo Room" then
					topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
			elseif TPSELE == "Green Zone" then
					topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
			elseif TPSELE == "Factory" then
					topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
			elseif TPSELE == "Colossuim" then
					topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
			elseif TPSELE == "Zombie Island" then
					topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
			elseif TPSELE == "Two Snow Mountain" then
					topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
			elseif TPSELE == "Punk Hazard" then
					topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
			elseif TPSELE == "Cursed Ship" then
					topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
			elseif TPSELE == "Ice Castle" then
					topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
			elseif TPSELE == "Forgotten Island" then
					topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
			elseif TPSELE == "Ussop Island" then
					topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
			elseif TPSELE == "Mini Sky Island" then
					topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
			elseif TPSELE == "Great Tree" then
					topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
			elseif TPSELE == "Castle On The Sea" then
					topos(CFrame.new(-5044.7612304688, 314.85876464844, -2995.3803710938))
			elseif TPSELE == "MiniSky" then
					topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
			elseif TPSELE == "Port Town" then
					topos(CFrame.new(-294.20208740234, 29.756063461304, 5395.4111328125))
			elseif TPSELE == "Hydra Island" then
					topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
			elseif TPSELE == "Floating Turtle" then
					topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
			elseif TPSELE == "Mansion" then
					topos(CFrame.new(-12550.325195313, 337.51156616211, -7508.9936523438))
			elseif TPSELE == "Haunted Castle" then
					topos(CFrame.new(-9506.1064453125, 142.13989257813, 5526.0405273438))
			elseif TPSELE == "Sea of Treats 2" then
				topos(CFrame.new(-954.7802734375, 7.7934098243713, -10802.102539062))
			elseif TPSELE == "Sea of Treats 1" then
				topos(CFrame.new(-2042.5035400391, 4.701087474823, -9896.873046875))
			end
		end
	end)
	end
	end)
	page4:AddLine()
	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function infinitestam()
	LocalPlayer.Character.Energy.Changed:connect(function()
	if InfiniteEnergy then
	LocalPlayer.Character.Energy.Value = originalstam
	end 
	end)
	end
	
	spawn(function()
	pcall(function()
	while wait() do
		if InfiniteEnergy then
			wait(0.3)
			originalstam = LocalPlayer.Character.Energy.Value
			infinitestam()
		end
	end
	end)
	end)
	page5:AddLine()
	page5:AddSeperator("Ablilities")
	page5:AddButton("Geppo",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end)
	page5:AddButton("Buso Haki",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end)
	page5:AddButton("Soru",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end)
	page5:AddButton("Observation Haki", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end)
	page5:AddLine()
	page5:AddSeperator("Fighting Styles")
	
	page5:AddButton("Black Leg",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end)
	page5:AddButton("Electro",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end)
	page5:AddButton("Fishman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end)
	page5:AddButton("Dragon Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end)
	page5:AddButton("Superhuman",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end)
	page5:AddButton("Death Step",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end)
	page5:AddButton("Sharkman Karate",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end)
	page5:AddButton("Electric Claw",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end)
	page5:AddButton("Dragon Talon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end)
	page5:AddLine()
	page5:AddSeperator("Accessory")
	
	page5:AddButton("Tomoe Ring",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
	end)
	
	page5:AddButton("Black Cape",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
	end)
	
	page5:AddButton("Swordsman Hat",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
	end)
	page5:AddLine()
	page5:AddSeperator("Sword")
	
	page5:AddButton("Cutlass",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
	end)
	
	page5:AddButton("Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
	end)
	
	page5:AddButton("Iron Mace",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
	end)
	
	page5:AddButton("Duel Katana",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
	end)
	
	page5:AddButton("Triple Katana", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
	end)
	
	page5:AddButton("Pipe",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
	end)
	
	page5:AddButton("Dual Headed Blade",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
	end)
	
	page5:AddButton("Bisento",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
	end)
	
	page5:AddButton("Soul Cane",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
	end)
	page5:AddLine()
	page5:AddSeperator("Gun")
	
	page5:AddButton("Slingshot",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
	end)
	
	page5:AddButton("Musket",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
	end)
	
	page5:AddButton("Flintlock",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
	end)
	
	page5:AddButton("Refined Flintlock",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
	end)
	
	page5:AddButton("Cannon",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
	end)
	
	page5:AddButton("Kabucha",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
	end)
	page5:AddLine()
	page5:AddSeperator("Bone")
	
	page5:AddButton("Random Surprise",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
	end)
	
	page5:AddButton("Stat Refund",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
	end)
	
	page5:AddButton("Race Reroll",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
	end)
	page6:AddSeperator("Dungeon Raids")
	page6:AddDropdown("Select Dungeon",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},function(v)
	_G.SelectChip = v 
	end)
	page6:AddLine()
	page6:AddToggle("Auto Buy Chip",false,function(value)
	_G.AutoBuyChip = value
	while _G.AutoBuyChip do wait()
	pcall(function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
	end)
	end
	end)
	page6:AddToggle("Auto Start Raids",false,function(value)
	_G.StartRaids = value
	while _G.StartRaids do wait()
	pcall(function()
		if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
			if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
				fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
				fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
			end
		end
	end)
	end
	end)
	page6:AddToggle("Auto Awake",false,function(value)
	_G.AutoAwake = value
	end)
	spawn(function()
	while wait() do
	if _G.AutoAwake then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
	end
	end
	end)
	
	page6:AddToggle('Auto NextIsland',false,function(value)
	_G.AutoFarmDungeon = value
	if value == false then
	wait()
	topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	
	page6:AddToggle('Kill Aura',false,function(value)
	_G.KillAura = value
	end)
	spawn(function()
	while wait() do
	if _G.KillAura then
		for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
			if _G.KillAura  and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
				pcall(function()
					repeat task.wait()
						if v.Humanoid.Health > 0 then
							v.Humanoid.Health = 0 
						elseif v.Humanoid.Health == 0 then
							v.Humanoid.Health = v.Humanoid.MaxHealth
						else
							v.Humanoid.Health = 0 
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					until not _G.KillAura or not v.Parent or v.Humanoid.Health <= 0
				end)
			end
		end
	end
	end
	end)
	
	spawn(function()
	while wait() do
	if _G.AutoFarmDungeon then
		pcall(function()
			repeat wait()
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,100,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,100,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,100,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,50,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,100,0))
				end
			until not _G.AutoFarmDungeon 
		end)
	end
	end
	end)
	page6:AddSeperator("Tp island Raid")
	if SecondSea or ThirdWorld then
	page6:AddToggle("Teleport to Island 1",false,function(value)
	TPI1 = value
	while TPI1 do wait()
		topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,100,0))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page6:AddToggle("Teleport to Island 2",false,function(value)
	TPI2 = value
	while TPI2 do wait()
		topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,100,0))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page6:AddToggle("Teleport to Island 3",false,function(value)
	TPI3 = value
	while TPI3 do wait()
		topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,100,0))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page6:AddToggle("Teleport to Island 4",false,function(value)
	TPI4 = value
	while TPI4 do wait()
		topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,100,0))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	page6:AddToggle("Teleport to Island 5",false,function(value)
	TPI5 = value
	while TPI5 do wait()
		topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,100,0))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	end
	
	
	if ThirdSea then
	page6:AddToggle("Teleport to Lab",false,function(value)
	TPLAB = value
	while TPLAB do wait()
		topos(CFrame.new(-5017.40869, 314.844055, -2823.0127))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	end
	
	if SecondSea then
	page6:AddToggle("Awakening Room",false,function(value)
	TPAWAKE = value
	while TPAWAKE do wait()
		topos(CFrame.new(266.227783, 1.39509034, 1857.00732))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	elseif ThirdSea then
	page6:AddToggle("Awakening Room",false,function(value)
	TPAWAKE = value
	while TPAWAKE do wait()
		topos(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
	end
	if value == false then
		wait()
		topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	end
	
	
	spawn(function()
	while wait() do
	pcall(function()
		if _G.MobKill then
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
					repeat wait()
					PosRaids = v.HumanoidRootPart.CFrame 
					topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					v.HumanoidRootPart.Transparency = 1
					FastAttack()
					until v.Humanoid.Health <= 0 or _G.MobKill == false
				end
			end
		end
	end)
	end
	end)
	spawn(function()
	while wait() do 
	if _G.AutoFarmCandies then
		pcall(function()
			if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then 
				if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
							repeat task.wait()
								Buso()
								EquipWeapon(_G.SelectWeapon)
								topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								MagnetCandies = true
								FastAttack()
								PosMon = v.HumanoidRootPart.CFrame
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							until _G.AutoFarmCandies == false or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0
						end
					end
				elseif not game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") then
					MagnetCandies = false
					local Mob = game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]")
					if Mob then
						topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					end
				end
			elseif game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
				if game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
							repeat task.wait()
								Buso()
								MagnetCandies = false
								EquipWeapon(_G.SelectWeapon)
								topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								FastAttack()
							until _G.AutoFarmCandies == false  or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame)
					end
				end
			end
		end)
	end
	end
	end)
	spawn(function()
	while wait() do
	pcall(function()
		if _G.MobKill then
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					v.HumanoidRootPart.CFrame = PosRaids
					v.HumanoidRootPart.CanCollide = false
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
		end
	end)
	end
	end)
	spawn(function()
	while wait() do
	pcall(function()
	if _G.AutoFarmCandies and MagnetCandies then
		LV()
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					if v.Name == "Cookie Crafter [Lv. 2200]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 200 then
							
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					elseif v.Name == "Cake Guard [Lv. 2225]" then
						if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 200 then
							
							v.HumanoidRootPart.CFrame = PosMon
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
				elseif v.Name == "Baking Staff [Lv. 2250]" then
					if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 200 then
						v.HumanoidRootPart.CFrame = PosMon
						v.Head.CanCollide = false
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.Size = Vector3.new(100,100,100)
						v.Humanoid:ChangeState(11)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
				elseif v.Name == "Head Baker [Lv. 2275]" then
					if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 200 then
						
						v.HumanoidRootPart.CFrame = PosMon
						v.Head.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(100,100,100)
						v.HumanoidRootPart.CanCollide = false
						v.Humanoid.WalkSpeed = 0
						v.Humanoid:ChangeState(11)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					end
					end
				end
			end
		end
	end)
	end
	end)
	
	
	FruitList = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Door-Door",
	"Quake-Quake",
	"Human-Human: Buddha",
	"String-String",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Paw-Paw",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon"
	}
	
	
	page7:AddDropdown("Select Fruits",FruitList,function(v)
	SelectFruit = v
	end)
	
	
	page7:AddToggle("Auto Buy Fruit Selected",false,function(value)
	_G.BuyFruitSelected = value
	end)
	
	spawn(function()
	pcall(function()
	while wait() do
	if _G.BuyFruitSelected then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",SelectFruit)
	end 
	end
	end)
	end)
	
	
	page7:AddToggle("Auto Hop",_G.Hoper,function(value)
	_G.Hoper = value
	end)
	function Hoppppp()
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
	end
	spawn(function()
	while wait() do
	if _G.Hoper then
	wait(10)
	Hoppppp()
	end
	end
	end)
	
	page7:AddToggle("Auto Gerb Fruits",_G.GerbFruits,function(value)
	_G.GerbFruits = value
	end)
	
	spawn(function()
	while wait() do
	pcall(function()
		if _G.GerbFruits then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				if string.find(v.Name, "Fruit") then
					if v:IsA("Tool") then
						v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
						wait(.2)
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
					end
				end
			end
		end
	end)
	end
	end)
	
	page7:AddToggle("Auto StoreFruit ",_G.AutoStoreFruit,function(value)
	_G.AutoStoreFruit = value
	end)
	spawn(function()
	pcall(function()
	while wait() do
		if _G.AutoStoreFruit then
			for i,v in pairs(FruitList) do
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
			end
		end
	end
	end)
	end)
	
	
	page7:AddToggle("Auto Random Fruit",false,function(value)
	_G.AutoRandomFruit = value
	end)
	
	spawn(function()
	pcall(function()
	while wait() do
	if _G.AutoRandomFruit then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
	end 
	end
	end)
	end)
	
	
	page7:AddButton("Random Fruit",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
	end)
	page7:AddToggle("Auto Store Fruit",false,function(value)
	_G.StoreFruit = value
	while _G.StoreFruit do wait()
	pcall(function()
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul")
			elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon")
		end
	end)
	end
	end)
	page8:AddLabel("Webhook")
	function CheckUseWeapon()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if v.ClassName == "Tool" then
	useWeapon = v.Name
	Mastery = v.Level.Value
	end
	end
	end
	
	page8:AddTextbox("Web Hook",true,function(t)
	_G.WEBHOOOK = t
	end)
	function WORLD()
	if game.PlaceId == 2753915549 then
	WORLD = "Blox Fruits Old Word , โลกแรก"
	elseif game.PlaceId == 4442272183 then
	WORLD = "Blox Fruits New Word , โลกสอง"
	elseif game.PlaceId == 7449423635 then
	WORLD = "Blox Fruits Thrid Word , โลกสาม"
	end
	end
	function plys()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
	itemcount = i
	end
	end
	function WebHook()
	plys()
	WORLD()
	CheckUseWeapon()
	if useWeapon == nil and Mastery == nil then
	useWeapon = "ไม่ได้ใช้อาวุธอะไร"
	Mastery = "ไม่ได้ใช้อาวุธอะไร"
	end
	local url = _G.WEBHOOOK
	local timeInfo = os.date('*t')
	local data = {
	["content"] = "",
	["embeds"] = {
	{
	["title"] = "Putaya Hub - Notifcation",
	["description"] = "[🔥 🔵 UPDATE] Blox Fruits\n\n🎃ชื่อผู้เล่น🎃  ".."⚡Level⚡  ".."🧶Weapons🧶".."👑Mastery👑".."💰Fruit💰\n\n"
	
	.."⤛"..game.Players.LocalPlayer.Name.."⤜ ".." ⤛"..game.Players.LocalPlayer.Data.Level.Value.."⤜ ".." ⤛"..useWeapon.."⤜".." ⤛"..Mastery.."⤜".."⤛"..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value.."⤜\n\n"..
	"Time : " .. timeInfo.hour .. ":" .. timeInfo.min .. " | Day : " .. timeInfo.day .."/" .. timeInfo.month .. "/" .. timeInfo.year
	.."\n\nคนอยู่ในเชิฟ  ".."  ⤛"..itemcount.."คน ⤛".."  โลกที่อยู่ : "..WORLD,
	["type"] = "rich",
	["color"] = tonumber(0xff0000),
	["image"] = {
	
	}
	}
	}
	}
	local newdata = game:GetService("HttpService"):JSONEncode(data)
	
	local headers = {
	["content-type"] = "application/json"
	}
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)
	end
	
	
	page8:AddSlider("Select Level", 1, 2300, 2300,function(v)
	_G.WL = t
	end)
	
	page8:AddToggle("Start Web Hook",false,function(v)
	_G.StartWebHook = t
	end)
	
	page8:AddToggle("แจ้งเตือนทุกๆ 1 นาที",false,function(v)
	_G.wW = t
	end)
	
	page9:AddSeperator("OP function")
	page9:AddToggle('Inf Energy',false,function(vu)
	InfiniteEnergy = vu
	end)
	page9:AddToggle('Inf Ablilities',false,function(vu)
	InfAblilities = vu
	pcall(function()
	local agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	if InfAblilities then
	agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	elseif InfAblilities == false then
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Agility:Destroy()
	end
	end)
	end)
	
	page9:AddTextbox("Fack Level",false,function(t)
	game.Players.LocalPlayer.Data.Level.Value = t
	end)
	
	page9:AddTextbox("Fack Fragments",false,function(value)
	game:GetService("Players").LocalPlayer.Data.Fragments.Value = value
	end)
	page9:AddTextbox("Fack Beli",false,function(value)
	game:GetService("Players").LocalPlayer.Data.Beli.Value = value
	end)
	page9:AddTextbox("Fack Bounty",false,function(value)
	game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = value
	end)
	page9:AddTextbox("Walk Speed",false,function(value)
	game.Players.LocalPlayer.Character.Movement.Disabled = true
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)
	page9:AddTextbox("Jump Power",false,function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)
	
	page9:AddButton("FPS BOOT",function()
	if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
	if hookfunction and setreadonly then
	local mt = getrawmetatable(game)
	local old = mt.__newindex
	setreadonly(mt, false)
	local sda
	sda = hookfunction(old, function(t, k, v)
		if k == "Material" then
			if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
		elseif k == "TopSurface" then v = "Smooth"
		elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
		elseif k == "WaterTransparency" then v = 1
		elseif k == "GlobalShadows" then v = false end
		return sda(t, k, v)
	end)
	setreadonly(mt, true)
	end
	local g = game
	local w = g.Workspace
	local l = g:GetService"Lighting"
	local t = w:WaitForChild"Terrain"
	t.WaterWaveSize = 0
	t.WaterWaveSpeed = 0
	t.WaterReflectance = 0
	t.WaterTransparency = 1
	l.GlobalShadows = false
	
	function change(v)
	pcall(function()
		if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
			pcall(function() v.Reflectance = 0 end)
			pcall(function() v.Material = Enum.Material.Plastic end)
			pcall(function() v.TopSurface = "Smooth" end)
		end
	end)
	end
	
	game.DescendantAdded:Connect(function(v)
	pcall(function()
		if v:IsA"Part" then change(v)
		elseif v:IsA"MeshPart" then change(v)
		elseif v:IsA"TrussPart" then change(v)
		elseif v:IsA"UnionOperation" then change(v)
	elseif v:IsA"CornerWedgePart" then change(v)
		elseif v:IsA"WedgePart" then change(v) end
	end)
	end)
	for i, v in pairs(game:GetDescendants()) do
	pcall(function()
		if v:IsA"Part" then change(v)
		elseif v:IsA"MeshPart" then change(v)
		elseif v:IsA"TrussPart" then change(v)
		elseif v:IsA"UnionOperation" then change(v)
		elseif v:IsA"CornerWedgePart" then change(v)
		elseif v:IsA"WedgePart" then change(v) end
	end)
	end
	end)
	Haki = {
	"0",
	"1",
	"2",
	"3",
	"4",
	"5"
	}
	page9:AddDropdown("Select Haki",Haki,function(v)
	Hakieiei = v
	end)
	
	page9:AddButton("Change Buso",function()
	if Hakieiei == "0" then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
	elseif Hakieiei == "1" then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
	elseif Hakieiei == "2" then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
	elseif Hakieiei == "3" then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
	elseif Hakieiei == "4" then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
	elseif Hakieiei == "5" then
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
	end
	end)
	
	page9:AddButton("Super FPS BOOT",function()
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
	local decalsyeeted = true 
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
	
	page9:AddToggle("RTX MODE",false,function(State)
	_G.RTXMode = State
	if not _G.RTXMode then return end
	while _G.RTXMode do wait()
		a.Ambient = Color3.fromRGB(33, 33, 33)
		a.Brightness = 0.3
		c.Brightness = 0.176
		c.Contrast = 0.39
		c.TintColor = Color3.fromRGB(217, 145, 57)
		game.Lighting.FogEnd = 999
		if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
			local a2 = Instance.new("PointLight")
			a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			a2.Range = 15
			a2.Color = Color3.fromRGB(217, 145, 57)
		end
		if not _G.RTXMode then
			a.Ambient = OldAmbient
			a.Brightness = OldBrightness
			a.ColorShift_Top = OldColorShift_Top
			c.Contrast = OldContrastc
			c.Brightness = OldBrightnessc
			c.TintColor = OldTintColorc
			e.TintColor = OldTintColore
			game.Lighting.FogEnd = 2500
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
		end
	end
	end)
	
	
	page9:AddToggle("RemoveFog",false,function(State)
	_G.RemoveFog = State
	if _G.RemoveFog then
	while _G.RemoveFog do wait()
		game.Lighting.FogEnd = 9e9
		if not _G.RemoveFog then
		game.Lighting.FogEnd = 2500
	end
	end
	end
	end)
	
	page9:AddButton("Open Devil Shop",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
	game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
	end)
	
	page9:AddButton("Open Inventory",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
	wait(.3)
	game.Players.LocalPlayer.PlayerGui.Main.Inventory.Visible = true
	end)
	
	page9:AddButton("Open Inventory Fruit",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
	end)
	
	page9:AddSeperator("Teams")
	
	page9:AddButton("Join Pirates Team",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
	Buso()
	end)
	
	page9:AddButton("Join Marines Team",function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
	Buso()
	end)
	page9:AddSeperator("ESP")
	
	page9:AddToggle("RainBow ESP",false,function(t)
	_G.RainBowText = t
	end)
	
	
	page9:AddToggle("ESP Chest",false,function(t)
	_G.ChestESP = t
	while _G.ChestESP do wait()
	UpdateChest()
	end
	end)
	function UpdateChest()
	for i,v in pairs(game.Workspace:GetChildren()) do
	pcall(function()
		if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
			if _G.ChestESP then
				if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
					if not v:FindFirstChild("ChestESP") then
						local Bb = Instance.new("BillboardGui", v)
						Bb.Name = "ChestESP"
						Bb.ExtentsOffset = Vector3.new(0, 1, 0)
						Bb.Size = UDim2.new(1, 200, 1, 30)
						Bb.Adornee = v
						Bb.AlwaysOnTop = true
						local Textlb = Instance.new("TextLabel", Bb)
						Textlb.Font = "GothamBold"
						Textlb.FontSize = "Size14"
						Textlb.Size = UDim2.new(1,0,1,0)
						Textlb.BackgroundTransparency = 1
						Textlb.TextStrokeTransparency = 0.5
						spawn(function()
							while wait() do
								if _G.RainBowText then
									wait(0.1) 
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 0, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 155, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 255, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(0, 255, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(0, 255, 255)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(0, 155, 255)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 0, 255)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 0, 155)}):Play() 
									wait(.5)
								else
									if v.Name == "Chest1" then
										Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
										Textlb.Text = "Chest1".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
									end
									if v.Name == "Chest2" then
										Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
										Textlb.Text = "Chest2".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
									end
									if v.Name == "Chest3" then
										Textlb.Text = "Chest3".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
										Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
									end
								end
							end
						end)
					else
						v["ChestESP"].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
					end
				end
			else
				if v:FindFirstChild("ChestESP") then
					v:FindFirstChild("ChestESP"):Destroy()
				end
			end
		end
	end)
	end
	end
	
	page9:AddToggle("ESP Player",false,function(t)
	_G.PlayerESP = t
	while _G.PlayerESP do wait()
	UpdatePlayer()
	end
	end)
	function UpdatePlayer()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
	pcall(function()
		if v.Character then
			if _G.PlayerESP then
				if v.Character.Head and not v.Character.Head:FindFirstChild("PlayerESP") then
					local Bb = Instance.new("BillboardGui", v.Character.Head)
					Bb.Name = "PlayerESP"
					Bb.ExtentsOffset = Vector3.new(0, 1, 0)
					Bb.Size = UDim2.new(1, 200, 1, 30)
					Bb.Adornee = v.Character.Head
					Bb.AlwaysOnTop = true
					local Textlb = Instance.new("TextLabel", Bb)
					Textlb.Font = "GothamBold"
					Textlb.FontSize = "Size14"
					Textlb.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
					Textlb.Size = UDim2.new(1,0,1,0)
					Textlb.BackgroundTransparency = 1
					Textlb.TextStrokeTransparency = 0.5
					spawn(function()
						while wait() do
							if _G.RainBowText then
								wait(0.1) 
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 155, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 255, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 255, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 255, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 155, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 155)}):Play() 
								wait(.5)
							else
								if v.Team == game:GetService("Players").LocalPlayer.Team then
									Textlb.TextColor3 = Color3.new(0, 255, 0)
								else
									Textlb.TextColor3 = Color3.new(0, 0, 204)
								end
							end
						end
					end)
				else
					v.Character.Head["PlayerESP"].TextLabel.Text = v.Name.."\n"..math.round((v.Character.Head.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
				end
			else
				if v.Character.Head:FindFirstChild("PlayerESP") then
					v.Character.Head:FindFirstChild("PlayerESP"):Destroy()
				end
			end
		end
	end)
	end
	end
	page9:AddToggle("ESP Fruits",false,function(t)
	_G.DevilESP = t
	while _G.DevilESP do wait()
	UpdateFlower()
	end
	end)
	
	function UpdateDevilFruit()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	pcall(function()
		if string.find(v.Name, "Fruit") then
			if _G.DevilESP then
				if string.find(v.Name, "Fruit") then
					if not v.Handle:FindFirstChild("DevilESP"..Number) then
						local Bb = Instance.new("BillboardGui", v.Handle)
						Bb.Name = "DevilESP"..Number
						Bb.ExtentsOffset = Vector3.new(0, 1, 0)
						Bb.Size = UDim2.new(1, 200, 1, 30)
						Bb.Adornee = v.Handle
						Bb.AlwaysOnTop = true
						local Textlb = Instance.new("TextLabel", Bb)
						Textlb.Font = "GothamBold"
						Textlb.FontSize = "Size14"
						Textlb.Size = UDim2.new(1,0,1,0)
						Textlb.BackgroundTransparency = 1
						Textlb.TextStrokeTransparency = 0.5
						Textlb.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
						Textlb.TextColor3 = Color3.new(255, 255, 255)
						spawn(function()
							while wait() do
								if _G.RainBowText then
									wait(0.1) 
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 0, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 155, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 255, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(0, 255, 0)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(0, 255, 255)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(0, 155, 255)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 0, 255)}):Play() 
									wait(.5)
		
									game:GetService('TweenService'):Create(
										Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
									{TextColor3 = Color3.fromRGB(255, 0, 155)}):Play() 
									wait(.5)
								else
									Textlb.TextColor3 = Color3.new(255, 255, 255)
								end
							end
						end)
					else
						v.Handle["DevilESP"].TextLabel.Text = v.Name.."\n"..math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
					end
				end
			else
				if v.Handle:FindFirstChild("DevilESP") then
					v.Handle:FindFirstChild("DevilESP"):Destroy()
				end
			end
		end
	end)
	end
	end
	
	page9:AddToggle("ESP Flower",false,function(t)
	_G.FlowerESP = t
	while _G.FindFruits do wait()
	UpdateFlower()
	end
	end)
	
	function UpdateFlower()
	for i,v in pairs(game.Workspace:GetChildren()) do
	pcall(function()
		if v.Name == "Flower2" or v.Name == "Flower1" then
			if _G.FlowerESP then
				if not v:FindFirstChild("FindFlower") then
					local bill = Instance.new("BillboardGui",v)
					bill.Name = "FindFlower"
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v
					bill.AlwaysOnTop = true
					local Textlb = Instance.new("TextLabel",bill)
					Textlb.Font = "GothamBold"
					Textlb.FontSize = "Size14"
					Textlb.TextWrapped = true
					Textlb.Size = UDim2.new(1,0,1,0)
					Textlb.TextYAlignment = "Top"
					Textlb.BackgroundTransparency = 1
					Textlb.TextStrokeTransparency = 0.5
					Textlb.TextColor3 = Color3.fromRGB(248, 41, 41)
					spawn(function()
						while wait() do
							if _G.RainBowText then
								wait(0.1) 
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 155, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 255, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 255, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 255, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 155, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 155)}):Play() 
								wait(.5)
							else
								if v.Name == "Flower1" then
									Textlb.Text = ("Flower1".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
									Textlb.TextColor3 = Color3.fromRGB(28, 126, 255)
								end
								if v.Name == "Flower2" then
									Textlb.Text = ("Flower2".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
									Textlb.TextColor3 = Color3.fromRGB(248, 41, 41)
								end
							end
						end
					end)
				else
					v["FindFlower"].TextLabel.Text = (v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
				end
			else
				if v:FindFirstChild("FindFlower") then
					v:FindFirstChild("FindFlower"):Destroy()
				end
			end
		end
	end)
	end
	end
	
	page9:AddToggle("ESP BANANA Apple Pineapple",false,function(t)
	_G.FindFruits = t
	while _G.FindFruits do wait()
	UpdateFruits()
	end
	end)
	function UpdateFruits()
	for i,v in pairs(game.Workspace:GetChildren()) do
	pcall(function()
		if v.Name == "Banana" or v.Name == "Apple" or v.Name == "Pineapple" then
			if _G.FindFruits then
				if not v:FindFirstChild("FindFruit") then
					local bill = Instance.new("BillboardGui",v)
					bill.Name = "FindFruit"
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v
					bill.AlwaysOnTop = true
					local name = Instance.new("TextLabel",bill)
					name.Font = "GothamBold"
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = "Top"
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					spawn(function()
						while wait() do
							if _G.RainBowText then
								wait(0.1) 
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 155, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 255, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 255, 0)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 255, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(0, 155, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 255)}):Play() 
								wait(.5)
	
								game:GetService('TweenService'):Create(
									Textlb,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
								{TextColor3 = Color3.fromRGB(255, 0, 155)}):Play() 
								wait(.5)
							else
								if v.Name == "Banana" then
									name.Text = ("Banana".."\n"..math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
									name.TextColor3 = Color3.fromRGB(255, 255, 0)
								end
								if v.Name == "Apple" then
									name.Text = ("Apple".."\n"..math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
									name.TextColor3 = Color3.fromRGB(208, 0, 0)
								end
								if v.Name == "PineApple" then
									name.Text = ("PineApple".."\n"..math.round((v.Handle.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
									name.TextColor3 = Color3.fromRGB(255, 128, 0)
								end
							end
						end
					end)
				else
					v["FindFruit"].TextLabel.Text = (v.Name.."\n"..math.round((v.Handel.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m.")
				end
			else
				if v:FindFirstChild("FindFruit") then
					v:FindFirstChild("FindFruit"):Destroy()
				end
			end
		end
	end)
	end
	end
	spawn(function()
	while wait() do
	pcall(function()
		if _G.wW then
			WebHook()
			wait(1*60)
		end
	end)
	end
	end)
	
	spawn(function()
	while wait() do
	pcall(function()
	if _G.StartWebHook then
		if game.Players.LocalPlayer.Data.Level.Value == _G.WL then
			WebHook()
			wait(.8)
			_G.StartWebHook = false
			end
		end
	end)
	end
	end)
	
	game.StarterGui:SetCore("SendNotification", {  
	Title = "PUTAYA HUB | V.2",
	Text = "ไวริส สำเร็จ", 
	Icon = "", 
	Duration = 2.5
	})
	require(game.ReplicatedStorage.Notification).new("<Color=Green>PUTAYA HUB ไวริส<Color=/>"):Display()
	require(game.ReplicatedStorage.Notification).new("<Color=Red>ใช้สคิปได้ปกติแล้วนะครับ >o<<Color=/>"):Display()
	
	elseif game.placeId == 4520749081 or game.placeId == 6381829480 then --KL
	
	game.StarterGui:SetCore("SendNotification", {  
	Title = "PUTAYA HUB | V.1.1",
	Text = "ไวริส", 
	Icon = "", 
	Duration = 2.5
	})
	local ScreenGui = Instance.new("ScreenGui")
	local ImageButton = Instance.new("ImageButton")
	
	ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	
	ImageButton.Parent = ScreenGui
	ImageButton.Position = UDim2.new(0.439, 0, 0.026, 0)
	ImageButton.Size = UDim2.new(0, 50, 0, 50)
	ImageButton.Image = "rbxassetid://8848493414"
	ImageButton.Draggable = true
	ImageButton.MouseButton1Down:connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,"RightControl",false,game)
	end)
	local nill = {}
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local HttpService = game:GetService("HttpService")
	local pfp
	local user
	local tag
	local userinfo = {}
	
	_G.nill = ""
	_G.Version = ""
	
	if game.CoreGui:FindFirstChild(_G.nill .."," .. _G.Version) then
	game.CoreGui:FindFirstChild(_G.nill .."," .. _G.Version):Destroy()
	end
	
	pcall(function()
	userinfo = HttpService:JSONDecode(readfile("some.txt"));
	end)
	
	pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
	user =  userinfo["user"] or game.Players.LocalPlayer.Name
	tag = userinfo["tag"] or tostring(math.random(1,10))
	
	local function SaveInfo()
	userinfo["pfp"] = pfp
	userinfo["user"] = user
	userinfo["tag"] = tag
	writefile("some.txt", HttpService:JSONEncode(userinfo));
	end
	
	local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	
	local function Update(input)
	local Delta = input.Position - DragStart
	local pos =
	UDim2.new(StartPosition.X.Scale,StartPosition.X.Offset + Delta.X,StartPosition.Y.Scale,StartPosition.Y.Offset + Delta.Y)
	local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
	Tween:Play()
	end
	
	topbarobject.InputBegan:Connect(
	function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	Dragging = true
	DragStart = input.Position
	StartPosition = object.Position
	
	input.Changed:Connect(function()
	if input.UserInputState == Enum.UserInputState.End then
		Dragging = false
	end
	end)
	end
	end)
	
	topbarobject.InputChanged:Connect(
	function(input)
	if
	input.UserInputType == Enum.UserInputType.MouseMovement or
	input.UserInputType == Enum.UserInputType.Touch
	then
	DragInput = input
	end
	end)
	
	UserInputService.InputChanged:Connect(
	function(input)
	if input == DragInput and Dragging then
	Update(input)
	end
	end)
	end
	
	local nillPaid = Instance.new("ScreenGui")
	nillPaid.Name = _G.nill .."," .. _G.Version
	nillPaid.Parent = game.CoreGui
	nillPaid.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.RightControl then
	wait()
	nillPaid.Enabled = not nillPaid.Enabled
	end
	end)
	
	function nill:Window(text)
	local currentservertoggled = ""
	local minimized = false
	local fs = false
	local settingsopened = false
	local MainFrame = Instance.new("Frame")
	local TopFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local CloseBtn = Instance.new("TextButton")
	local CloseIcon = Instance.new("ImageLabel")
	local MinimizeBtn = Instance.new("TextButton")
	local MinimizeIcon = Instance.new("ImageLabel")
	local ServersHolder = Instance.new("Folder")
	local Userpad = Instance.new("Frame")
	local UserIcon = Instance.new("Frame")
	local UserIconCorner = Instance.new("UICorner")
	local Corner_1 = Instance.new("UICorner")
	local UserImage = Instance.new("ImageLabel")
	local UserCircleImage = Instance.new("ImageLabel")
	local UserName = Instance.new("TextLabel")
	local UserTag = Instance.new("TextLabel")
	local ServersHoldFrame = Instance.new("Frame")
	local ServersHold = Instance.new("ScrollingFrame")
	local ServersHoldLayout = Instance.new("UIListLayout")
	local ServersHoldPadding = Instance.new("UIPadding")
	local TopFrameHolder = Instance.new("Frame")
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = nillPaid
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 611, 0, 0)
	
	MainFrame:TweenSize(UDim2.new(0, 611, 0, 396), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.2, true)
	
	Corner_1.CornerRadius = UDim.new(0, 7)
	Corner_1.Name = "UserIconCorner"
	Corner_1.Parent = MainFrame
	
	TopFrame.Name = "TopFrame"
	TopFrame.Parent = MainFrame
	TopFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
	TopFrame.BackgroundTransparency = 1.000
	TopFrame.BorderSizePixel = 0
	TopFrame.Position = UDim2.new(-0.000658480625, 0, 0, 0)
	TopFrame.Size = UDim2.new(0, 681, 0, 22)
	
	TopFrameHolder.Name = "TopFrameHolder"
	TopFrameHolder.Parent = TopFrame
	TopFrameHolder.BackgroundColor3 = Color3.fromRGB(20,20,20)
	TopFrameHolder.BackgroundTransparency = 1.000
	TopFrameHolder.BorderSizePixel = 0
	TopFrameHolder.Position = UDim2.new(-0.000658480625, 0, 0, 0)
	TopFrameHolder.Size = UDim2.new(0, 20, 0, 22)
	
	
	Title.Name = "Title"
	Title.Parent = TopFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0102790017, 0, 0, 0)
	Title.Size = UDim2.new(0, 192, 0, 23)
	Title.Font = Enum.Font.GothamBold
	Title.Text = text
	Title.TextColor3 = _G.Color
	Title.TextSize = 13.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	CloseBtn.Name = "CloseBtn"
	CloseBtn.Parent = TopFrame
	CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	CloseBtn.BackgroundTransparency = 0
	CloseBtn.Position = UDim2.new(0.85, 0, -0.0169996787, 0)
	CloseBtn.Size = UDim2.new(0, 28, 0, 22)
	CloseBtn.Font = Enum.Font.Gotham
	CloseBtn.Text = ""
	CloseBtn.TextColor3 = _G.Color
	CloseBtn.TextSize = 14.000
	CloseBtn.BorderSizePixel = 0
	CloseBtn.AutoButtonColor = false
	
	CloseIcon.Name = "CloseIcon"
	CloseIcon.Parent = CloseBtn
	CloseIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseIcon.BackgroundTransparency = 1.000
	CloseIcon.Position = UDim2.new(0.2, 0, 0.128935531, 0)
	CloseIcon.Size = UDim2.new(0, 17, 0, 17)
	CloseIcon.Image = "http://www.roblox.com/asset/?id=6035047409"
	CloseIcon.ImageColor3 = Color3.fromRGB(220, 221, 222)
	
	MinimizeBtn.Name = "MinimizeButton"
	MinimizeBtn.Parent = TopFrame
	MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	MinimizeBtn.BackgroundTransparency = 0
	MinimizeBtn.Position = UDim2.new(0.8, 0, -0.0169996787, 0)
	MinimizeBtn.Size = UDim2.new(0, 28, 0, 22)
	MinimizeBtn.Font = Enum.Font.Gotham
	MinimizeBtn.Text = ""
	MinimizeBtn.TextColor3 = _G.Color
	MinimizeBtn.TextSize = 14.000
	MinimizeBtn.BorderSizePixel = 0
	MinimizeBtn.AutoButtonColor = false
	
	MinimizeIcon.Name = "MinimizeLabel"
	MinimizeIcon.Parent = MinimizeBtn
	MinimizeIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MinimizeIcon.BackgroundTransparency = 1.000
	MinimizeIcon.Position = UDim2.new(0.2, 0, 0.128935531, 0)
	MinimizeIcon.Size = UDim2.new(0, 17, 0, 17)
	MinimizeIcon.Image = "http://www.roblox.com/asset/?id=6035067836"
	MinimizeIcon.ImageColor3 = Color3.fromRGB(220, 221, 222)
	
	ServersHolder.Name = "ServersHolder"
	ServersHolder.Parent = TopFrameHolder
	
	Userpad.Name = "Userpad"
	Userpad.Parent = TopFrameHolder
	Userpad.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Userpad.BorderSizePixel = 0
	Userpad.Position = UDim2.new(0.106243297, 0, 15.9807148, 0)
	Userpad.Size = UDim2.new(0, 179, 0, 43)
	
	UserIcon.Name = "UserIcon"
	UserIcon.Parent = Userpad
	UserIcon.BackgroundColor3 = Color3.fromRGB(20,20,20)
	UserIcon.BorderSizePixel = 0
	UserIcon.Position = UDim2.new(0.0340000018, 0, 0.123999998, 0)
	UserIcon.Size = UDim2.new(0, 32, 0, 32)
	
	UserIconCorner.CornerRadius = UDim.new(1, 8)
	UserIconCorner.Name = "UserIconCorner"
	UserIconCorner.Parent = UserIcon
	
	UserImage.Name = "UserImage"
	UserImage.Parent = UserIcon
	UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserImage.BackgroundTransparency = 1.000
	UserImage.Size = UDim2.new(0, 32, 0, 32)
	UserImage.Image = pfp
	UserImage.ImageTransparency = 1
	
	UserCircleImage.Name = "UserImage"
	UserCircleImage.Parent = UserImage
	UserCircleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserCircleImage.BackgroundTransparency = 1.000
	UserCircleImage.Size = UDim2.new(0, 32, 0, 32)
	UserCircleImage.Image = "rbxassetid://4031889928"
	UserCircleImage.ImageColor3 = Color3.fromRGB(20,20,20)
	
	UserName.Name = "UserName"
	UserName.Parent = Userpad
	UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserName.BackgroundTransparency = 1.000
	UserName.BorderSizePixel = 0
	UserName.Position = UDim2.new(0.230000004, 0, 0.115999997, 0)
	UserName.Size = UDim2.new(0, 98, 0, 17)
	UserName.Font = Enum.Font.GothamSemibold
	UserName.TextSize = 13.000
	UserName.TextXAlignment = Enum.TextXAlignment.Left
	UserName.ClipsDescendants = true
	UserName.TextTransparency = 1
	
	UserTag.Name = "UserTag"
	UserTag.Parent = Userpad
	UserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserTag.BackgroundTransparency = 1.000
	UserTag.BorderSizePixel = 0
	UserTag.Position = UDim2.new(0.230000004, 0, 0.455000013, 0)
	UserTag.Size = UDim2.new(0, 95, 0, 17)
	UserTag.Font = Enum.Font.Gotham
	UserTag.TextColor3 = _G.Color
	UserTag.TextSize = 13.000
	UserTag.TextXAlignment = Enum.TextXAlignment.Left
	UserTag.TextTransparency = 1
	
	UserName.Text = user
	UserTag.Text = "#" .. tag
	
	ServersHoldFrame.Name = "ServersHoldFrame"
	ServersHoldFrame.Parent = MainFrame
	ServersHoldFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServersHoldFrame.BackgroundTransparency = 1.000
	ServersHoldFrame.BorderColor3 = Color3.fromRGB(20,20,20)
	ServersHoldFrame.Size = UDim2.new(0, 71, 0, 396)
	
	ServersHold.Name = "ServersHold"
	ServersHold.Parent = ServersHoldFrame
	ServersHold.Active = true
	ServersHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServersHold.BackgroundTransparency = 1.000
	ServersHold.BorderSizePixel = 0
	ServersHold.Position = UDim2.new(-0.000359333731, 0, 0.0580808073, 0)
	ServersHold.Size = UDim2.new(0, 71, 0, 373)
	ServersHold.ScrollBarThickness = 1
	ServersHold.ScrollBarImageTransparency = 1
	ServersHold.CanvasSize = UDim2.new(0, 0, 0, 0)
	
	ServersHoldLayout.Name = "ServersHoldLayout"
	ServersHoldLayout.Parent = ServersHold
	ServersHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ServersHoldLayout.Padding = UDim.new(0, 7)
	
	ServersHoldPadding.Name = "ServersHoldPadding"
	ServersHoldPadding.Parent = ServersHold
	
	CloseBtn.MouseButton1Click:Connect(
	function()
	MainFrame:TweenSize(UDim2.new(0, 611, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .5, true)
	end
	)
	
	CloseBtn.MouseEnter:Connect(
	function()
	CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	end
	)
	
	CloseBtn.MouseLeave:Connect(
	function()
	CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	end
	)
	
	MinimizeBtn.MouseEnter:Connect(
	function()
	MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	end
	)
	
	MinimizeBtn.MouseLeave:Connect(
	function()
	MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
	end
	)
	
	MinimizeBtn.MouseButton1Click:Connect(
	function()
	if minimized == false then
	MainFrame:TweenSize(
	UDim2.new(0, 611, 0, 22),
	Enum.EasingDirection.Out,
	Enum.EasingStyle.Quart,
	.3,
	true
	)
	else
	MainFrame:TweenSize(
	UDim2.new(0, 611, 0, 396),
	Enum.EasingDirection.Out,
	Enum.EasingStyle.Quart,
	.3,
	true
	)
	end
	minimized = not minimized
	end
	)
	
	local SettingsOpenBtn = Instance.new("TextButton")
	local SettingsOpenBtnIco = Instance.new("ImageLabel")
	
	SettingsOpenBtn.Name = "SettingsOpenBtn"
	SettingsOpenBtn.Parent = Userpad
	SettingsOpenBtn.BackgroundColor3 = Color3.fromRGB(53, 56, 62)
	SettingsOpenBtn.BackgroundTransparency = 1.000
	SettingsOpenBtn.Position = UDim2.new(0.03, 0, 0.2, 0)
	SettingsOpenBtn.Size = UDim2.new(0, 0, 0, 0)
	SettingsOpenBtn.Font = Enum.Font.SourceSans
	SettingsOpenBtn.Text = ""
	SettingsOpenBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	SettingsOpenBtn.TextSize = 14.000
	
	
	SettingsOpenBtnIco.Name = "SettingsOpenBtnIco"
	SettingsOpenBtnIco.Parent = SettingsOpenBtn
	SettingsOpenBtnIco.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
	SettingsOpenBtnIco.BackgroundTransparency = 1.000
	SettingsOpenBtnIco.Size = UDim2.new(0, 0, 0, 0)
	SettingsOpenBtnIco.ImageTransparency = 1
	SettingsOpenBtnIco.Image = "http://www.roblox.com/asset/?id=6031280882"
	SettingsOpenBtnIco.ImageColor3 = Color3.fromRGB(220, 220, 220)
	local SettingsFrame = Instance.new("Frame")
	local Settings = Instance.new("Frame")
	local SettingsHolder = Instance.new("Frame")
	local CloseSettingsBtn = Instance.new("TextButton")
	local CloseSettingsBtnCorner = Instance.new("UICorner")
	local CloseSettingsBtnCircle = Instance.new("Frame")
	local CloseSettingsBtnCircleCorner = Instance.new("UICorner")
	local CloseSettingsBtnIcon = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local UserPanel = Instance.new("Frame")
	local UserSettingsPad = Instance.new("Frame")
	local UserSettingsPadCorner = Instance.new("UICorner")
	local UsernameText = Instance.new("TextLabel")
	local UserSettingsPadUserTag = Instance.new("Frame")
	local UserSettingsPadUser = Instance.new("TextLabel")
	local UserSettingsPadUserTagLayout = Instance.new("UIListLayout")
	local UserSettingsPadTag = Instance.new("TextLabel")
	local EditBtn = Instance.new("TextButton")
	local EditBtnCorner = Instance.new("UICorner")
	local UserPanelUserIcon = Instance.new("TextButton")
	local UserPanelUserImage = Instance.new("ImageLabel")
	local UserPanelUserCircle = Instance.new("ImageLabel")
	local BlackFrame = Instance.new("Frame")
	local BlackFrameCorner = Instance.new("UICorner")
	local ChangeAvatarText = Instance.new("TextLabel")
	local SearchIcoFrame = Instance.new("Frame")
	local SearchIcoFrameCorner = Instance.new("UICorner")
	local SearchIco = Instance.new("ImageLabel")
	local UserPanelUserTag = Instance.new("Frame")
	local UserPanelUser = Instance.new("TextLabel")
	local UserPanelUserTagLayout = Instance.new("UIListLayout")
	local UserPanelTag = Instance.new("TextLabel")
	local UserPanelCorner = Instance.new("UICorner")
	local LeftFrame = Instance.new("Frame")
	local MyAccountBtn = Instance.new("TextButton")
	local MyAccountBtnCorner = Instance.new("UICorner")
	local MyAccountBtnTitle = Instance.new("TextLabel")
	local SettingsTitle = Instance.new("TextLabel")
	local DiscordInfo = Instance.new("TextLabel")
	local CurrentSettingOpen = Instance.new("TextLabel")
	
	SettingsFrame.Name = "SettingsFrame"
	SettingsFrame.Parent = MainFrame
	SettingsFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	SettingsFrame.BackgroundTransparency = 1.000
	SettingsFrame.Size = UDim2.new(0, 681, 0, 396)
	SettingsFrame.Visible = false
	
	Settings.Name = "Settings"
	Settings.Parent = SettingsFrame
	Settings.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
	Settings.BorderSizePixel = 0
	Settings.Position = UDim2.new(0, 0, 0.0530303046, 0)
	Settings.Size = UDim2.new(0, 681, 0, 375)
	
	SettingsHolder.Name = "SettingsHolder"
	SettingsHolder.Parent = Settings
	SettingsHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	SettingsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsHolder.BackgroundTransparency = 1.000
	SettingsHolder.ClipsDescendants = true
	SettingsHolder.Position = UDim2.new(0.49926579, 0, 0.498666674, 0)
	SettingsHolder.Size = UDim2.new(0, 0, 0, 0)
	
	CloseSettingsBtn.Name = "CloseSettingsBtn"
	CloseSettingsBtn.Parent = SettingsHolder
	CloseSettingsBtn.AnchorPoint = Vector2.new(0.5, 0.5)
	CloseSettingsBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
	CloseSettingsBtn.Position = UDim2.new(0.952967286, 0, 0.0853333324, 0)
	CloseSettingsBtn.Selectable = false
	CloseSettingsBtn.Size = UDim2.new(0, 30, 0, 30)
	CloseSettingsBtn.AutoButtonColor = false
	CloseSettingsBtn.Font = Enum.Font.SourceSans
	CloseSettingsBtn.Text = ""
	CloseSettingsBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	CloseSettingsBtn.TextSize = 14.000
	
	CloseSettingsBtnCorner.CornerRadius = UDim.new(1, 0)
	CloseSettingsBtnCorner.Name = "CloseSettingsBtnCorner"
	CloseSettingsBtnCorner.Parent = CloseSettingsBtn
	
	CloseSettingsBtnCircle.Name = "CloseSettingsBtnCircle"
	CloseSettingsBtnCircle.Parent = CloseSettingsBtn
	CloseSettingsBtnCircle.BackgroundColor3 = _G.Color
	CloseSettingsBtnCircle.Position = UDim2.new(0.0879999995, 0, 0.118000001, 0)
	CloseSettingsBtnCircle.Size = UDim2.new(0, 24, 0, 24)
	
	CloseSettingsBtnCircleCorner.CornerRadius = UDim.new(1, 0)
	CloseSettingsBtnCircleCorner.Name = "CloseSettingsBtnCircleCorner"
	CloseSettingsBtnCircleCorner.Parent = CloseSettingsBtnCircle
	
	CloseSettingsBtnIcon.Name = "CloseSettingsBtnIcon"
	CloseSettingsBtnIcon.Parent = CloseSettingsBtnCircle
	CloseSettingsBtnIcon.BackgroundColor3 = _G.Color
	CloseSettingsBtnIcon.BackgroundTransparency = 1.000
	CloseSettingsBtnIcon.Position = UDim2.new(0, 2, 0, 2)
	CloseSettingsBtnIcon.Size = UDim2.new(0, 19, 0, 19)
	CloseSettingsBtnIcon.Image = "http://www.roblox.com/asset/?id=6035047409"
	CloseSettingsBtnIcon.ImageColor3 = Color3.fromRGB(222, 222, 222)
	
	CloseSettingsBtn.MouseButton1Click:Connect(function()
	settingsopened = false
	TopFrameHolder.Visible = true
	ServersHoldFrame.Visible = true
	SettingsHolder:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
	TweenService:Create(
	Settings,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	for i,v in next, SettingsHolder:GetChildren() do
	TweenService:Create(
	v,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	end
	wait(.3)
	SettingsFrame.Visible = false
	end)
	
	CloseSettingsBtn.MouseEnter:Connect(function()
	CloseSettingsBtnCircle.BackgroundColor3 = _G.Color
	end)
	
	CloseSettingsBtn.MouseLeave:Connect(function()
	CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
	end)
	
	UserInputService.InputBegan:Connect(
	function(io, p)
	if io.KeyCode == Enum.KeyCode.RightControl then
	if settingsopened == true then
	settingsopened = false
	TopFrameHolder.Visible = true
	ServersHoldFrame.Visible = true
	SettingsHolder:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
	TweenService:Create(
		Settings,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundTransparency = 1}
	):Play()
	for i,v in next, SettingsHolder:GetChildren() do
		TweenService:Create(
			v,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundTransparency = 1}
		):Play()
	end
	wait(.3)
	SettingsFrame.Visible = false
	end
	end
	end
	)
	
	TextLabel.Parent = CloseSettingsBtn
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(-0.0666666701, 0, 1.06666672, 0)
	TextLabel.Size = UDim2.new(0, 34, 0, 22)
	TextLabel.Font = Enum.Font.GothamSemibold
	TextLabel.Text = "rightctrl"
	TextLabel.TextColor3 = Color3.fromRGB(113, 117, 123)
	TextLabel.TextSize = 11.000
	
	UserPanel.Name = "UserPanel"
	UserPanel.Parent = SettingsHolder
	UserPanel.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	UserPanel.Position = UDim2.new(0.365638763, 0, 0.130666673, 0)
	UserPanel.Size = UDim2.new(0, 362, 0, 164)
	
	UserSettingsPad.Name = "UserSettingsPad"
	UserSettingsPad.Parent = UserPanel
	UserSettingsPad.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
	UserSettingsPad.Position = UDim2.new(0.0331491716, 0, 0.568140388, 0)
	UserSettingsPad.Size = UDim2.new(0, 337, 0, 56)
	
	UserSettingsPadCorner.Name = "UserSettingsPadCorner"
	UserSettingsPadCorner.Parent = UserSettingsPad
	
	UsernameText.Name = "UsernameText"
	UsernameText.Parent = UserSettingsPad
	UsernameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UsernameText.BackgroundTransparency = 1.000
	UsernameText.Position = UDim2.new(0.0419999994, 0, 0.154714286, 0)
	UsernameText.Size = UDim2.new(0, 65, 0, 19)
	UsernameText.Font = Enum.Font.GothamBold
	UsernameText.Text = "USERNAME"
	UsernameText.TextColor3 = Color3.fromRGB(126, 130, 136)
	UsernameText.TextSize = 11.000
	UsernameText.TextXAlignment = Enum.TextXAlignment.Left
	
	UserSettingsPadUserTag.Name = "UserSettingsPadUserTag"
	UserSettingsPadUserTag.Parent = UserSettingsPad
	UserSettingsPadUserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserSettingsPadUserTag.BackgroundTransparency = 1.000
	UserSettingsPadUserTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
	UserSettingsPadUserTag.Size = UDim2.new(0, 65, 0, 19)
	
	UserSettingsPadUser.Name = "UserSettingsPadUser"
	UserSettingsPadUser.Parent = UserSettingsPadUserTag
	UserSettingsPadUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserSettingsPadUser.BackgroundTransparency = 1.000
	UserSettingsPadUser.Font = Enum.Font.Gotham
	UserSettingsPadUser.TextColor3 = Color3.fromRGB(255, 255, 255)
	UserSettingsPadUser.TextSize = 13.000
	UserSettingsPadUser.TextXAlignment = Enum.TextXAlignment.Left
	UserSettingsPadUser.Text = user
	UserSettingsPadUser.Size = UDim2.new(0, UserSettingsPadUser.TextBounds.X + 2, 0, 19)
	
	UserSettingsPadUserTagLayout.Name = "UserSettingsPadUserTagLayout"
	UserSettingsPadUserTagLayout.Parent = UserSettingsPadUserTag
	UserSettingsPadUserTagLayout.FillDirection = Enum.FillDirection.Horizontal
	UserSettingsPadUserTagLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	UserSettingsPadTag.Name = "UserSettingsPadTag"
	UserSettingsPadTag.Parent = UserSettingsPadUserTag
	UserSettingsPadTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserSettingsPadTag.BackgroundTransparency = 1.000
	UserSettingsPadTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
	UserSettingsPadTag.Size = UDim2.new(0, 65, 0, 19)
	UserSettingsPadTag.Font = Enum.Font.Gotham
	UserSettingsPadTag.Text = "#" .. tag
	UserSettingsPadTag.TextColor3 = Color3.fromRGB(184, 186, 189)
	UserSettingsPadTag.TextSize = 13.000
	UserSettingsPadTag.TextXAlignment = Enum.TextXAlignment.Left
	
	EditBtn.Name = "EditBtn"
	EditBtn.Parent = UserSettingsPad
	EditBtn.BackgroundColor3 = Color3.fromRGB(116, 127, 141)
	EditBtn.Position = UDim2.new(0.797671914, 0, 0.232142866, 0)
	EditBtn.Size = UDim2.new(0, 55, 0, 30)
	EditBtn.Font = Enum.Font.Gotham
	EditBtn.Text = "Edit"
	EditBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	EditBtn.TextSize = 14.000
	EditBtn.AutoButtonColor = false
	
	EditBtn.MouseEnter:Connect(function()
	TweenService:Create(
	EditBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(104,114,127)}
	):Play()
	end)
	
	EditBtn.MouseLeave:Connect(function()
	TweenService:Create(
	EditBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(116, 127, 141)}
	):Play()
	end)
	
	EditBtnCorner.CornerRadius = UDim.new(0, 3)
	EditBtnCorner.Name = "EditBtnCorner"
	EditBtnCorner.Parent = EditBtn
	
	UserPanelUserIcon.Name = "UserPanelUserIcon"
	UserPanelUserIcon.Parent = UserPanel
	UserPanelUserIcon.BackgroundColor3 = Color3.fromRGB(31, 33, 36)
	UserPanelUserIcon.BorderSizePixel = 0
	UserPanelUserIcon.Position = UDim2.new(0.0340000018, 0, 0.074000001, 0)
	UserPanelUserIcon.Size = UDim2.new(0, 71, 0, 71)
	UserPanelUserIcon.AutoButtonColor = false
	UserPanelUserIcon.Text = ""
	
	UserPanelUserImage.Name = "UserPanelUserImage"
	UserPanelUserImage.Parent = UserPanelUserIcon
	UserPanelUserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserPanelUserImage.BackgroundTransparency = 1.000
	UserPanelUserImage.Size = UDim2.new(0, 71, 0, 71)
	UserPanelUserImage.Image = pfp
	
	UserPanelUserCircle.Name = "UserPanelUserCircle"
	UserPanelUserCircle.Parent = UserPanelUserImage
	UserPanelUserCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserPanelUserCircle.BackgroundTransparency = 1.000
	UserPanelUserCircle.Size = UDim2.new(0, 71, 0, 71)
	UserPanelUserCircle.Image = "rbxassetid://4031889928"
	UserPanelUserCircle.ImageColor3 = Color3.fromRGB(47, 49, 54)
	
	BlackFrame.Name = "BlackFrame"
	BlackFrame.Parent = UserPanelUserIcon
	BlackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	BlackFrame.BackgroundTransparency = 0.400
	BlackFrame.BorderSizePixel = 0
	BlackFrame.Size = UDim2.new(0, 71, 0, 71)
	BlackFrame.Visible = false
	
	BlackFrameCorner.CornerRadius = UDim.new(1, 8)
	BlackFrameCorner.Name = "BlackFrameCorner"
	BlackFrameCorner.Parent = BlackFrame
	
	ChangeAvatarText.Name = "ChangeAvatarText"
	ChangeAvatarText.Parent = BlackFrame
	ChangeAvatarText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChangeAvatarText.BackgroundTransparency = 1.000
	ChangeAvatarText.Size = UDim2.new(0, 71, 0, 71)
	ChangeAvatarText.Font = Enum.Font.GothamBold
	ChangeAvatarText.Text = "CHAGNE    AVATAR"
	ChangeAvatarText.TextColor3 = Color3.fromRGB(255, 255, 255)
	ChangeAvatarText.TextSize = 11.000
	ChangeAvatarText.TextWrapped = true
	
	SearchIcoFrame.Name = "SearchIcoFrame"
	SearchIcoFrame.Parent = UserPanelUserIcon
	SearchIcoFrame.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
	SearchIcoFrame.Position = UDim2.new(0.657999992, 0, 0, 0)
	SearchIcoFrame.Size = UDim2.new(0, 20, 0, 20)
	
	SearchIcoFrameCorner.CornerRadius = UDim.new(1, 8)
	SearchIcoFrameCorner.Name = "SearchIcoFrameCorner"
	SearchIcoFrameCorner.Parent = SearchIcoFrame
	
	SearchIco.Name = "SearchIco"
	SearchIco.Parent = SearchIcoFrame
	SearchIco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchIco.BackgroundTransparency = 1.000
	SearchIco.Position = UDim2.new(0.150000006, 0, 0.100000001, 0)
	SearchIco.Size = UDim2.new(0, 15, 0, 15)
	SearchIco.Image = "http://www.roblox.com/asset/?id=6034407084"
	SearchIco.ImageColor3 = Color3.fromRGB(114, 118, 125)
	
	UserPanelUserIcon.MouseEnter:Connect(function()
	BlackFrame.Visible = true
	end)
	
	UserPanelUserIcon.MouseLeave:Connect(function()
	BlackFrame.Visible = false
	end)
	
	UserPanelUserIcon.MouseButton1Click:Connect(function()
	local NotificationHolder = Instance.new("TextButton")
	NotificationHolder.Name = "NotificationHolder"
	NotificationHolder.Parent = SettingsHolder
	NotificationHolder.BackgroundColor3 = Color3.fromRGB(22,22,22)
	NotificationHolder.Position = UDim2.new(-0.00881057233, 0, -0.00266666664, 0)
	NotificationHolder.Size = UDim2.new(0, 687, 0, 375)
	NotificationHolder.AutoButtonColor = false
	NotificationHolder.Font = Enum.Font.SourceSans
	NotificationHolder.Text = ""
	NotificationHolder.TextColor3 = _G.Color
	NotificationHolder.TextSize = 14.000
	NotificationHolder.BackgroundTransparency = 1
	NotificationHolder.Visible = true
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0.2}
	):Play()
	
	
	
	local AvatarChange = Instance.new("Frame")
	local UserChangeCorner = Instance.new("UICorner")
	local UnderBar = Instance.new("Frame")
	local UnderBarCorner = Instance.new("UICorner")
	local UnderBarFrame = Instance.new("Frame")
	local Text1 = Instance.new("TextLabel")
	local Text2 = Instance.new("TextLabel")
	local TextBoxFrame = Instance.new("Frame")
	local TextBoxFrameCorner = Instance.new("UICorner")
	local TextBoxFrame1 = Instance.new("Frame")
	local TextBoxFrame1Corner = Instance.new("UICorner")
	local AvatarTextbox = Instance.new("TextBox")
	local ChangeBtn = Instance.new("TextButton")
	local ChangeCorner = Instance.new("UICorner")
	local CloseBtn2 = Instance.new("TextButton")
	local Close2Icon = Instance.new("ImageLabel")
	local CloseBtn1 = Instance.new("TextButton")
	local CloseBtn1Corner = Instance.new("UICorner")
	local ResetBtn = Instance.new("TextButton")
	local ResetCorner = Instance.new("UICorner")
	
	
	AvatarChange.Name = "AvatarChange"
	AvatarChange.Parent = NotificationHolder
	AvatarChange.AnchorPoint = Vector2.new(0.5, 0.5)
	AvatarChange.BackgroundColor3 = Color3.fromRGB(20,20,20)
	AvatarChange.ClipsDescendants = true
	AvatarChange.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
	AvatarChange.Size = UDim2.new(0, 0, 0, 0)
	AvatarChange.BackgroundTransparency = 1
	
	AvatarChange:TweenSize(UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	AvatarChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0}
	):Play()
	
	
	UserChangeCorner.CornerRadius = UDim.new(0, 5)
	UserChangeCorner.Name = "UserChangeCorner"
	UserChangeCorner.Parent = AvatarChange
	
	UnderBar.Name = "UnderBar"
	UnderBar.Parent = AvatarChange
	UnderBar.BackgroundColor3 = Color3.fromRGB(25,25,25)
	UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
	UnderBar.Size = UDim2.new(0, 346, 0, 13)
	
	UnderBarCorner.CornerRadius = UDim.new(0, 5)
	UnderBarCorner.Name = "UnderBarCorner"
	UnderBarCorner.Parent = UnderBar
	
	UnderBarFrame.Name = "UnderBarFrame"
	UnderBarFrame.Parent = UnderBar
	UnderBarFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	UnderBarFrame.BorderSizePixel = 0
	UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -2.53846145, 0)
	UnderBarFrame.Size = UDim2.new(0, 346, 0, 39)
	
	Text1.Name = "Text1"
	Text1.Parent = AvatarChange
	Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text1.BackgroundTransparency = 1.000
	Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
	Text1.Size = UDim2.new(0, 346, 0, 68)
	Text1.Font = Enum.Font.GothamSemibold
	Text1.Text = "Change your avatar"
	Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text1.TextSize = 20.000
	
	Text2.Name = "Text2"
	Text2.Parent = AvatarChange
	Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text2.BackgroundTransparency = 1.000
	Text2.Position = UDim2.new(-0.000594122568, 0, 0.141587839, 0)
	Text2.Size = UDim2.new(0, 346, 0, 63)
	Text2.Font = Enum.Font.Gotham
	Text2.Text = "Enter your new profile in a Roblox decal link."
	Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
	Text2.TextSize = 14.000
	
	TextBoxFrame.Name = "TextBoxFrame"
	TextBoxFrame.Parent = AvatarChange
	TextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBoxFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	TextBoxFrame.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
	TextBoxFrame.Size = UDim2.new(0, 319, 0, 38)
	
	TextBoxFrameCorner.CornerRadius = UDim.new(0, 3)
	TextBoxFrameCorner.Name = "TextBoxFrameCorner"
	TextBoxFrameCorner.Parent = TextBoxFrame
	
	TextBoxFrame1.Name = "TextBoxFrame1"
	TextBoxFrame1.Parent = TextBoxFrame
	TextBoxFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBoxFrame1.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
	TextBoxFrame1.ClipsDescendants = true
	TextBoxFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextBoxFrame1.Size = UDim2.new(0, 317, 0, 36)
	
	TextBoxFrame1Corner.CornerRadius = UDim.new(0, 3)
	TextBoxFrame1Corner.Name = "TextBoxFrame1Corner"
	TextBoxFrame1Corner.Parent = TextBoxFrame1
	
	AvatarTextbox.Name = "AvatarTextbox"
	AvatarTextbox.Parent = TextBoxFrame1
	AvatarTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AvatarTextbox.BackgroundTransparency = 1.000
	AvatarTextbox.Position = UDim2.new(0.0378548913, 0, 0, 0)
	AvatarTextbox.Size = UDim2.new(0, 293, 0, 37)
	AvatarTextbox.Font = Enum.Font.Gotham
	AvatarTextbox.Text = ""
	AvatarTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
	AvatarTextbox.TextSize = 14.000
	AvatarTextbox.TextXAlignment = Enum.TextXAlignment.Left
	
	ChangeBtn.Name = "ChangeBtn"
	ChangeBtn.Parent = AvatarChange
	ChangeBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
	ChangeBtn.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
	ChangeBtn.Size = UDim2.new(0, 76, 0, 27)
	ChangeBtn.Font = Enum.Font.Gotham
	ChangeBtn.Text = "Change"
	ChangeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	ChangeBtn.TextSize = 13.000
	ChangeBtn.AutoButtonColor = false
	
	ChangeBtn.MouseEnter:Connect(function()
	TweenService:Create(
	ChangeBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(103,123,196)}
	):Play()
	end)
	
	ChangeBtn.MouseLeave:Connect(function()
	TweenService:Create(
	ChangeBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
	):Play()
	end)
	
	ChangeBtn.MouseButton1Click:Connect(function()
	pfp = tostring(AvatarTextbox.Text)
	UserImage.Image = pfp
	UserPanelUserImage.Image = pfp
	SaveInfo()
	
	AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	AvatarChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	
	
	ChangeCorner.CornerRadius = UDim.new(0, 4)
	ChangeCorner.Name = "ChangeCorner"
	ChangeCorner.Parent = ChangeBtn
	
	CloseBtn2.Name = "CloseBtn2"
	CloseBtn2.Parent = AvatarChange
	CloseBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseBtn2.BackgroundTransparency = 1.000
	CloseBtn2.Position = UDim2.new(0.898000002, 0, 0, 0)
	CloseBtn2.Size = UDim2.new(0, 26, 0, 26)
	CloseBtn2.Font = Enum.Font.Gotham
	CloseBtn2.Text = ""
	CloseBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseBtn2.TextSize = 14.000
	
	Close2Icon.Name = "Close2Icon"
	Close2Icon.Parent = CloseBtn2
	Close2Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close2Icon.BackgroundTransparency = 1.000
	Close2Icon.Position = UDim2.new(-0.0384615399, 0, 0.312910825, 0)
	Close2Icon.Size = UDim2.new(0, 25, 0, 25)
	Close2Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
	Close2Icon.ImageColor3 = Color3.fromRGB(119, 122, 127)
	
	CloseBtn1.Name = "CloseBtn1"
	CloseBtn1.Parent = AvatarChange
	CloseBtn1.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
	CloseBtn1.BackgroundTransparency = 1.000
	CloseBtn1.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
	CloseBtn1.Size = UDim2.new(0, 76, 0, 27)
	CloseBtn1.Font = Enum.Font.Gotham
	CloseBtn1.Text = "Close"
	CloseBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseBtn1.TextSize = 13.000
	
	CloseBtn1Corner.CornerRadius = UDim.new(0, 4)
	CloseBtn1Corner.Name = "CloseBtn1Corner"
	CloseBtn1Corner.Parent = CloseBtn1
	
	ResetBtn.Name = "ResetBtn"
	ResetBtn.Parent = AvatarChange
	ResetBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
	ResetBtn.BackgroundTransparency = 1.000
	ResetBtn.Position = UDim2.new(0.260895967, 0, 0.823000014, 0)
	ResetBtn.Size = UDim2.new(0, 76, 0, 27)
	ResetBtn.Font = Enum.Font.Gotham
	ResetBtn.Text = "Reset"
	ResetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	ResetBtn.TextSize = 13.000
	
	ResetBtn.MouseButton1Click:Connect(function()
	pfp = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
	UserImage.Image = pfp
	UserPanelUserImage.Image = pfp
	SaveInfo()
	
	AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	AvatarChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	ResetCorner.CornerRadius = UDim.new(0, 4)
	ResetCorner.Name = "ResetCorner"
	ResetCorner.Parent = ResetBtn
	
	CloseBtn1.MouseButton1Click:Connect(function()
	AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	AvatarChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	CloseBtn2.MouseButton1Click:Connect(function()
	AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	AvatarChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	CloseBtn2.MouseEnter:Connect(function()
	TweenService:Create(
	Close2Icon,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{ImageColor3 = Color3.fromRGB(210,210,210)}
	):Play()
	end)
	
	CloseBtn2.MouseLeave:Connect(function()
	TweenService:Create(
	Close2Icon,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{ImageColor3 = Color3.fromRGB(119, 122, 127)}
	):Play()
	end)
	
	
	AvatarTextbox.Focused:Connect(function()
	TweenService:Create(
	TextBoxFrame,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
	):Play()
	end)
	
	AvatarTextbox.FocusLost:Connect(function()
	TweenService:Create(
	TextBoxFrame,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
	):Play()
	end)
	
	
	end)
	
	UserPanelUserTag.Name = "UserPanelUserTag"
	UserPanelUserTag.Parent = UserPanel
	UserPanelUserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserPanelUserTag.BackgroundTransparency = 1.000
	UserPanelUserTag.Position = UDim2.new(0.271143615, 0, 0.231804818, 0)
	UserPanelUserTag.Size = UDim2.new(0, 113, 0, 19)
	
	UserPanelUser.Name = "UserPanelUser"
	UserPanelUser.Parent = UserPanelUserTag
	UserPanelUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserPanelUser.BackgroundTransparency = 1.000
	UserPanelUser.Font = Enum.Font.GothamSemibold
	UserPanelUser.TextColor3 = Color3.fromRGB(255, 255, 255)
	UserPanelUser.TextSize = 17.000
	UserPanelUser.TextXAlignment = Enum.TextXAlignment.Left
	UserPanelUser.Text = user
	UserPanelUser.Size = UDim2.new(0, UserPanelUser.TextBounds.X + 2, 0, 19)
	
	
	UserPanelUserTagLayout.Name = "UserPanelUserTagLayout"
	UserPanelUserTagLayout.Parent = UserPanelUserTag
	UserPanelUserTagLayout.FillDirection = Enum.FillDirection.Horizontal
	UserPanelUserTagLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	UserPanelTag.Name = "UserPanelTag"
	UserPanelTag.Parent = UserPanelUserTag
	UserPanelTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserPanelTag.BackgroundTransparency = 1.000
	UserPanelTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
	UserPanelTag.Size = UDim2.new(0, 65, 0, 19)
	UserPanelTag.Font = Enum.Font.Gotham
	UserPanelTag.Text = "#" .. tag
	UserPanelTag.TextColor3 = Color3.fromRGB(184, 186, 189)
	UserPanelTag.TextSize = 17.000
	UserPanelTag.TextXAlignment = Enum.TextXAlignment.Left
	
	UserPanelCorner.Name = "UserPanelCorner"
	UserPanelCorner.Parent = UserPanel
	
	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = SettingsHolder
	LeftFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	LeftFrame.BorderSizePixel = 0
	LeftFrame.Position = UDim2.new(0, 0, -0.000303059904, 0)
	LeftFrame.Size = UDim2.new(0, 233, 0, 375)
	
	MyAccountBtn.Name = "MyAccountBtn"
	MyAccountBtn.Parent = LeftFrame
	MyAccountBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
	MyAccountBtn.BorderSizePixel = 0
	MyAccountBtn.Position = UDim2.new(0.271232396, 0, 0.101614028, 0)
	MyAccountBtn.Size = UDim2.new(0, 160, 0, 30)
	MyAccountBtn.AutoButtonColor = false
	MyAccountBtn.Font = Enum.Font.SourceSans
	MyAccountBtn.Text = ""
	MyAccountBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	MyAccountBtn.TextSize = 14.000
	
	MyAccountBtnCorner.CornerRadius = UDim.new(0, 6)
	MyAccountBtnCorner.Name = "MyAccountBtnCorner"
	MyAccountBtnCorner.Parent = MyAccountBtn
	
	MyAccountBtnTitle.Name = "MyAccountBtnTitle"
	MyAccountBtnTitle.Parent = MyAccountBtn
	MyAccountBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MyAccountBtnTitle.BackgroundTransparency = 1.000
	MyAccountBtnTitle.BorderSizePixel = 0
	MyAccountBtnTitle.Position = UDim2.new(0.0759999976, 0, -0.166999996, 0)
	MyAccountBtnTitle.Size = UDim2.new(0, 95, 0, 39)
	MyAccountBtnTitle.Font = Enum.Font.GothamSemibold
	MyAccountBtnTitle.Text = "My Account"
	MyAccountBtnTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	MyAccountBtnTitle.TextSize = 14.000
	MyAccountBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	SettingsTitle.Name = "SettingsTitle"
	SettingsTitle.Parent = LeftFrame
	SettingsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsTitle.BackgroundTransparency = 1.000
	SettingsTitle.Position = UDim2.new(0.308999985, 0, 0.0450000018, 0)
	SettingsTitle.Size = UDim2.new(0, 65, 0, 19)
	SettingsTitle.Font = Enum.Font.GothamBlack
	SettingsTitle.Text = "SETTINGS"
	SettingsTitle.TextColor3 = Color3.fromRGB(255, 146, 152)
	SettingsTitle.TextSize = 11.000
	SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	DiscordInfo.Name = "DiscordInfo"
	DiscordInfo.Parent = LeftFrame
	DiscordInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DiscordInfo.BackgroundTransparency = 1.000
	DiscordInfo.Position = UDim2.new(0.304721028, 0, 0.821333349, 0)
	DiscordInfo.Size = UDim2.new(0, 133, 0, 44)
	DiscordInfo.Font = Enum.Font.Gotham
	DiscordInfo.Text = "Stable 1.0.0 (00001)  Host 0.0.0.1                Roblox Lua Engine    "
	DiscordInfo.TextColor3 = Color3.fromRGB(255, 108, 116)
	DiscordInfo.TextSize = 13.000
	DiscordInfo.TextWrapped = true
	DiscordInfo.TextXAlignment = Enum.TextXAlignment.Left
	DiscordInfo.TextYAlignment = Enum.TextYAlignment.Top
	
	CurrentSettingOpen.Name = "CurrentSettingOpen"
	CurrentSettingOpen.Parent = LeftFrame
	CurrentSettingOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CurrentSettingOpen.BackgroundTransparency = 1.000
	CurrentSettingOpen.Position = UDim2.new(1.07294846, 0, 0.0450000018, 0)
	CurrentSettingOpen.Size = UDim2.new(0, 65, 0, 19)
	CurrentSettingOpen.Font = Enum.Font.GothamBlack
	CurrentSettingOpen.Text = "MY ACCOUNT"
	CurrentSettingOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
	CurrentSettingOpen.TextSize = 14.000
	CurrentSettingOpen.TextXAlignment = Enum.TextXAlignment.Left
	
	
	SettingsOpenBtn.MouseButton1Click:Connect(function ()
	settingsopened = true
	TopFrameHolder.Visible = false
	ServersHoldFrame.Visible = false
	SettingsFrame.Visible = true
	SettingsHolder:TweenSize(UDim2.new(0, 681, 0, 375), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
	Settings.BackgroundTransparency = 1
	TweenService:Create(
	Settings,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0}
	):Play()
	for i,v in next, SettingsHolder:GetChildren() do
	v.BackgroundTransparency = 1
	TweenService:Create(
	v,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0}
	):Play()
	end
	end)
	
	EditBtn.MouseButton1Click:Connect(function()
	local NotificationHolder = Instance.new("TextButton")
	NotificationHolder.Name = "NotificationHolder"
	NotificationHolder.Parent = SettingsHolder
	NotificationHolder.BackgroundColor3 = Color3.fromRGB(10,10,10)
	NotificationHolder.Position = UDim2.new(-0.00881057233, 0, -0.00266666664, 0)
	NotificationHolder.Size = UDim2.new(0, 687, 0, 375)
	NotificationHolder.AutoButtonColor = false
	NotificationHolder.Font = Enum.Font.SourceSans
	NotificationHolder.Text = ""
	NotificationHolder.TextColor3 = Color3.fromRGB(0, 0, 0)
	NotificationHolder.TextSize = 14.000
	NotificationHolder.BackgroundTransparency = 1
	NotificationHolder.Visible = true
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0.2}
	):Play()
	
	local UserChange = Instance.new("Frame")
	local UserChangeCorner = Instance.new("UICorner")
	local UnderBar = Instance.new("Frame")
	local UnderBarCorner = Instance.new("UICorner")
	local UnderBarFrame = Instance.new("Frame")
	local Text1 = Instance.new("TextLabel")
	local Text2 = Instance.new("TextLabel")
	local TextBoxFrame = Instance.new("Frame")
	local TextBoxFrameCorner = Instance.new("UICorner")
	local TextBoxFrame1 = Instance.new("Frame")
	local TextBoxFrame1Corner = Instance.new("UICorner")
	local UsernameTextbox = Instance.new("TextBox")
	local Seperator = Instance.new("Frame")
	local HashtagLabel = Instance.new("TextLabel")
	local TagTextbox = Instance.new("TextBox")
	local ChangeBtn = Instance.new("TextButton")
	local ChangeCorner = Instance.new("UICorner")
	local CloseBtn2 = Instance.new("TextButton")
	local Close2Icon = Instance.new("ImageLabel")
	local CloseBtn1 = Instance.new("TextButton")
	local CloseBtn1Corner = Instance.new("UICorner")
	
	UserChange.Name = "UserChange"
	UserChange.Parent = NotificationHolder
	UserChange.AnchorPoint = Vector2.new(0.5, 0.5)
	UserChange.BackgroundColor3 = Color3.fromRGB(25,25,25)
	UserChange.ClipsDescendants = true
	UserChange.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
	UserChange.Size = UDim2.new(0, 0, 0, 0)
	UserChange.BackgroundTransparency = 1
	
	UserChange:TweenSize(UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	UserChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0}
	):Play()
	
	UserChangeCorner.CornerRadius = UDim.new(0, 5)
	UserChangeCorner.Name = "UserChangeCorner"
	UserChangeCorner.Parent = UserChange
	
	UnderBar.Name = "UnderBar"
	UnderBar.Parent = UserChange
	UnderBar.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
	UnderBar.Size = UDim2.new(0, 346, 0, 13)
	
	UnderBarCorner.CornerRadius = UDim.new(0, 5)
	UnderBarCorner.Name = "UnderBarCorner"
	UnderBarCorner.Parent = UnderBar
	
	UnderBarFrame.Name = "UnderBarFrame"
	UnderBarFrame.Parent = UnderBar
	UnderBarFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	UnderBarFrame.BorderSizePixel = 0
	UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -2.53846145, 0)
	UnderBarFrame.Size = UDim2.new(0, 346, 0, 39)
	
	Text1.Name = "Text1"
	Text1.Parent = UserChange
	Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text1.BackgroundTransparency = 1.000
	Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
	Text1.Size = UDim2.new(0, 346, 0, 68)
	Text1.Font = Enum.Font.GothamSemibold
	Text1.Text = "Change your username"
	Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text1.TextSize = 20.000
	
	Text2.Name = "Text2"
	Text2.Parent = UserChange
	Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text2.BackgroundTransparency = 1.000
	Text2.Position = UDim2.new(-0.000594122568, 0, 0.141587839, 0)
	Text2.Size = UDim2.new(0, 346, 0, 63)
	Text2.Font = Enum.Font.Gotham
	Text2.Text = "Enter your new username."
	Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
	Text2.TextSize = 14.000
	
	TextBoxFrame.Name = "TextBoxFrame"
	TextBoxFrame.Parent = UserChange
	TextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBoxFrame.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
	TextBoxFrame.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
	TextBoxFrame.Size = UDim2.new(0, 319, 0, 38)
	
	TextBoxFrameCorner.CornerRadius = UDim.new(0, 3)
	TextBoxFrameCorner.Name = "TextBoxFrameCorner"
	TextBoxFrameCorner.Parent = TextBoxFrame
	
	TextBoxFrame1.Name = "TextBoxFrame1"
	TextBoxFrame1.Parent = TextBoxFrame
	TextBoxFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBoxFrame1.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
	TextBoxFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextBoxFrame1.Size = UDim2.new(0, 317, 0, 36)
	
	TextBoxFrame1Corner.CornerRadius = UDim.new(0, 3)
	TextBoxFrame1Corner.Name = "TextBoxFrame1Corner"
	TextBoxFrame1Corner.Parent = TextBoxFrame1
	
	UsernameTextbox.Name = "UsernameTextbox"
	UsernameTextbox.Parent = TextBoxFrame1
	UsernameTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UsernameTextbox.BackgroundTransparency = 1.000
	UsernameTextbox.Position = UDim2.new(0.0378548913, 0, 0, 0)
	UsernameTextbox.Size = UDim2.new(0, 221, 0, 37)
	UsernameTextbox.Font = Enum.Font.Gotham
	UsernameTextbox.Text = user
	UsernameTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
	UsernameTextbox.TextSize = 14.000
	UsernameTextbox.TextXAlignment = Enum.TextXAlignment.Left
	
	Seperator.Name = "Seperator"
	Seperator.Parent = TextBoxFrame1
	Seperator.AnchorPoint = Vector2.new(0.5, 0.5)
	Seperator.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Seperator.BorderSizePixel = 0
	Seperator.Position = UDim2.new(0.753000021, 0, 0.500999987, 0)
	Seperator.Size = UDim2.new(0, 1, 0, 25)
	
	HashtagLabel.Name = "HashtagLabel"
	HashtagLabel.Parent = TextBoxFrame1
	HashtagLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HashtagLabel.BackgroundTransparency = 1.000
	HashtagLabel.Position = UDim2.new(0.765877604, 0, -0.0546001866, 0)
	HashtagLabel.Size = UDim2.new(0, 23, 0, 37)
	HashtagLabel.Font = Enum.Font.Gotham
	HashtagLabel.Text = " "
	HashtagLabel.TextColor3 = Color3.fromRGB(79, 82, 88)
	HashtagLabel.TextSize = 16.000
	
	TagTextbox.Name = "TagTextbox"
	TagTextbox.Parent = TextBoxFrame1
	TagTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TagTextbox.BackgroundTransparency = 1.000
	TagTextbox.Position = UDim2.new(0.824999988, 0, -0.0280000009, 0)
	TagTextbox.Size = UDim2.new(0, 59, 0, 38)
	TagTextbox.Font = Enum.Font.Gotham
	TagTextbox.PlaceholderColor3 = Color3.fromRGB(210, 211, 212)
	TagTextbox.Text = tag
	TagTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
	TagTextbox.TextSize = 14.000
	TagTextbox.TextXAlignment = Enum.TextXAlignment.Left
	
	ChangeBtn.Name = "ChangeBtn"
	ChangeBtn.Parent = UserChange
	ChangeBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
	ChangeBtn.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
	ChangeBtn.Size = UDim2.new(0, 76, 0, 27)
	ChangeBtn.Font = Enum.Font.Gotham
	ChangeBtn.Text = "Change"
	ChangeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	ChangeBtn.TextSize = 13.000
	ChangeBtn.AutoButtonColor = false
	
	ChangeBtn.MouseEnter:Connect(function()
	TweenService:Create(
	ChangeBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(103,123,196)}
	):Play()
	end)
	
	ChangeBtn.MouseLeave:Connect(function()
	TweenService:Create(
	ChangeBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
	):Play()
	end)
	
	ChangeBtn.MouseButton1Click:Connect(function()
	user = UsernameTextbox.Text
	tag = TagTextbox.Text
	UserSettingsPadUser.Text = user
	UserSettingsPadUser.Size = UDim2.new(0, UserSettingsPadUser.TextBounds.X + 2, 0, 19)
	UserSettingsPadTag.Text = "#" .. tag
	UserPanelTag.Text = "#" .. tag
	UserPanelUser.Text = user
	UserPanelUser.Size = UDim2.new(0, UserPanelUser.TextBounds.X + 2, 0, 19)
	UserName.Text = user
	UserTag.Text = "#" .. tag
	SaveInfo()
	
	UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	UserChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	ChangeCorner.CornerRadius = UDim.new(0, 4)
	ChangeCorner.Name = "ChangeCorner"
	ChangeCorner.Parent = ChangeBtn
	
	CloseBtn2.Name = "CloseBtn2"
	CloseBtn2.Parent = UserChange
	CloseBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseBtn2.BackgroundTransparency = 1.000
	CloseBtn2.Position = UDim2.new(0.898000002, 0, 0, 0)
	CloseBtn2.Size = UDim2.new(0, 26, 0, 26)
	CloseBtn2.Font = Enum.Font.Gotham
	CloseBtn2.Text = ""
	CloseBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseBtn2.TextSize = 14.000
	
	Close2Icon.Name = "Close2Icon"
	Close2Icon.Parent = CloseBtn2
	Close2Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close2Icon.BackgroundTransparency = 1.000
	Close2Icon.Position = UDim2.new(-0.0384615399, 0, 0.312910825, 0)
	Close2Icon.Size = UDim2.new(0, 25, 0, 25)
	Close2Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
	Close2Icon.ImageColor3 = Color3.fromRGB(119, 122, 127)
	
	CloseBtn1.Name = "CloseBtn1"
	CloseBtn1.Parent = UserChange
	CloseBtn1.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
	CloseBtn1.BackgroundTransparency = 1.000
	CloseBtn1.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
	CloseBtn1.Size = UDim2.new(0, 76, 0, 27)
	CloseBtn1.Font = Enum.Font.Gotham
	CloseBtn1.Text = "Close"
	CloseBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseBtn1.TextSize = 13.000
	
	CloseBtn1Corner.CornerRadius = UDim.new(0, 4)
	CloseBtn1Corner.Name = "CloseBtn1Corner"
	CloseBtn1Corner.Parent = CloseBtn1
	
	CloseBtn1.MouseButton1Click:Connect(function()
	UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	UserChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	CloseBtn2.MouseButton1Click:Connect(function()
	UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	UserChange,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
	NotificationHolder,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait(.2)
	NotificationHolder:Destroy()
	end)
	
	CloseBtn2.MouseEnter:Connect(function()
	TweenService:Create(
	Close2Icon,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{ImageColor3 = Color3.fromRGB(210,210,210)}
	):Play()
	end)
	
	CloseBtn2.MouseLeave:Connect(function()
	TweenService:Create(
	Close2Icon,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{ImageColor3 = Color3.fromRGB(119, 122, 127)}
	):Play()
	end)
	
	TagTextbox.Changed:Connect(function()
	TagTextbox.Text = TagTextbox.Text:sub(1,4)
	end)
	
	TagTextbox:GetPropertyChangedSignal("Text"):Connect(function()
	TagTextbox.Text = TagTextbox.Text:gsub('%D+', '');
	end)
	
	UsernameTextbox.Changed:Connect(function()
	UsernameTextbox.Text = UsernameTextbox.Text:sub(1,13)
	end)
	
	TagTextbox.Focused:Connect(function()
	TweenService:Create(
	TextBoxFrame,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
	):Play()
	end)
	
	TagTextbox.FocusLost:Connect(function()
	TweenService:Create(
	TextBoxFrame,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
	):Play()
	end)
	
	UsernameTextbox.Focused:Connect(function()
	TweenService:Create(
	TextBoxFrame,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
	):Play()
	end)
	
	UsernameTextbox.FocusLost:Connect(function()
	TweenService:Create(
	TextBoxFrame,
	TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
	):Play()
	end)
	
	end)
	
	function nill:Notification(titletext, desctext, btntext)
	local NotificationHolderMain = Instance.new("TextButton")
	local Notification = Instance.new("Frame")
	local NotificationCorner = Instance.new("UICorner")
	local UnderBar = Instance.new("Frame")
	local UnderBarCorner = Instance.new("UICorner")
	local UnderBarFrame = Instance.new("Frame")
	local Text1 = Instance.new("TextLabel")
	local Text2 = Instance.new("TextLabel")
	local AlrightBtn = Instance.new("TextButton")
	local AlrightCorner = Instance.new("UICorner")
	
	NotificationHolderMain.Name = "NotificationHolderMain"
	NotificationHolderMain.Parent = MainFrame
	NotificationHolderMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	NotificationHolderMain.BackgroundTransparency = 1
	NotificationHolderMain.BorderSizePixel = 0
	NotificationHolderMain.Position = UDim2.new(0, 0, 0.0560000017, 0)
	NotificationHolderMain.Size = UDim2.new(0, 681, 0, 374)
	NotificationHolderMain.AutoButtonColor = false
	NotificationHolderMain.Font = Enum.Font.SourceSans
	NotificationHolderMain.Text = ""
	NotificationHolderMain.TextColor3 = Color3.fromRGB(0, 0, 0)
	NotificationHolderMain.TextSize = 14.000
	TweenService:Create(
	NotificationHolderMain,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0.2}
	):Play()
	
	
	Notification.Name = "Notification"
	Notification.Parent = NotificationHolderMain
	Notification.AnchorPoint = Vector2.new(0.5, 0.5)
	Notification.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Notification.ClipsDescendants = true
	Notification.Position = UDim2.new(0.524819076, 0, 0.469270051, 0)
	Notification.Size = UDim2.new(0, 0, 0, 0)
	Notification.BackgroundTransparency = 1
	
	Notification:TweenSize(UDim2.new(0, 346, 0, 176), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	
	TweenService:Create(
	Notification,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0}
	):Play()
	
	NotificationCorner.CornerRadius = UDim.new(0, 5)
	NotificationCorner.Name = "NotificationCorner"
	NotificationCorner.Parent = Notification
	
	UnderBar.Name = "UnderBar"
	UnderBar.Parent = Notification
	UnderBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
	UnderBar.Size = UDim2.new(0, 346, 0, 10)
	
	UnderBarCorner.CornerRadius = UDim.new(0, 5)
	UnderBarCorner.Name = "UnderBarCorner"
	UnderBarCorner.Parent = UnderBar
	
	UnderBarFrame.Name = "UnderBarFrame"
	UnderBarFrame.Parent = UnderBar
	UnderBarFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	UnderBarFrame.BorderSizePixel = 0
	UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -3.76068449, 0)
	UnderBarFrame.Size = UDim2.new(0, 346, 0, 40)
	
	Text1.Name = "Text1"
	Text1.Parent = Notification
	Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text1.BackgroundTransparency = 1.000
	Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
	Text1.Size = UDim2.new(0, 346, 0, 68)
	Text1.Font = Enum.Font.GothamSemibold
	Text1.Text = titletext
	Text1.TextColor3 = _G.Color
	Text1.TextSize = 20.000
	
	Text2.Name = "Text2"
	Text2.Parent = Notification
	Text2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Text2.BackgroundTransparency = 1.000
	Text2.Position = UDim2.new(0.106342293, 0, 0.317724228, 0)
	Text2.Size = UDim2.new(0, 272, 0, 63)
	Text2.Font = Enum.Font.Gotham
	Text2.Text = desctext
	Text2.TextColor3 = _G.Color
	Text2.TextSize = 14.000
	Text2.TextWrapped = true
	
	AlrightBtn.Name = "AlrightBtn"
	AlrightBtn.Parent = Notification
	AlrightBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	AlrightBtn.Position = UDim2.new(0.0332369953, 0, 0.789141417, 0)
	AlrightBtn.Size = UDim2.new(0, 322, 0, 27)
	AlrightBtn.Font = Enum.Font.Gotham
	AlrightBtn.Text = btntext
	AlrightBtn.TextColor3 = _G.Color
	AlrightBtn.TextSize = 13.000
	AlrightBtn.AutoButtonColor = false
	
	AlrightCorner.CornerRadius = UDim.new(0, 4)
	AlrightCorner.Name = "AlrightCorner"
	AlrightCorner.Parent = AlrightBtn
	
	AlrightBtn.MouseButton1Click:Connect(function()
	TweenService:Create(
	NotificationHolderMain,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	Notification:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	Notification,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait()
	NotificationHolderMain:Destroy()
	end)
	
	AlrightBtn.MouseEnter:Connect(function()
	TweenService:Create(
	AlrightBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(0, 0, 0)}
	):Play()
	end)
	
	AlrightBtn.MouseLeave:Connect(function()
	TweenService:Create(
	AlrightBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(255, 255, 255)}
	):Play()
	end)
	end
	
	MakeDraggable(TopFrame, MainFrame)
	ServersHoldPadding.PaddingLeft = UDim.new(0, 14)
	local ServerHold = {}
	function ServerHold:Server(text, LoadImage)
	local fc = false
	local currentchanneltoggled = ""
	local Server = Instance.new("TextButton")
	local ServerBtnCorner = Instance.new("UICorner")
	local ServerIco = Instance.new("ImageLabel")
	local ServerWhiteFrame = Instance.new("Frame")
	local ServerWhiteFrameCorner = Instance.new("UICorner")
	local ImageMain = Instance.new("ImageLabel")
	
	
	ImageMain.Name = "ImageMain"
	ImageMain.Parent = Server
	ImageMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageMain.BackgroundTransparency = 1.000
	ImageMain.Position = UDim2.new(0, 0, 0.2, 0)
	ImageMain.Size = UDim2.new(0, 17, 0, 17)
	ImageMain.Image = "http://www.roblox.com/asset/?id="..LoadImage..""
	ImageMain.ImageColor3 = Color3.fromRGB(255, 255, 255)
	
	Server.Name = text .. "Server"
	Server.Parent = ServersHold
	Server.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Server.Position = UDim2.new(1, 0, 0, 0)
	Server.Size = UDim2.new(0, 47, 0, 47)
	Server.AutoButtonColor = false
	Server.Font = Enum.Font.Gotham
	Server.Text = ""
	Server.BackgroundTransparency = 1
	Server.TextTransparency = 1
	Server.TextColor3 = Color3.fromRGB(255, 255, 255)
	Server.TextSize = 18.000
	
	ServerBtnCorner.CornerRadius = UDim.new(1, 0)
	ServerBtnCorner.Name = "ServerCorner"
	ServerBtnCorner.Parent = Server
	
	ServerIco.Name = "ServerIco"
	ServerIco.Parent = Server
	ServerIco.AnchorPoint = Vector2.new(0.5, 0.5)
	ServerIco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerIco.BackgroundTransparency = 1.000
	ServerIco.Position = UDim2.new(0.489361703, 0, 0.489361703, 0)
	ServerIco.Size = UDim2.new(0, 0, 0, 0)
	ServerIco.ImageTransparency = 1
	ServerIco.Image = ""
	
	ServerWhiteFrame.Name = "ServerWhiteFrame"
	ServerWhiteFrame.Parent = Server
	ServerWhiteFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ServerWhiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerWhiteFrame.BackgroundTransparency = 1
	ServerWhiteFrame.Position = UDim2.new(-0.347378343, 0, 0.502659559, 0)
	ServerWhiteFrame.Size = UDim2.new(0, 11, 0, 10)
	
	ServerWhiteFrameCorner.CornerRadius = UDim.new(1, 0)
	ServerWhiteFrameCorner.Name = "ServerWhiteFrameCorner"
	ServerWhiteFrameCorner.Parent = ServerWhiteFrame
	ServersHold.CanvasSize = UDim2.new(0, 0, 0, ServersHoldLayout.AbsoluteContentSize.Y)
	
	local ServerFrame = Instance.new("Frame")
	local ServerFrame1 = Instance.new("Frame")
	local ServerFrame2 = Instance.new("Frame")
	local ServerTitleFrame = Instance.new("Frame")
	local ServerTitle = Instance.new("TextLabel")
	local ServerTitle2 = Instance.new("TextLabel")
	local GlowFrame = Instance.new("Frame")
	local Glow = Instance.new("ImageLabel")
	local ServerContentFrame = Instance.new("Frame")
	local ServerCorner = Instance.new("UICorner")
	local ChannelCorner = Instance.new("UICorner")
	local ChannelTitleFrame = Instance.new("Frame")
	local Hashtag = Instance.new("TextLabel")
	local ChannelTitle = Instance.new("TextLabel")
	local ChannelContentFrame = Instance.new("Frame")
	local GlowChannel = Instance.new("ImageLabel")
	local ServerChannelHolder = Instance.new("ScrollingFrame")
	local ServerChannelHolderLayout = Instance.new("UIListLayout")
	local ServerChannelHolderPadding = Instance.new("UIPadding")
	
	
	Server.Name = text .. "Server"
	Server.Parent = ServersHold
	Server.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Server.Position = UDim2.new(1, 0, 0, 0)
	Server.Size = UDim2.new(0, 47, 0, 47)
	Server.AutoButtonColor = false
	Server.Font = Enum.Font.Gotham
	Server.Text = ""
	Server.BackgroundTransparency = 1
	Server.TextTransparency = 1
	Server.TextColor3 = Color3.fromRGB(255, 255, 255)
	Server.TextSize = 18.000
	
	ServerBtnCorner.CornerRadius = UDim.new(1, 0)
	ServerBtnCorner.Name = "ServerCorner"
	ServerBtnCorner.Parent = Server
	
	ServerIco.Name = "ServerIco"
	ServerIco.Parent = Server
	ServerIco.AnchorPoint = Vector2.new(0.5, 0.5)
	ServerIco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerIco.BackgroundTransparency = 1.000
	ServerIco.Position = UDim2.new(0.489361703, 0, 0.489361703, 0)
	ServerIco.Size = UDim2.new(0, 0, 0, 0)
	ServerIco.ImageTransparency = 1
	ServerIco.Image = ""
	
	ServerWhiteFrame.Name = "ServerWhiteFrame"
	ServerWhiteFrame.Parent = Server
	ServerWhiteFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ServerWhiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerWhiteFrame.BackgroundTransparency = 1
	ServerWhiteFrame.Position = UDim2.new(-0.347378343, 0, 0.502659559, 0)
	ServerWhiteFrame.Size = UDim2.new(0, 11, 0, 10)
	
	ServerWhiteFrameCorner.CornerRadius = UDim.new(1, 0)
	ServerWhiteFrameCorner.Name = "ServerWhiteFrameCorner"
	ServerWhiteFrameCorner.Parent = ServerWhiteFrame
	ServersHold.CanvasSize = UDim2.new(0, 0, 0, ServersHoldLayout.AbsoluteContentSize.Y)
	
	local ServerFrame = Instance.new("Frame")
	local ServerFrame1 = Instance.new("Frame")
	local ServerFrame2 = Instance.new("Frame")
	local ServerTitleFrame = Instance.new("Frame")
	local ServerTitle = Instance.new("TextLabel")
	local GlowFrame = Instance.new("Frame")
	local Glow = Instance.new("ImageLabel")
	local ServerContentFrame = Instance.new("Frame")
	local ServerCorner = Instance.new("UICorner")
	local ChannelCorner = Instance.new("UICorner")
	local ChannelTitleFrame = Instance.new("Frame")
	local Hashtag = Instance.new("TextLabel")
	local ChannelTitle = Instance.new("TextLabel")
	local ChannelContentFrame = Instance.new("Frame")
	local GlowChannel = Instance.new("ImageLabel")
	local ServerChannelHolder = Instance.new("ScrollingFrame")
	local ServerChannelHolderLayout = Instance.new("UIListLayout")
	local ServerChannelHolderPadding = Instance.new("UIPadding")
	
	
	ServerFrame.Name = "ServerFrame"
	ServerFrame.Parent = ServersHolder
	ServerFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
	ServerFrame.BorderSizePixel = 0
	ServerFrame.ClipsDescendants = true
	ServerFrame.Position = UDim2.new(0.105726875, 0, 1.01262593, 0)
	ServerFrame.Size = UDim2.new(0, 609, 0, 373)
	ServerFrame.Visible = false
	
	ServerFrame1.Name = "ServerFrame1"
	ServerFrame1.Parent = ServerFrame
	ServerFrame1.BackgroundColor3 = Color3.fromRGB(20,20,20)
	ServerFrame1.BorderSizePixel = 0
	ServerFrame1.Position = UDim2.new(0, 0, 0.972290039, 0)
	ServerFrame1.Size = UDim2.new(0, 12, 0, 10)
	
	ServerFrame2.Name = "ServerFrame2"
	ServerFrame2.Parent = ServerFrame
	ServerFrame2.BackgroundColor3 = Color3.fromRGB(20,20,20)
	ServerFrame2.BorderSizePixel = 0
	ServerFrame2.Position = UDim2.new(0.980295539, 0, 0.972290039, 0)
	ServerFrame2.Size = UDim2.new(0, 12, 0, 9)
	
	ServerTitleFrame.Name = "ServerTitleFrame"
	ServerTitleFrame.Parent = ServerFrame
	ServerTitleFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
	ServerTitleFrame.BackgroundTransparency = 1.000
	ServerTitleFrame.BorderSizePixel = 0
	ServerTitleFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
	ServerTitleFrame.Size = UDim2.new(0, 180, 0, 40)
	
	ServerTitle.Name = "ServerTitle"
	ServerTitle.Parent = ServerTitleFrame
	ServerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerTitle.BackgroundTransparency = 1.000
	ServerTitle.BorderSizePixel = 0
	ServerTitle.Position = UDim2.new(0.23, 0, 0, 0)
	ServerTitle.Size = UDim2.new(0, 97, 0, 39)
	ServerTitle.Font = Enum.Font.GothamSemibold
	ServerTitle.Text = text
	ServerTitle.TextColor3 = _G.Color
	ServerTitle.TextSize = 15.000
	ServerTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	GlowFrame.Name = "GlowFrame"
	GlowFrame.Parent = ServerFrame
	GlowFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
	GlowFrame.BackgroundTransparency = 1.000
	GlowFrame.BorderSizePixel = 0
	GlowFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
	GlowFrame.Size = UDim2.new(0, 609, 0, 40)
	
	Glow.Name = "Glow"
	Glow.Parent = GlowFrame
	Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow.BackgroundTransparency = 1.000
	Glow.BorderSizePixel = 0
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.ZIndex = 0
	Glow.Image = "rbxassetid://4996891970"
	Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(20, 20, 280, 280)
	
	ServerContentFrame.Name = "ServerContentFrame"
	ServerContentFrame.Parent = ServerFrame
	ServerContentFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
	ServerContentFrame.BackgroundTransparency = 1.000
	ServerContentFrame.BorderSizePixel = 0
	ServerContentFrame.Position = UDim2.new(-0.0010054264, 0, 0.106338218, 0)
	ServerContentFrame.Size = UDim2.new(0, 180, 0, 333)
	
	ServerCorner.CornerRadius = UDim.new(0, 4)
	ServerCorner.Name = "ServerCorner"
	ServerCorner.Parent = ServerFrame
	
	ChannelTitleFrame.Name = "ChannelTitleFrame"
	ChannelTitleFrame.Parent = ServerFrame
	ChannelTitleFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	ChannelTitleFrame.BorderSizePixel = 0
	ChannelTitleFrame.Position = UDim2.new(0.294561088, 0, -0.000900391256, 0)
	ChannelTitleFrame.Size = UDim2.new(0, 429, 0, 40)
	
	Hashtag.Name = "Hashtag"
	Hashtag.Parent = ChannelTitleFrame
	Hashtag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hashtag.BackgroundTransparency = 1.000
	Hashtag.BorderSizePixel = 0
	Hashtag.Position = UDim2.new(0.0279720277, 0, 0, 0)
	Hashtag.Size = UDim2.new(0, 19, 0, 39)
	Hashtag.Font = Enum.Font.Gotham
	Hashtag.Text = " "
	Hashtag.TextColor3 = Color3.fromRGB(111, 111, 111)
	Hashtag.TextSize = 25.000
	
	ChannelTitle.Name = "ChannelTitle"
	ChannelTitle.Parent = ChannelTitleFrame
	ChannelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelTitle.BackgroundTransparency = 1.000
	ChannelTitle.BorderSizePixel = 0
	ChannelTitle.Position = UDim2.new(0.0862470865, 0, 0, 0)
	ChannelTitle.Size = UDim2.new(0, 95, 0, 39)
	ChannelTitle.Font = Enum.Font.GothamSemibold
	ChannelTitle.Text = ""
	ChannelTitle.TextColor3 = _G.Color
	ChannelTitle.TextSize = 15.000
	ChannelTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ChannelContentFrame.Name = "ChannelContentFrame"
	ChannelContentFrame.Parent = ServerFrame
	ChannelContentFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	ChannelContentFrame.BorderSizePixel = 0
	ChannelContentFrame.ClipsDescendants = true
	ChannelContentFrame.Position = UDim2.new(0.294561088, 0, 0.106338218, 0)
	ChannelContentFrame.Size = UDim2.new(0, 429, 0, 333)
	
	GlowChannel.Name = "GlowChannel"
	GlowChannel.Parent = ChannelContentFrame
	GlowChannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GlowChannel.BackgroundTransparency = 1.000
	GlowChannel.BorderSizePixel = 0
	GlowChannel.Position = UDim2.new(0, -33, 0, -91)
	GlowChannel.Size = UDim2.new(1.06396091, 30, 0.228228226, 30)
	GlowChannel.ZIndex = 0
	GlowChannel.Image = "rbxassetid://4996891970"
	GlowChannel.ImageColor3 = Color3.fromRGB(15, 15, 15)
	GlowChannel.ScaleType = Enum.ScaleType.Slice
	GlowChannel.SliceCenter = Rect.new(20, 20, 280, 280)
	
	ServerChannelHolder.Name = "ServerChannelHolder"
	ServerChannelHolder.Parent = ServerContentFrame
	ServerChannelHolder.Active = true
	ServerChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerChannelHolder.BackgroundTransparency = 1.000
	ServerChannelHolder.BorderSizePixel = 0
	ServerChannelHolder.Position = UDim2.new(0.00535549596, 0, 0.0241984241, 0)
	ServerChannelHolder.Selectable = false
	ServerChannelHolder.Size = UDim2.new(0, 179, 0, 278)
	ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
	ServerChannelHolder.ScrollBarThickness = 4
	ServerChannelHolder.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
	ServerChannelHolder.ScrollBarImageTransparency = 1
	
	ServerChannelHolderLayout.Name = "ServerChannelHolderLayout"
	ServerChannelHolderLayout.Parent = ServerChannelHolder
	ServerChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ServerChannelHolderLayout.Padding = UDim.new(0, 4)
	
	ServerChannelHolderPadding.Name = "ServerChannelHolderPadding"
	ServerChannelHolderPadding.Parent = ServerChannelHolder
	ServerChannelHolderPadding.PaddingLeft = UDim.new(0, 9)
	
	ServerChannelHolder.MouseEnter:Connect(function()
	ServerChannelHolder.ScrollBarImageTransparency = 0
	end)
	
	ServerChannelHolder.MouseLeave:Connect(function()
	ServerChannelHolder.ScrollBarImageTransparency = 1
	end)
	
	Server.MouseEnter:Connect(
	function()
	if currentservertoggled ~= Server.Name then
	TweenService:Create(
		Server,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
	):Play()
	TweenService:Create(
		ServerBtnCorner,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{CornerRadius = UDim.new(0, 15)}
	):Play()
	ServerWhiteFrame:TweenSize(
		UDim2.new(0, 11, 0, 27),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		.3,
		true
	)
	end
	end
	)
	
	Server.MouseLeave:Connect(
	function()
	if currentservertoggled ~= Server.Name then
	TweenService:Create(
		Server,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(25,25,25)}
	):Play()
	TweenService:Create(
		ServerBtnCorner,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{CornerRadius = UDim.new(1, 0)}
	):Play()
	ServerWhiteFrame:TweenSize(
		UDim2.new(0, 11, 0, 10),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		.3,
		true
	)
	end
	end
	)
	
	Server.MouseButton1Click:Connect(
	function()
	currentservertoggled = Server.Name
	for i, v in next, ServersHolder:GetChildren() do
	if v.Name == "ServerFrame" then
		v.Visible = false
	end
	ServerFrame.Visible = true
	end
	for i, v in next, ServersHold:GetChildren() do
	if v.ClassName == "TextButton" then
		TweenService:Create(
			v,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(25,25,25)}
		):Play()
		TweenService:Create(
			Server,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(25,25,25)}
		):Play()
		TweenService:Create(
			v.ServerCorner,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{CornerRadius = UDim.new(1, 0)}
		):Play()
		TweenService:Create(
			ServerBtnCorner,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{CornerRadius = UDim.new(0, 15)}
		):Play()
		v.ServerWhiteFrame:TweenSize(
			UDim2.new(0, 11, 0, 10),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			.3,
			true
		)
		ServerWhiteFrame:TweenSize(
			UDim2.new(0, 11, 0, 46),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			.3,
			true
		)
	end
	end
	end
	)
	
	if fs == false then
	TweenService:Create(
	Server,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(25,25,25)}
	):Play()
	TweenService:Create(
	ServerBtnCorner,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{CornerRadius = UDim.new(0, 15)}
	):Play()
	ServerWhiteFrame:TweenSize(
	UDim2.new(0, 11, 0, 46),
	Enum.EasingDirection.Out,
	Enum.EasingStyle.Quart,
	.3,
	true
	)
	ServerFrame.Visible = true
	Server.Name = text .. "Server"
	currentservertoggled = Server.Name
	fs = true
	end
	local ChannelHold = {}
	function ChannelHold:Channel(text)
	local ChannelBtn = Instance.new("TextButton")
	local ChannelBtnCorner = Instance.new("UICorner")
	local ChannelBtnHashtag = Instance.new("TextLabel")
	local ChannelBtnTitle = Instance.new("TextLabel")
	
	ChannelBtn.Name = text .. "ChannelBtn"
	ChannelBtn.Parent = ServerChannelHolder
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
	ChannelBtn.BorderSizePixel = 0
	ChannelBtn.Position = UDim2.new(0.24118948, 0, 0.578947365, 0)
	ChannelBtn.Size = UDim2.new(0, 160, 0, 30)
	ChannelBtn.AutoButtonColor = false
	ChannelBtn.Font = Enum.Font.SourceSans
	ChannelBtn.Text = ""
	ChannelBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	ChannelBtn.TextSize = 14.000
	
	ChannelBtnCorner.CornerRadius = UDim.new(0, 8)
	ChannelBtnCorner.Name = "ChannelBtnCorner"
	ChannelBtnCorner.Parent = ChannelBtn
	
	ChannelBtnHashtag.Name = "ChannelBtnHashtag"
	ChannelBtnHashtag.Parent = ChannelBtn
	ChannelBtnHashtag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelBtnHashtag.BackgroundTransparency = 1.000
	ChannelBtnHashtag.BorderSizePixel = 0
	ChannelBtnHashtag.Position = UDim2.new(0.08, 0, 0, 0)
	ChannelBtnHashtag.Size = UDim2.new(0, 24, 0, 30)
	ChannelBtnHashtag.Font = Enum.Font.Gotham
	ChannelBtnHashtag.Text = ""
	ChannelBtnHashtag.TextColor3 = Color3.fromRGB(114, 118, 125)
	ChannelBtnHashtag.TextSize = 21.000
	
	ChannelBtnTitle.Name = "ChannelBtnTitle"
	ChannelBtnTitle.Parent = ChannelBtn
	ChannelBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelBtnTitle.BackgroundTransparency = 1.000
	ChannelBtnTitle.BorderSizePixel = 0
	ChannelBtnTitle.Position = UDim2.new(0.05, 0, -0.166666672, 0)
	ChannelBtnTitle.Size = UDim2.new(0, 95, 0, 39)
	ChannelBtnTitle.Font = Enum.Font.Gotham
	ChannelBtnTitle.Text = text
	ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
	ChannelBtnTitle.TextSize = 14.000
	ChannelBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
	ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ServerChannelHolderLayout.AbsoluteContentSize.Y)
	
	local ChannelHolder = Instance.new("ScrollingFrame")
	local ChannelHolderLayout = Instance.new("UIListLayout")
	
	ChannelHolder.Name = "ChannelHolder"
	ChannelHolder.Parent = ChannelContentFrame
	ChannelHolder.Active = true
	ChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelHolder.BackgroundTransparency = 1.000
	ChannelHolder.BorderSizePixel = 0
	ChannelHolder.Position = UDim2.new(0.0360843192, 0, 0.0241984241, 0)
	ChannelHolder.Size = UDim2.new(0, 412, 0, 314)
	ChannelHolder.ScrollBarThickness = 6
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,0)
	ChannelHolder.ScrollBarImageTransparency = 0
	ChannelHolder.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
	ChannelHolder.Visible = false
	ChannelHolder.ClipsDescendants = false
	
	ChannelHolderLayout.Name = "ChannelHolderLayout"
	ChannelHolderLayout.Parent = ChannelHolder
	ChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ChannelHolderLayout.Padding = UDim.new(0, 8)
	
	ChannelBtn.MouseEnter:Connect(function()
	if currentchanneltoggled ~= ChannelBtn.Name then
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
	ChannelBtnTitle.TextColor3 = Color3.fromRGB(220,221,222)
	end
	end)
	
	ChannelBtn.MouseLeave:Connect(function()
	if currentchanneltoggled ~= ChannelBtn.Name then
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
	ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
	end
	end)
	
	ChannelBtn.MouseButton1Click:Connect(function()
	for i, v in next, ChannelContentFrame:GetChildren() do
	if v.Name == "ChannelHolder" then
		v.Visible = false
	end
	ChannelHolder.Visible = true
	end
	for i, v in next, ServerChannelHolder:GetChildren() do
	if v.ClassName == "TextButton" then
		v.BackgroundColor3 = Color3.fromRGB(25,25,25)
		v.ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
	end
	ServerFrame.Visible = true
	end
	ChannelTitle.Text = text
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
	ChannelBtnTitle.TextColor3 = Color3.fromRGB(255,255,255)
	currentchanneltoggled = ChannelBtn.Name
	end)
	
	if fc == false then
	fc = true
	ChannelTitle.Text = text
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
	ChannelBtnTitle.TextColor3 = Color3.fromRGB(255,255,255)
	currentchanneltoggled = ChannelBtn.Name
	ChannelHolder.Visible = true
	end
	local ChannelContent = {}
	function ChannelContent:Button(text,callback)
	local Button = Instance.new("TextButton")
	local ButtonCorner = Instance.new("UICorner")
	
	Button.Name = "Button"
	Button.Parent = ChannelHolder
	Button.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Button.Size = UDim2.new(0, 401, 0, 30)
	Button.AutoButtonColor = false
	Button.Font = Enum.Font.Gotham
	Button.TextColor3 = _G.Color
	Button.TextSize = 14.000
	Button.Text = text
	
	ButtonCorner.CornerRadius = UDim.new(0, 4)
	ButtonCorner.Name = "ButtonCorner"
	ButtonCorner.Parent = Button
	
	Button.MouseEnter:Connect(function()
	TweenService:Create(
		Button,
		TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(15,15,15)}
	):Play()
	end)
	
	Button.MouseButton1Click:Connect(function()
	pcall(callback)
	Button.TextSize = 0
	TweenService:Create(
		Button,
		TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{TextSize = 14}
	):Play()
	end)
	
	Button.MouseLeave:Connect(function()
	TweenService:Create(
		Button,
		TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(20,20,20)}
	):Play()
	end)
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	function ChannelContent:Toggle(text,default,callback)
	local toggled = false
	local Toggle = Instance.new("TextButton")
	local ToggleTitle = Instance.new("TextLabel")
	local ToggleFrame = Instance.new("Frame")
	local ToggleFrameCorner = Instance.new("UICorner")
	local ToggleFrameCircle = Instance.new("Frame")
	local ToggleFrameCircleCorner = Instance.new("UICorner")
	local Icon = Instance.new("ImageLabel")
	
	Toggle.Name = "Toggle"
	Toggle.Parent = ChannelHolder
	Toggle.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	Toggle.Size = UDim2.new(0, 401, 0, 30)
	Toggle.AutoButtonColor = false
	Toggle.Font = Enum.Font.Gotham
	Toggle.Text = ""
	Toggle.TextColor3 = _G.Color
	Toggle.TextSize = 14.000
	
	ToggleTitle.Name = "ToggleTitle"
	ToggleTitle.Parent = Toggle
	ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleTitle.BackgroundTransparency = 1.000
	ToggleTitle.Position = UDim2.new(0, 5, 0, 0)
	ToggleTitle.Size = UDim2.new(0, 200, 0, 30)
	ToggleTitle.Font = Enum.Font.Gotham
	ToggleTitle.Text = text
	ToggleTitle.TextColor3 = _G.Color
	ToggleTitle.TextSize = 14.000
	ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ToggleFrame.Name = "ToggleFrame"
	ToggleFrame.Parent = Toggle
	ToggleFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
	ToggleFrame.Position = UDim2.new(0.900481343, -5, 0.13300018, 0)
	ToggleFrame.Size = UDim2.new(0, 40, 0, 21)
	
	ToggleFrameCorner.CornerRadius = UDim.new(0, 4)
	ToggleFrameCorner.Name = "ToggleFrameCorner"
	ToggleFrameCorner.Parent = ToggleFrame
	
	ToggleFrameCircle.Name = "ToggleFrameCircle"
	ToggleFrameCircle.Parent = ToggleFrame
	ToggleFrameCircle.BackgroundColor3 = Color3.fromRGB(50,50,50)
	ToggleFrameCircle.Position = UDim2.new(0.234999999, -5, 0.133000001, 0)
	ToggleFrameCircle.Size = UDim2.new(0, 15, 0, 15)
	
	ToggleFrameCircleCorner.CornerRadius = UDim.new(0, 4)
	ToggleFrameCircleCorner.Name = "ToggleFrameCircleCorner"
	ToggleFrameCircleCorner.Parent = ToggleFrameCircle
	
	Icon.Name = "Icon"
	Icon.Parent = ToggleFrameCircle
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(255,255,255)
	Icon.Position = UDim2.new(0, 7, 0, 7)
	Icon.Size = UDim2.new(0, 13, 0, 13)
	Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
	Icon.ImageColor3 = _G.Color
	
	Toggle.MouseButton1Click:Connect(function()
	if toggled == false then
		TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = _G.Color}):Play()
		TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = _G.Color}):Play()
		ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
		TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
		Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
		wait(.1)
		TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
	else
		TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = _G.Color}):Play()
		TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(10,10,10)}):Play()
		ToggleFrameCircle:TweenPosition(UDim2.new(0.234999999, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
		TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
		Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
		wait(.01)
		TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
	end
	toggled = not toggled
	pcall(callback, toggled)
	end)
	if default == true then
	toggled = false
	TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
	TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = _G.Color}):Play()
	ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
	TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
	Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
	wait(.1)
	TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
	toggled = not toggled
	pcall(callback, toggled)
	else
	wait(.1)
	end
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Slider(text, min, max, start, callback)
	local SliderFunc = {}
	local dragging = false
	local Slider = Instance.new("TextButton")
	local SliderTitle = Instance.new("TextLabel")
	local SliderFrame = Instance.new("Frame")
	local SliderFrameCorner = Instance.new("UICorner")
	local CurrentValueFrame = Instance.new("Frame")
	local CurrentValueFrameCorner = Instance.new("UICorner")
	local Zip = Instance.new("Frame")
	local ZipCorner = Instance.new("UICorner")
	local ValueBubble = Instance.new("Frame")
	local ValueBubbleCorner = Instance.new("UICorner")
	local SquareBubble = Instance.new("Frame")
	local GlowBubble = Instance.new("ImageLabel")
	local ValueLabel = Instance.new("TextLabel")
	
	
	Slider.Name = "Slider"
	Slider.Parent = ChannelHolder
	Slider.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.216560602, 0)
	Slider.Size = UDim2.new(0, 401, 0, 38)
	Slider.AutoButtonColor = false
	Slider.Font = Enum.Font.Gotham
	Slider.Text = ""
	Slider.TextColor3 = _G.Color
	Slider.TextSize = 14.000
	
	SliderTitle.Name = "SliderTitle"
	SliderTitle.Parent = Slider
	SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderTitle.BackgroundTransparency = 1.000
	SliderTitle.Position = UDim2.new(0, 5, 0, -4)
	SliderTitle.Size = UDim2.new(0, 200, 0, 27)
	SliderTitle.Font = Enum.Font.Gotham
	SliderTitle.Text = text
	SliderTitle.TextColor3 = _G.Color
	SliderTitle.TextSize = 14.000
	SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	SliderFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
	SliderFrame.Position = UDim2.new(0.497999996, 0, 0.757000029, 0)
	SliderFrame.Size = UDim2.new(0, 385, 0, 8)
	
	SliderFrameCorner.Name = "SliderFrameCorner"
	SliderFrameCorner.Parent = SliderFrame
	
	CurrentValueFrame.Name = "CurrentValueFrame"
	CurrentValueFrame.Parent = SliderFrame
	CurrentValueFrame.BackgroundColor3 = _G.Color
	CurrentValueFrame.Size = UDim2.new((start or 0) / max, 0, 0, 8)
	
	CurrentValueFrameCorner.Name = "CurrentValueFrameCorner"
	CurrentValueFrameCorner.Parent = CurrentValueFrame
	
	Zip.Name = "Zip"
	Zip.Parent = SliderFrame
	Zip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Zip.Position = UDim2.new((start or 0)/max, -6,-0.644999981, 0)
	Zip.Size = UDim2.new(0, 10, 0, 18)
	ZipCorner.CornerRadius = UDim.new(0, 3)
	ZipCorner.Name = "ZipCorner"
	ZipCorner.Parent = Zip
	
	ValueBubble.Name = "ValueBubble"
	ValueBubble.Parent = Zip
	ValueBubble.AnchorPoint = Vector2.new(0.5, 0.5)
	ValueBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	ValueBubble.Position = UDim2.new(0.5, 0, -1.00800002, 0)
	ValueBubble.Size = UDim2.new(0, 36, 0, 21)
	ValueBubble.Visible = false
	
	
	Zip.MouseEnter:Connect(function()
	if dragging == false then
		ValueBubble.Visible = true
	end
	end)
	
	Zip.MouseLeave:Connect(function()
	if dragging == false then
		ValueBubble.Visible = false
	end
	end)
	
	
	ValueBubbleCorner.CornerRadius = UDim.new(0, 3)
	ValueBubbleCorner.Name = "ValueBubbleCorner"
	ValueBubbleCorner.Parent = ValueBubble
	
	SquareBubble.Name = "SquareBubble"
	SquareBubble.Parent = ValueBubble
	SquareBubble.AnchorPoint = Vector2.new(0.5, 0.5)
	SquareBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	SquareBubble.BorderSizePixel = 0
	SquareBubble.Position = UDim2.new(0.493000001, 0, 0.637999971, 0)
	SquareBubble.Rotation = 45.000
	SquareBubble.Size = UDim2.new(0, 19, 0, 19)
	
	GlowBubble.Name = "GlowBubble"
	GlowBubble.Parent = ValueBubble
	GlowBubble.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GlowBubble.BackgroundTransparency = 1.000
	GlowBubble.BorderSizePixel = 0
	GlowBubble.Position = UDim2.new(0, -15, 0, -15)
	GlowBubble.Size = UDim2.new(1, 30, 1, 30)
	GlowBubble.ZIndex = 0
	GlowBubble.Image = "rbxassetid://4996891970"
	GlowBubble.ImageColor3 = Color3.fromRGB(15, 15, 15)
	GlowBubble.ScaleType = Enum.ScaleType.Slice
	GlowBubble.SliceCenter = Rect.new(20, 20, 280, 280)
	
	ValueLabel.Name = "ValueLabel"
	ValueLabel.Parent = ValueBubble
	ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ValueLabel.BackgroundTransparency = 1.000
	ValueLabel.Size = UDim2.new(0, 36, 0, 21)
	ValueLabel.Font = Enum.Font.Gotham
	ValueLabel.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
	ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	ValueLabel.TextSize = 10.000
	local function move(input)
	local pos =
		UDim2.new(
			math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
			-6,
			-0.644999981,
			0
		)
	local pos1 =
		UDim2.new(
			math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
			0,
			0,
			8
		)
	CurrentValueFrame.Size = pos1
	Zip.Position = pos
	local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
	ValueLabel.Text = tostring(value)
	pcall(callback, value)
	end
	Zip.InputBegan:Connect(
	function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			ValueBubble.Visible = true
		end
	end
	)
	Zip.InputEnded:Connect(
	function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
			ValueBubble.Visible = false
		end
	end
	)
	game:GetService("UserInputService").InputChanged:Connect(
	function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		move(input)
	end
	end
	)
	
	function SliderFunc:Change(tochange)
	CurrentValueFrame.Size = UDim2.new((tochange or 0) / max, 0, 0, 8)
	Zip.Position = UDim2.new((tochange or 0)/max, -6,-0.644999981, 0)
	ValueLabel.Text = tostring(tochange and math.floor((tochange / max) * (max - min) + min) or 0)
	pcall(callback, tochange)
	end
	
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	return SliderFunc
	end
	function ChannelContent:Line()
	local Seperator1 = Instance.new("Frame")
	local Seperator2 = Instance.new("Frame")
	
	Seperator1.Name = "Seperator1"
	Seperator1.Parent = ChannelHolder
	Seperator1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Seperator1.BackgroundTransparency = 1.000
	Seperator1.Position = UDim2.new(0, 0, 0.350318581, 0)
	Seperator1.Size = UDim2.new(0, 100, 0, 8)
	
	Seperator2.Name = "Seperator2"
	Seperator2.Parent = Seperator1
	Seperator2.BackgroundColor3 = Color3.fromRGB(66, 69, 74)
	Seperator2.BorderSizePixel = 0
	Seperator2.Position = UDim2.new(0, 0, 0, 4)
	Seperator2.Size = UDim2.new(0, 401, 0, 1)
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	function ChannelContent:Dropdown(text, list, callback)
	local DropFunc = {}
	local itemcount = 0
	local framesize = 0
	local DropTog = false
	local Dropdown = Instance.new("Frame")
	local DropdownTitle = Instance.new("TextLabel")
	local DropdownFrameOutline = Instance.new("Frame")
	local DropdownFrameOutlineCorner = Instance.new("UICorner")
	local DropdownFrame = Instance.new("Frame")
	local DropdownFrameCorner = Instance.new("UICorner")
	local CurrentSelectedText = Instance.new("TextLabel")
	local ArrowImg = Instance.new("ImageLabel")
	local DropdownFrameBtn = Instance.new("TextButton")
	
	Dropdown.Name = "Dropdown"
	Dropdown.Parent = ChannelHolder
	Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dropdown.BackgroundTransparency = 1.000
	Dropdown.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
	Dropdown.Size = UDim2.new(0, 403, 0, 73)
	
	DropdownTitle.Name = "DropdownTitle"
	DropdownTitle.Parent = Dropdown
	DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropdownTitle.BackgroundTransparency = 1.000
	DropdownTitle.Position = UDim2.new(0, 5, 0, 0)
	DropdownTitle.Size = UDim2.new(0, 200, 0, 29)
	DropdownTitle.Font = Enum.Font.Gotham
	DropdownTitle.Text = text
	DropdownTitle.TextColor3 = _G.Color
	DropdownTitle.TextSize = 14.000
	DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	DropdownFrameOutline.Name = "DropdownFrameOutline"
	DropdownFrameOutline.Parent = DropdownTitle
	DropdownFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
	DropdownFrameOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
	DropdownFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
	DropdownFrameOutline.Size = UDim2.new(0, 396, 0, 36)
	
	DropdownFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
	DropdownFrameOutlineCorner.Name = "DropdownFrameOutlineCorner"
	DropdownFrameOutlineCorner.Parent = DropdownFrameOutline
	
	DropdownFrame.Name = "DropdownFrame"
	DropdownFrame.Parent = DropdownTitle
	DropdownFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	DropdownFrame.ClipsDescendants = true
	DropdownFrame.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
	DropdownFrame.Selectable = true
	DropdownFrame.Size = UDim2.new(0, 392, 0, 32)
	
	DropdownFrameCorner.CornerRadius = UDim.new(0, 4)
	DropdownFrameCorner.Name = "DropdownFrameCorner"
	DropdownFrameCorner.Parent = DropdownFrame
	
	CurrentSelectedText.Name = "CurrentSelectedText"
	CurrentSelectedText.Parent = DropdownFrame
	CurrentSelectedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CurrentSelectedText.BackgroundTransparency = 1.000
	CurrentSelectedText.Position = UDim2.new(0.0178571437, 0, 0, 0)
	CurrentSelectedText.Size = UDim2.new(0, 193, 0, 32)
	CurrentSelectedText.Font = Enum.Font.Gotham
	CurrentSelectedText.Text = "..."
	CurrentSelectedText.TextColor3 = _G.Color
	CurrentSelectedText.TextSize = 14.000
	CurrentSelectedText.TextXAlignment = Enum.TextXAlignment.Left
	
	ArrowImg.Name = "ArrowImg"
	ArrowImg.Parent = CurrentSelectedText
	ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ArrowImg.BackgroundTransparency = 1.000
	ArrowImg.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
	ArrowImg.Size = UDim2.new(0, 22, 0, 22)
	ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818372"
	ArrowImg.ImageColor3 = _G.Color
	
	DropdownFrameBtn.Name = "DropdownFrameBtn"
	DropdownFrameBtn.Parent = DropdownFrame
	DropdownFrameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropdownFrameBtn.BackgroundTransparency = 1.000
	DropdownFrameBtn.Size = UDim2.new(0, 392, 0, 32)
	DropdownFrameBtn.Font = Enum.Font.SourceSans
	DropdownFrameBtn.Text = ""
	DropdownFrameBtn.TextColor3 = _G.Color
	DropdownFrameBtn.TextSize = 14.000
	
	local DropdownFrameMainOutline = Instance.new("Frame")
	local DropdownFrameMainOutlineCorner = Instance.new("UICorner")
	local DropdownFrameMain = Instance.new("Frame")
	local DropdownFrameMainCorner = Instance.new("UICorner")
	local DropItemHolderLabel = Instance.new("TextLabel")
	local DropItemHolder = Instance.new("ScrollingFrame")
	local DropItemHolderLayout = Instance.new("UIListLayout")
	
	DropdownFrameMainOutline.Name = "DropdownFrameMainOutline"
	DropdownFrameMainOutline.Parent = DropdownTitle
	DropdownFrameMainOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
	DropdownFrameMainOutline.Position = UDim2.new(-0.00155700743, 0, 2.16983342, 0)
	DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 81)
	DropdownFrameMainOutline.Visible = false
	
	DropdownFrameMainOutlineCorner.CornerRadius = UDim.new(0, 3)
	DropdownFrameMainOutlineCorner.Name = "DropdownFrameMainOutlineCorner"
	DropdownFrameMainOutlineCorner.Parent = DropdownFrameMainOutline
	
	DropdownFrameMain.Name = "DropdownFrameMain"
	DropdownFrameMain.Parent = DropdownTitle
	DropdownFrameMain.BackgroundColor3 = Color3.fromRGB(25,25,25)
	DropdownFrameMain.ClipsDescendants = true
	DropdownFrameMain.Position = UDim2.new(0.00999999978, 0, 2.2568965, 0)
	DropdownFrameMain.Selectable = true
	DropdownFrameMain.Size = UDim2.new(0, 392, 0, 77)
	DropdownFrameMain.Visible = false
	
	DropdownFrameMainCorner.CornerRadius = UDim.new(0, 4)
	DropdownFrameMainCorner.Name = "DropdownFrameMainCorner"
	DropdownFrameMainCorner.Parent = DropdownFrameMain
	
	DropItemHolderLabel.Name = "ItemHolderLabel"
	DropItemHolderLabel.Parent = DropdownFrameMain
	DropItemHolderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropItemHolderLabel.BackgroundTransparency = 1.000
	DropItemHolderLabel.Position = UDim2.new(0.0178571437, 0, 0, 0)
	DropItemHolderLabel.Size = UDim2.new(0, 193, 0, 13)
	DropItemHolderLabel.Font = Enum.Font.Gotham
	DropItemHolderLabel.Text = ""
	DropItemHolderLabel.TextColor3 = _G.Color
	DropItemHolderLabel.TextSize = 14.000
	DropItemHolderLabel.TextXAlignment = Enum.TextXAlignment.Left
	
	DropItemHolder.Name = "ItemHolder"
	DropItemHolder.Parent = DropItemHolderLabel
	DropItemHolder.Active = true
	DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropItemHolder.BackgroundTransparency = 1.000
	DropItemHolder.Position = UDim2.new(0, 0, 0.215384638, 0)
	DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
	DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
	DropItemHolder.ScrollBarThickness = 6
	DropItemHolder.BorderSizePixel = 0
	DropItemHolder.ScrollBarImageColor3 = _G.Color
	
	DropItemHolderLayout.Name = "ItemHolderLayout"
	DropItemHolderLayout.Parent = DropItemHolder
	DropItemHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	DropItemHolderLayout.Padding = UDim.new(0, 0)
	
	DropdownFrameBtn.MouseButton1Click:Connect(function()
	if DropTog == false then
		DropdownFrameMain.Visible = true
		DropdownFrameMainOutline.Visible = true
		Dropdown.Size = UDim2.new(0, 403, 0, 73 + DropdownFrameMainOutline.AbsoluteSize.Y)
		ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	
	else
		Dropdown.Size = UDim2.new(0, 403, 0, 73)
		DropdownFrameMain.Visible = false
		DropdownFrameMainOutline.Visible = false
		ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	DropTog = not DropTog
	end)
	
	
	for i,v in next, list do
	itemcount = itemcount + 1
	
	if itemcount == 1 then
		framesize = 29
	elseif itemcount == 2 then
		framesize = 58
	elseif itemcount >= 3 then
		framesize = 87
	end
	
	local Item = Instance.new("TextButton")
	local ItemCorner = Instance.new("UICorner")
	local ItemText = Instance.new("TextLabel")
	
	Item.Name = "Item"
	Item.Parent = DropItemHolder
	Item.BackgroundColor3 = Color3.fromRGB(10,10,10)
	Item.Size = UDim2.new(0, 379, 0, 29)
	Item.AutoButtonColor = false
	Item.Font = Enum.Font.SourceSans
	Item.Text = ""
	Item.TextColor3 = Color3.fromRGB(0, 0, 0)
	Item.TextSize = 14.000
	Item.BackgroundTransparency = 1
	
	ItemCorner.CornerRadius = UDim.new(0, 4)
	ItemCorner.Name = "ItemCorner"
	ItemCorner.Parent = Item
	
	ItemText.Name = "ItemText"
	ItemText.Parent = Item
	ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
	ItemText.BackgroundTransparency = 1.000
	ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
	ItemText.Size = UDim2.new(0, 192, 0, 29)
	ItemText.Font = Enum.Font.Gotham
	ItemText.TextColor3 = _G.Color
	ItemText.TextSize = 14.000
	ItemText.TextXAlignment = Enum.TextXAlignment.Left
	ItemText.Text = v
	
	Item.MouseEnter:Connect(function()
		ItemText.TextColor3 = _G.Color
		Item.BackgroundTransparency = 0
	end)
	
	Item.MouseLeave:Connect(function()
		ItemText.TextColor3 = _G.Color
		Item.BackgroundTransparency = 1
	end)
	
	Item.MouseButton1Click:Connect(function()
		CurrentSelectedText.Text = v
		pcall(callback, v)
		Dropdown.Size = UDim2.new(0, 403, 0, 73)
		DropdownFrameMain.Visible = false
		DropdownFrameMainOutline.Visible = false
		ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
		DropTog = not DropTog
	end)
	
	DropItemHolder.CanvasSize = UDim2.new(0,0,0,DropItemHolderLayout.AbsoluteContentSize.Y)
	
	DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
	DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
	DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
	end
	
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	
	function DropFunc:Clear()
	for i,v in next, DropItemHolder:GetChildren() do
		if v.Name == "Item" then
			v:Destroy()
		end
	end
	
	CurrentSelectedText.Text = "..."
	
	itemcount = 0
	framesize = 0
	DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
	DropdownFrameMain.Size = UDim2.new(0, 392, 0, 0)
	DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 0)
	Dropdown.Size = UDim2.new(0, 403, 0, 73)
	DropdownFrameMain.Visible = false
	DropdownFrameMainOutline.Visible = false
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function DropFunc:Add(textadd)
	itemcount = itemcount + 1
	
	if itemcount == 1 then
		framesize = 29
	elseif itemcount == 2 then
		framesize = 58
	elseif itemcount >= 3 then
		framesize = 87
	end
	
	local Item = Instance.new("TextButton")
	local ItemCorner = Instance.new("UICorner")
	local ItemText = Instance.new("TextLabel")
	
	Item.Name = "Item"
	Item.Parent = DropItemHolder
	Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
	Item.Size = UDim2.new(0, 379, 0, 29)
	Item.AutoButtonColor = false
	Item.Font = Enum.Font.SourceSans
	Item.Text = ""
	Item.TextColor3 = Color3.fromRGB(0, 0, 0)
	Item.TextSize = 14.000
	Item.BackgroundTransparency = 1
	
	ItemCorner.CornerRadius = UDim.new(0, 4)
	ItemCorner.Name = "ItemCorner"
	ItemCorner.Parent = Item
	
	ItemText.Name = "ItemText"
	ItemText.Parent = Item
	ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
	ItemText.BackgroundTransparency = 1.000
	ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
	ItemText.Size = UDim2.new(0, 192, 0, 29)
	ItemText.Font = Enum.Font.Gotham
	ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
	ItemText.TextSize = 14.000
	ItemText.TextXAlignment = Enum.TextXAlignment.Left
	ItemText.Text = textadd
	
	Item.MouseEnter:Connect(function()
		ItemText.TextColor3 = _G.Color
		Item.BackgroundTransparency = 0
	end)
	
	Item.MouseLeave:Connect(function()
		ItemText.TextColor3 = _G.Color
		Item.BackgroundTransparency = 1
	end)
	
	Item.MouseButton1Click:Connect(function()
		CurrentSelectedText.Text = textadd
		pcall(callback, textadd)
		Dropdown.Size = UDim2.new(0, 403, 0, 73)
		DropdownFrameMain.Visible = false
		DropdownFrameMainOutline.Visible = false
		ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
		DropTog = not DropTog
	end)
	
	DropItemHolder.CanvasSize = UDim2.new(0,0,0,DropItemHolderLayout.AbsoluteContentSize.Y)
	
	DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
	DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
	DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
	end
	return DropFunc
	end
	function ChannelContent:Colorpicker(text, preset, callback)
	local OldToggleColor = Color3.fromRGB(0, 0, 0)
	local OldColor = _G.Color
	local OldColorSelectionPosition = nil
	local OldHueSelectionPosition = nil
	local ColorH, ColorS, ColorV = 1, 1, 1
	local RainbowColorPicker = false
	local ColorPickerInput = nil
	local ColorInput = nil
	local HueInput = nil
	
	local Colorpicker = Instance.new("Frame")
	local ColorpickerTitle = Instance.new("TextLabel")
	local ColorpickerFrameOutline = Instance.new("Frame")
	local ColorpickerFrameOutlineCorner = Instance.new("UICorner")
	local ColorpickerFrame = Instance.new("Frame")
	local ColorpickerFrameCorner = Instance.new("UICorner")
	local Color = Instance.new("ImageLabel")
	local ColorCorner = Instance.new("UICorner")
	local ColorSelection = Instance.new("ImageLabel")
	local Hue = Instance.new("ImageLabel")
	local HueCorner = Instance.new("UICorner")
	local HueGradient = Instance.new("UIGradient")
	local HueSelection = Instance.new("ImageLabel")
	local PresetClr = Instance.new("Frame")
	local PresetClrCorner = Instance.new("UICorner")
	
	Colorpicker.Name = "Colorpicker"
	Colorpicker.Parent = ChannelHolder
	Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Colorpicker.BackgroundTransparency = 1.000
	Colorpicker.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
	Colorpicker.Size = UDim2.new(0, 403, 0, 175)
	
	ColorpickerTitle.Name = "ColorpickerTitle"
	ColorpickerTitle.Parent = Colorpicker
	ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ColorpickerTitle.BackgroundTransparency = 1.000
	ColorpickerTitle.Position = UDim2.new(0, 5, 0, 0)
	ColorpickerTitle.Size = UDim2.new(0, 200, 0, 29)
	ColorpickerTitle.Font = Enum.Font.Gotham
	ColorpickerTitle.Text = "Colorpicker"
	ColorpickerTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
	ColorpickerTitle.TextSize = 14.000
	ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ColorpickerFrameOutline.Name = "ColorpickerFrameOutline"
	ColorpickerFrameOutline.Parent = ColorpickerTitle
	ColorpickerFrameOutline.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
	ColorpickerFrameOutline.Position = UDim2.new(-0.00100000005, 0, 0.991999984, 0)
	ColorpickerFrameOutline.Size = UDim2.new(0, 238, 0, 139)
	
	ColorpickerFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
	ColorpickerFrameOutlineCorner.Name = "ColorpickerFrameOutlineCorner"
	
	ColorpickerFrameOutlineCorner.Parent = ColorpickerFrameOutline
	
	ColorpickerFrame.Name = "ColorpickerFrame"
	ColorpickerFrame.Parent = ColorpickerTitle
	ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
	ColorpickerFrame.ClipsDescendants = true
	ColorpickerFrame.Position = UDim2.new(0.00999999978, 0, 1.06638515, 0)
	ColorpickerFrame.Selectable = true
	ColorpickerFrame.Size = UDim2.new(0, 234, 0, 135)
	
	ColorpickerFrameCorner.CornerRadius = UDim.new(0, 3)
	ColorpickerFrameCorner.Name = "ColorpickerFrameCorner"
	ColorpickerFrameCorner.Parent = ColorpickerFrame
	
	Color.Name = "Color"
	Color.Parent = ColorpickerFrame
	Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	Color.Position = UDim2.new(0, 10, 0, 10)
	Color.Size = UDim2.new(0, 154, 0, 118)
	Color.ZIndex = 10
	Color.Image = "rbxassetid://4155801252"
	
	ColorCorner.CornerRadius = UDim.new(0, 3)
	ColorCorner.Name = "ColorCorner"
	ColorCorner.Parent = Color
	
	ColorSelection.Name = "ColorSelection"
	ColorSelection.Parent = Color
	ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
	ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ColorSelection.BackgroundTransparency = 1.000
	ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
	ColorSelection.Size = UDim2.new(0, 18, 0, 18)
	ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
	ColorSelection.ScaleType = Enum.ScaleType.Fit
	
	Hue.Name = "Hue"
	Hue.Parent = ColorpickerFrame
	Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hue.Position = UDim2.new(0, 171, 0, 10)
	Hue.Size = UDim2.new(0, 18, 0, 118)
	
	HueCorner.CornerRadius = UDim.new(0, 3)
	HueCorner.Name = "HueCorner"
	HueCorner.Parent = Hue
	
	HueGradient.Color = ColorSequence.new {
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
	ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
	ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
	ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
	ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
	ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
	}
	HueGradient.Rotation = 270
	HueGradient.Name = "HueGradient"
	HueGradient.Parent = Hue
	
	HueSelection.Name = "HueSelection"
	HueSelection.Parent = Hue
	HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
	HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HueSelection.BackgroundTransparency = 1.000
	HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
	HueSelection.Size = UDim2.new(0, 18, 0, 18)
	HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
	
	PresetClr.Name = "PresetClr"
	PresetClr.Parent = ColorpickerFrame
	PresetClr.BackgroundColor3 = preset
	PresetClr.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
	PresetClr.Size = UDim2.new(0, 25, 0, 25)
	
	PresetClrCorner.CornerRadius = UDim.new(0, 3)
	PresetClrCorner.Name = "PresetClrCorner"
	PresetClrCorner.Parent = PresetClr
	
	local function UpdateColorPicker(nope)
	PresetClr.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
	Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
	
	pcall(callback, PresetClr.BackgroundColor3)
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
	
	PresetClr.BackgroundColor3 = preset
	Color.BackgroundColor3 = preset
	pcall(callback, PresetClr.BackgroundColor3)
	
	Color.InputBegan:Connect(
	function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
	
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
	
	
			if HueInput then
				HueInput:Disconnect()
			end
	
			HueInput =
				RunService.RenderStepped:Connect(
					function()
					local HueY =
						(math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
							Hue.AbsoluteSize.Y)
	
					HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
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
	
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Texbox(text, placetext, disapper, callback)
	local Textbox = Instance.new("Frame")
	local TextboxTitle = Instance.new("TextLabel")
	local TextboxFrameOutline = Instance.new("Frame")
	local TextboxFrameOutlineCorner = Instance.new("UICorner")
	local TextboxFrame = Instance.new("Frame")
	local TextboxFrameCorner = Instance.new("UICorner")
	local TextBox = Instance.new("TextBox")
	
	Textbox.Name = "Textbox"
	Textbox.Parent = ChannelHolder
	Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Textbox.BackgroundTransparency = 1.000
	Textbox.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
	Textbox.Size = UDim2.new(0, 403, 0, 73)
	
	TextboxTitle.Name = "TextboxTitle"
	TextboxTitle.Parent = Textbox
	TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextboxTitle.BackgroundTransparency = 1.000
	TextboxTitle.Position = UDim2.new(0, 5, 0, 0)
	TextboxTitle.Size = UDim2.new(0, 200, 0, 29)
	TextboxTitle.Font = Enum.Font.Gotham
	TextboxTitle.Text = text
	TextboxTitle.TextColor3 = _G.Color
	TextboxTitle.TextSize = 14.000
	TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	TextboxFrameOutline.Name = "TextboxFrameOutline"
	TextboxFrameOutline.Parent = TextboxTitle
	TextboxFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
	TextboxFrameOutline.BackgroundColor3 = _G.Color
	TextboxFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
	TextboxFrameOutline.Size = UDim2.new(0, 396, 0, 36)
	
	TextboxFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
	TextboxFrameOutlineCorner.Name = "TextboxFrameOutlineCorner"
	TextboxFrameOutlineCorner.Parent = TextboxFrameOutline
	
	TextboxFrame.Name = "TextboxFrame"
	TextboxFrame.Parent = TextboxTitle
	TextboxFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
	TextboxFrame.ClipsDescendants = true
	TextboxFrame.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
	TextboxFrame.Selectable = true
	TextboxFrame.Size = UDim2.new(0, 392, 0, 32)
	
	TextboxFrameCorner.CornerRadius = UDim.new(0, 4)
	TextboxFrameCorner.Name = "TextboxFrameCorner"
	TextboxFrameCorner.Parent = TextboxFrame
	
	TextBox.Parent = TextboxFrame
	TextBox.BackgroundColor3 = _G.Color
	TextBox.BackgroundTransparency = 1.000
	TextBox.Position = UDim2.new(0.0178571437, 0, 0, 0)
	TextBox.Size = UDim2.new(0, 377, 0, 32)
	TextBox.Font = Enum.Font.Gotham
	TextBox.PlaceholderColor3 = _G.Color
	TextBox.PlaceholderText = placetext
	TextBox.Text = ""
	TextBox.TextColor3 = _G.Color
	TextBox.TextSize = 14.000
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	
	TextBox.Focused:Connect(function()
	TweenService:Create(
		TextboxFrameOutline,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundColor3 = _G.Color}
	):Play()
	end)
	
	TextBox.FocusLost:Connect(function(ep)
	TweenService:Create(
		TextboxFrameOutline,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(15,15,15)}
	):Play()
	if ep then
		if #TextBox.Text > 0 then
			pcall(callback, TextBox.Text)
			if disapper then
				TextBox.Text = ""
			end
		end
	end
	end)
	
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Label(text)
	local Label = Instance.new("TextButton")
	local LabelTitle = Instance.new("TextLabel")
	local labelfunc = {}
	
	Label.Name = "Label"
	Label.Parent = ChannelHolder
	Label.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Label.BorderSizePixel = 0
	Label.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	Label.Size = UDim2.new(0, 401, 0, 30)
	Label.AutoButtonColor = false
	Label.Font = Enum.Font.Gotham
	Label.Text = ""
	Label.TextColor3 = _G.Color
	Label.TextSize = 14.000
	
	LabelTitle.Name = "LabelTitle"
	LabelTitle.Parent = Label
	LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LabelTitle.BackgroundTransparency = 1.000
	LabelTitle.Position = UDim2.new(0, 5, 0, 0)
	LabelTitle.Size = UDim2.new(0, 200, 0, 30)
	LabelTitle.Font = Enum.Font.Gotham
	LabelTitle.Text = text
	LabelTitle.TextColor3 = _G.Color
	LabelTitle.TextSize = 14.000
	LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	function labelfunc:Refresh(tochange)
	Label.Text = tochange
	end
	
	return labelfunc
	end
	
	function ChannelContent:Bind(text, presetbind, callback)
	local Key = presetbind.Name
	local Keybind = Instance.new("TextButton")
	local KeybindTitle = Instance.new("TextLabel")
	local KeybindText = Instance.new("TextLabel")
	
	Keybind.Name = "Keybind"
	Keybind.Parent = ChannelHolder
	Keybind.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
	Keybind.BorderSizePixel = 0
	Keybind.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	Keybind.Size = UDim2.new(0, 401, 0, 30)
	Keybind.AutoButtonColor = false
	Keybind.Font = Enum.Font.Gotham
	Keybind.Text = ""
	Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
	Keybind.TextSize = 14.000
	
	KeybindTitle.Name = "KeybindTitle"
	KeybindTitle.Parent = Keybind
	KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeybindTitle.BackgroundTransparency = 1.000
	KeybindTitle.Position = UDim2.new(0, 5, 0, 0)
	KeybindTitle.Size = UDim2.new(0, 200, 0, 30)
	KeybindTitle.Font = Enum.Font.Gotham
	KeybindTitle.Text = text
	KeybindTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
	KeybindTitle.TextSize = 14.000
	KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	KeybindText.Name = "KeybindText"
	KeybindText.Parent = Keybind
	KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeybindText.BackgroundTransparency = 1.000
	KeybindText.Position = UDim2.new(0, 316, 0, 0)
	KeybindText.Size = UDim2.new(0, 85, 0, 30)
	KeybindText.Font = Enum.Font.Gotham
	KeybindText.Text = presetbind.Name
	KeybindText.TextColor3 = Color3.fromRGB(127, 131, 137)
	KeybindText.TextSize = 14.000
	KeybindText.TextXAlignment = Enum.TextXAlignment.Right
	
	Keybind.MouseButton1Click:Connect(function()
	KeybindText.Text = "..."
	local inputwait = game:GetService("UserInputService").InputBegan:wait()
	if inputwait.KeyCode.Name ~= "Unknown" then
		KeybindText.Text = inputwait.KeyCode.Name
		Key = inputwait.KeyCode.Name
	end
	end)
	
	game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
	if not pressed then
		if current.KeyCode.Name == Key then
			pcall(callback)
		end
	end
	end)
	ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	return ChannelContent
	end
	
	return ChannelHold
	end
	return ServerHold
	end
	
	_G.Color = Color3.fromRGB(255, 0, 0)
	
	local Star = nill:Window("Putaya Hub | V.0.1")
	
	local StarServer = Star:Server("King Legacy",8521503225)
	
	local tab = StarServer:Channel("Main")
	
	tab:Button("Redeem All Code", function()
	game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("Update3")
	game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("THXFOR1BVISIT")
	game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("1MFAV")
	game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("Peodiz")
	game:GetService("ReplicatedStorage").Remotes.Functions.redeemcode:InvokeServer("DinoxLive")
	end)
	
	tab:Toggle("Auto Farm", false, function(vu)
	pcall(function()
	CheckQuest()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	_G.AutoFarm = vu
	wait()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
	end)
	end)
	
	
	tab:Toggle("Auto Haki",  true, function(v)
	_G.Haki = v
	end)
	
	tab:Toggle("Auto KenHaki", true, function(v)
	_G.KenHaki = v 
	end)
	
	spawn(function()
	while wait(1) do
	if _G.Haki then
	pcall(function()
	if game.Players.LocalPlayer.Character.Haki.Value == 0 then
	game.Players.LocalPlayer.Character.Haki.Value = 1
	game:GetService("Players").LocalPlayer.Character.Services.Client.Armament:FireServer()
	end
	end)
	end
	end
	end)
	
	spawn(function()
	while wait(1) do
	if _G.KenHaki then
	pcall(function()
	if game.Players.LocalPlayer.Character.KenHaki.Value == 0 then
	local args = {
	[1] = true
	}
	game:GetService("Players").LocalPlayer.Character.Services.Client.KenEvent:InvokeServer(unpack(args))
	end
	end)
	end
	end
	end)
	
	
	if _G.useid == nil then
	game.Players.LocalPlayer.UserId = 991117111
	game:GetService("CoreGui").PlayerList.Enabled = false
	_G.useid = false
	end
	
	local RunService = game:GetService("RunService")
	function antiSit()
	if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then 
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end
	end
	RunService:BindToRenderStep("tempBinding", 1000, antiSit)
	
	
	local placeId = game.PlaceId
	if placeId == 4520749081 then
	OldWorld = true
	elseif placeId == 6381829480 then
	newworld = true
	end
	function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.PlayerStats.lvl.Value
	if OldWorld then
	if MyLevel == 1 or MyLevel <= 9 then
	CFrameQuest = CFrame.new(2277.1884765625, 48.143299102783, -1648.5339355469)
	CFrameMon = CFrame.new(2388.6013183594, 350.19408416748, -1578.6862792969)
	NameMon = "Soldier"
	Ms = "Soldier [Lv. 1]"
	levelquest = 1
	elseif MyLevel == 10 or MyLevel <= 19 then
	CFrameQuest = CFrame.new(2496.5114746094, 48.135684967041, -1771.6900634766)
	CFrameMon = CFrame.new(2388.6013183594, 350.19408416748, -1578.6862792969)
	NameMon = "Clown Pirate"
	Ms = "Clown Pirate [Lv. 10]"
	levelquest = 10
	elseif MyLevel == 20 or MyLevel <= 29 then
	CFrameQuest = CFrame.new(2231.0498046875, 48.153293609619, -1779.0476074219)
	CFrameMon = CFrame.new(2293.3962402344, 350.193294525146, -1802.6019287109)
	NameMon = "Smoky"
	Ms = "Smoky [Lv. 20]"
	levelquest = 20
	elseif MyLevel == 30 or MyLevel <= 49 then
	CFrameQuest = CFrame.new(2011.1265869141, 48.143299102783, -1810.4008789063)
	CFrameMon = CFrame.new(2091.3608398438, 350.193294525146, -1928.6489257813)
	NameMon = "Tashi"
	Ms = "Tashi [Lv. 30]"
	levelquest = 30
	elseif MyLevel == 50 or MyLevel <= 74 then
	CFrameQuest = CFrame.new(4021.25781, 37.8887329, 268.103943, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
	CFrameMon = CFrame.new(3965.912109375, 395.80511474609, 119.3405380249)
	NameMon = "Clown Pirate"
	Ms = "Clown Pirate [Lv. 50]"
	levelquest = 50
	elseif MyLevel == 75 or MyLevel <= 144 then
	CFrameQuest = CFrame.new(4260.06592, 69.0870895, 249.896057, 0.529884458, -0, -0.848069847, 0, 1, -0, 0.848069847, 0, 0.529884458)
	CFrameMon = CFrame.new(4279.83838, 350.8366318, 53.9889946)
	NameMon = "The Clown"
	Ms = "The Clown [Lv. 75]"
	levelquest = 75
	elseif MyLevel == 145 or MyLevel <= 179 then
	CFrameQuest = CFrame.new(1607.07849, 68.6067047, 1359.05444)
	CFrameMon = CFrame.new(1708.06006, 350.6267929, 1412.47498)
	NameMon = "Axe-Hand"
	Ms = "Axe-Hand [Lv. 145]"
	levelquest = 145
	elseif MyLevel == 180 or MyLevel <= 229 then
	CFrameQuest = CFrame.new(3873.9126, 10.4919758, 3251.1311)
	CFrameMon = CFrame.new(3460.4594726563, 487.71597290039, 1550.8977050781)
	NameMon = "Fishman"
	Ms = "Fishman [Lv. 180]"
	levelquest = 180
	elseif MyLevel == 230 or MyLevel <= 249 then
	CFrameQuest = CFrame.new(4291.13379, 10.4919758, 3250.18872)
	CFrameMon = CFrame.new(3813.0610351563, 326.03552246094, 1452.6848144531)
	NameMon = "SharkMan"
	Ms = "SharkMan [Lv. 230]"
	levelquest = 230
	elseif MyLevel == 250 or MyLevel <= 299 then
	CFrameQuest = CFrame.new(-51.7463303, 49.7374306, -87.7024078)
	CFrameMon = CFrame.new(-51.7463303, 350.7374306, -87.7024078)
	NameMon = "Trainer Chef"
	Ms = "Trainer Chef [Lv. 250]"
	levelquest = 250
	elseif MyLevel == 300 or MyLevel <= 349 then
	CFrameQuest = CFrame.new(39.4004707, 99.5126801, -47.8512077)
	CFrameMon = CFrame.new(96.1493149, 350.94034, -143.488434)
	NameMon = "Dark Leg"
	Ms = "Dark Leg [Lv. 300]"
	levelquest = 300
	elseif MyLevel == 350 or MyLevel <= 399 then
	CFrameQuest = CFrame.new(-44.2784309, 49.7609177, 115.918266)
	CFrameMon = CFrame.new(-103.605598, 350.94034, 233.536148)
	NameMon = "Weapon Man"
	Ms = "Weapon Man [Lv. 350]"
	levelquest = 350
	elseif MyLevel == 400 or MyLevel <= 449 then
	CFrameQuest = CFrame.new(-2851.466796875, 18.111785888672, 1420.4886474609)
	CFrameMon = CFrame.new(-2818.3337402344, 350.12328338623, 1470.3162841797)
	NameMon = "Snow Soldier"
	Ms = "Snow Soldier [Lv. 400]"
	levelquest = 400
	elseif MyLevel == 450 or MyLevel <= 524 then
	CFrameQuest = CFrame.new(-2838.9370117188, 18.091789245605, 1319.8012695313)
	CFrameMon = CFrame.new(-2860.3764648438, 350.121784210205, 1293.3358154297)
	NameMon = "King Snow"
	Ms = "King Snow [Lv. 450]"
	levelquest = 450
	elseif MyLevel == 525 or MyLevel <= 624 then
	CFrameQuest = CFrame.new(1731.5385742188, 12.902250289917, 3644.4453125)
	CFrameMon = CFrame.new(1761.9046630859, 350.971120834351, 3610.41015625)
	NameMon = "Candle Man"
	Ms = "Candle Man [Lv. 525]"
	levelquest = 525
	elseif MyLevel == 625 or MyLevel <= 724 then
	CFrameQuest = CFrame.new(1520.1804199219, 12.902250289917, 3431.5466308594)
	CFrameMon = CFrame.new(1538.6333007813, 350.902250289917, 3397.02734375)
	NameMon = "Bomb Man"
	Ms = "Bomb Man [Lv. 625]"
	levelquest = 625
	elseif MyLevel == 725 or MyLevel <= 799 then
	CFrameQuest = CFrame.new(1511.4117431641, 43.04167175293, 3541.400390625)
	CFrameMon = CFrame.new(1478.7867431641, 350.56248474121, 3638.8305664063)
	NameMon = "King of Sand"
	Ms = "King of Sand [Lv. 725]"
	levelquest = 725
	elseif MyLevel == 800 or MyLevel <= 849 then
	CFrameQuest = CFrame.new(-1251.8015136719, 200.67266845703, 4581.4990234375)
	CFrameMon = CFrame.new(-1294.9228515625, 500.30653381348, 4678.55859375)
	NameMon = "Sky Soldier"
	Ms = "Sky Soldier [Lv. 800]"
	levelquest = 800
	elseif MyLevel == 850 or MyLevel <= 899 then
	CFrameQuest = CFrame.new(-818.76123046875, 386.42059326172, 4745.69921875)
	CFrameMon = CFrame.new(-790.27984619141, 500.47073364258, 4807.623046875)
	NameMon = "Ball Man"
	Ms = "Ball Man [Lv. 850]"
	levelquest = 850
	elseif MyLevel == 900 or MyLevel <= 999 then
	CFrameQuest = CFrame.new(-861.33489990234, 386.42074584961, 4879.1186523438)
	CFrameMon = CFrame.new(-895.37359619141, 500.42074584961, 4946.294921875)
	NameMon = "Rumble Man"
	Ms = "Rumble Man [Lv. 900]"
	levelquest = 900
	elseif MyLevel == 1000 or MyLevel <= 1099 then
	CFrameQuest = CFrame.new(8271.4833984375, 11.896879196167, 5437.4653320313)
	CFrameMon = CFrame.new(8333.201171875, 350.846879959106, 5465.994140625)
	NameMon = "Soldier"
	Ms = "Soldier [Lv. 1000]"
	levelquest = 1000
	elseif MyLevel == 1100 or MyLevel <= 1149 then
	CFrameQuest = CFrame.new(8176.1176757813, 11.846877098083, 5287.4770507813)
	CFrameMon = CFrame.new(6152.1225585938, 73.269500732422, 3514.0356445313)
	NameMon = "Leader"
	Ms = "Leader [Lv. 1100]"
	levelquest = 1100
	elseif MyLevel == 1150 or MyLevel <= 1249 then
	CFrameQuest = CFrame.new(7993.27393, 11.8711519, 5765.53076, -0.278351784, 5.68772371e-08, -0.960479379, 9.40473655e-08, 1, 3.19621591e-08, 0.960479379, -8.14338179e-08, -0.278351784)
	CFrameMon = CFrame.new(5622.912109375, 174.02874755859, 4060.2351074219)
	NameMon = "Pasta"
	Ms = "Pasta [Lv. 1150]"
	levelquest = 1150
	elseif MyLevel == 1250 or MyLevel <= 1324 then
	CFrameQuest = CFrame.new(4210.1782226563, 13.030811309814, 6768.8955078125)
	CFrameMon = CFrame.new(4166.5815429688, 500.090654373169, 6898.6127929688)
	NameMon = "Wolf"
	Ms = "Wolf [Lv. 1250]"
	levelquest = 1250
	elseif MyLevel == 1325 or MyLevel <= 1399 then
	CFrameQuest = CFrame.new(4311.3798828125, 13.042789459229, 6978.6538085938)
	CFrameMon = CFrame.new(4379.4565429688, 500.090654373169, 6949.353515625)
	NameMon = "Giraffe"
	Ms = "Giraffe [Lv. 1325]"
	levelquest = 1325
	elseif MyLevel == 1400 or MyLevel <= 1499 then
	CFrameQuest = CFrame.new(4312.81640625, 13.059648513794, 7417.8813476563)
	CFrameMon = CFrame.new(4391.2377929688, 500.961982727051, 7569.0166015625)
	NameMon = "Leo"
	Ms = "Leo [Lv. 1400]"
	levelquest = 1400
	elseif MyLevel == 1500 or MyLevel <= 1599 then
	CFrameQuest = CFrame.new(-776.28472900391, 47.856597900391, 8478.431640625)
	CFrameMon = CFrame.new(-778.30328369141, 500.856491088867, 8537.9267578125)
	NameMon = "Zombie"
	Ms = "Zombie [Lv. 1500]"
	levelquest = 1500
	elseif MyLevel == 1600 or MyLevel <= 1749 then
	CFrameQuest = CFrame.new(-793.65240478516, 47.857288360596, 8329.0654296875)
	CFrameMon = CFrame.new(-793.65240478516, 500.857288360596, 8329.0654296875)
	NameMon = "Shadow Master"
	Ms = "Shadow Master [Lv. 1600]"
	levelquest = 1600
	elseif MyLevel == 1750 or MyLevel <= 1799 then
	CFrameQuest = CFrame.new(8601.7705078125, 49.582111358643, 1731.2292480469)
	CFrameMon = CFrame.new(8601.7705078125, 500.582111358643, 1731.2292480469)
	NameMon = "New World Pirate"
	Ms = "New World Pirate [Lv. 1750]"
	levelquest = 1750
	elseif MyLevel == 1800 or MyLevel <= 1924 then
	CFrameQuest = CFrame.new(8580.9599609375, 49.578090667725, 1347.4166259766)
	CFrameMon = CFrame.new(8580.9599609375, 500.578090667725, 1347.4166259766)
	NameMon = "Rear Admiral"
	Ms = "Rear Admiral [Lv. 1800]"
	levelquest = 1800
	elseif MyLevel == 1925 or MyLevel <= 1849 then
	CFrameQuest = CFrame.new(8242.3994140625, 49.60005569458, 1392.0007324219)
	CFrameMon = CFrame.new(8242.3994140625, 500.60005569458, 1392.0007324219)
	NameMon = "Quake Woman"
	Ms = "Quake Woman [Lv. 1925]"
	levelquest = 1925
	elseif MyLevel == 1850 or MyLevel <= 1999 then
	CFrameQuest = CFrame.new(8555.9892578125, 49.57417678833, 1460.2507324219)
	CFrameMon = CFrame.new(8555.9892578125, 500.57417678833, 1460.2507324219)
	NameMon = "True Karate Fishman"
	Ms = "True Karate Fishman [Lv. 1850]"
	levelquest = 1850
	elseif MyLevel == 2000 or MyLevel <= 2049 then
	CFrameQuest = CFrame.new(2970.7785644531, 40.2607421875, 13349.877929688)
	CFrameMon = CFrame.new(2970.7785644531, 500.2607421875, 13349.877929688)
	NameMon = "Fishman"
	Ms = "Fishman [Lv. 2000]"
	levelquest = 2000
	elseif MyLevel == 2050 or MyLevel <= 2099 then
	CFrameQuest = CFrame.new(2783.875, 40.24825668335, 13617.719726563)
	CFrameMon = CFrame.new(2783.875, 500.24825668335, 13617.719726563)
	NameMon = "Combat Fishman"
	Ms = "Combat Fishman [Lv. 2050]"
	levelquest = 2050
	elseif MyLevel == 2100 or MyLevel <= 2149 then
	CFrameQuest = CFrame.new(3297.2663574219, 40.275020599365, 13793.421875)
	CFrameMon = CFrame.new(3297.2663574219, 500.275020599365, 13793.421875)
	NameMon = "Sword Fishman"
	Ms = "Sword Fishman [Lv. 2100]"
	levelquest = 2100
	elseif MyLevel == 2150 or MyLevel <= 2199 then
	CFrameQuest = CFrame.new(3019.2189941406, 40.270706176758, 13883.921875)
	CFrameMon = CFrame.new(3019.2189941406, 350.270706176758, 13883.921875)
	NameMon = "Fishman Soldier"
	Ms = "Fishman Soldier [Lv. 2150]"
	levelquest = 2150
	elseif MyLevel >= 2200 then
	CFrameQuest = CFrame.new(2785.8464355469, 40.275859832764, 13820.041992188)
	CFrameMon = CFrame.new(2785.8464355469, 350.275859832764, 13820.041992188)
	NameMon = "Seasoned Fishman"
	Ms = "Seasoned Fishman [Lv. 2200]"
	levelquest = 2200
	end
	end
	if newworld then
	if MyLevel >= 2250 and MyLevel <= 2299 then
	Ms = "Beast Pirate [Lv. 2250]"
	CFrameQuest = CFrame.new(558.123962, 75.4188766, -2156.09204, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	NameMon = "Beast Pirate"
	CFrameMon = CFrame.new(3302.8967285156, 367.02523803711, 91.186454772949)
	levelquest = 2250
	elseif MyLevel >= 2300 and MyLevel <= 2349 then
	Ms = "Beast Pirate [Lv. 2300]"
	CFrameQuest = CFrame.new(416.176941, 75.386673, -5425.97754, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
	NameMon = "Beast Pirate"
	CFrameMon = CFrame.new(3341.6398925781, 363.15054321289, -270.224609375)
	levelquest = 2300
	elseif MyLevel >= 2350 and MyLevel <= 2399 then
	Ms = "Snake Man [Lv. 2350]"
	CFrameQuest = CFrame.new(88.140152, 75.3936996, -5321.16357, -0.023422122, 0, -0.99972564, 0, 1, 0, 0.99972564, 0, -0.023422122)
	NameMon = "Snake Man"
	CFrameMon = CFrame.new(2821.0869140625, 228.20420837402, 397.10614013672)
	levelquest = 2350
	elseif MyLevel >= 2400 and MyLevel <= 2449 then
	Ms = "Bandit Beast Pirate [Lv. 2400]"
	CFrameQuest = CFrame.new(-2120.31909, 74.9218903, -4906.35107, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	NameMon = "Bandit Beast Pirate"
	CFrameMon = CFrame.new(2700.8044433594, 262.39566040039, -1133.3333740234)
	levelquest = 2400
	elseif MyLevel >= 2450 and MyLevel <= 2499 then
	Ms = "Powerful Beast Pirate [Lv. 2450]"
	CFrameQuest = CFrame.new(-2754.46362, 75.4548111, -5289.625, 0.57264179, 0, 0.819805682, 0, 1, 0, -0.819805682, 0, 0.57264179)
	NameMon = "Powerful Beast Pirate"
	CFrameMon = CFrame.new(2446.5532226563, 497.23837280273, -650.99859619141)
	levelquest = 2450
	elseif MyLevel >= 2500 and MyLevel <= 2549 then
	Ms = "Violet Samurai [Lv. 2500]"
	CFrameQuest = CFrame.new(-3022.99292, 75.7534866, -4925.86426, 0.901796937, 0, 0.43216005, 0, 1, 0, -0.43216005, 0, 0.901796937)
	NameMon = "Violet Samurai"
	CFrameMon = CFrame.new(2125.0998535156, 193.43463134766, -1028.8310546875)
	levelquest = 2500
	elseif MyLevel >= 2550 and MyLevel <= 2599 then
	Ms = "Rabbit Man [Lv. 2550]"
	CFrameQuest = CFrame.new(-1037.83777, 75.6733093, -1947.10742, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NameMon = "Rabbit Man"
	CFrameMon = CFrame.new(1638.6165771484, 238.3356628418, -140.75988769531)
	levelquest = 2550
	elseif MyLevel >= 2600 and MyLevel <= 2649 then
	Ms = "Bat Man [Lv. 2600]"
	CFrameQuest = CFrame.new(-2710.16284, 75.4078979, -1561.74146, 0, 0, 1, 0, 1, -0, -1, 0, 0)
	NameMon = "Bat Man"
	CFrameMon = CFrame.new(2427.9096679688, 214.50489807129, -285.6096496582)
	levelquest = 2600
	elseif MyLevel >= 2650 and MyLevel <= 2699 then
	Ms = "Kitsune Samurai [Lv. 2650]"
	CFrameQuest = CFrame.new(-2917.12598, 75.457901, -1452.71692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NameMon = "Kitsune Samurai"
	CFrameMon = CFrame.new(1694.7454833984, 279.47674560547, 132.89778137207)
	levelquest = 2650
	elseif MyLevel >= 2700 and MyLevel <= 2749 then
	Ms = "Elite Beast Pirate [Lv. 2700]"
	CFrameQuest = CFrame.new(-1042.13416, 75.4581985, 172.622971, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
	NameMon = "Elite Beast Pirate"
	CFrameMon = CFrame.new(2813.0407714844, 137.29498291016, 1433.4289550781)
	levelquest = 2700
	elseif MyLevel >= 2750 and MyLevel <= 2799 then
	Ms = "Elite Beast Pirate [Lv. 2750]"
	CFrameQuest = CFrame.new(-1051.44336, 75.4359818, -113.772148, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0, -1.1920929e-07)
	NameMon = "Elite Beast Pirate"
	CFrameMon = CFrame.new(2901.4145507813, 189.0565032959, 737.08685302734)
	levelquest = 2750
	elseif MyLevel >= 2800 and MyLevel <= 2849 then
	Ms = "Bear Man [Lv. 2800]"
	CFrameQuest = CFrame.new(-387.776123, 75.4327545, 280.899261, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NameMon = "Bear Man"
	CFrameMon = CFrame.new(3222.7277832031, 137.29498291016, 1384.826171875)
	levelquest = 2800 
	elseif MyLevel >= 2850 and MyLevel <= 2899 then
	Ms = "Magician [Lv. 2850]"
	CFrameQuest = CFrame.new(-3519.60156, 75.506752, 1201.35449, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NameMon = "Magician"
	CFrameMon = CFrame.new(1887.2744140625, 145.23045349121, 1004.4313964844)
	levelquest = 2850
	elseif MyLevel >= 2900 and MyLevel <= 2949 then
	Ms = "Pachy Woman [Lv. 2900]"
	CFrameQuest = CFrame.new(-4334.17969, 75.456749, 1914.44507, 0.480083644, -0, -0.877222717, 0, 1, -0, 0.877222717, 0, 0.480083644)
	NameMon = "Pachy Woman"
	CFrameMon = CFrame.new(1615.6518554688, 185.53813171387, 1583.0139160156)
	levelquest = 2900
	elseif MyLevel >= 2950 and MyLevel <= 2999 then
	Ms = "Kappa [Lv. 2950]"
	CFrameQuest = CFrame.new(-1426.53455, 74.8297577, 4112.34961, 0.0880642533, -0, -0.996114731, 0, 1, -0, 0.996114731, 0, 0.0880642533)
	NameMon = "Kappa"
	CFrameMon = CFrame.new(2399.1376953125, 188.26124572754, 2357.2336425781)
	levelquest = 2950
	elseif MyLevel >= 3000 and MyLevel <= 3024 then
	Ms = "Mammoth Man [Lv. 3000]"
	CFrameQuest = CFrame.new(-4276.69336, 74.254776, 4561.5752, 0.996116102, 0, 0.0880491585, 0, 1, 0, -0.0880491585, 0, 0.996116102)
	NameMon = "Mammoth Man"
	CFrameMon = CFrame.new(1988.3930664063, 211.38674926758, 2425.3681640625)
	levelquest = 3000
	elseif MyLevel >= 3025 and MyLevel <= 3074 then
	Ms = "Skull Pirate [Lv. 3050]"
	CFrameQuest = CFrame.new(-3816.54614, 51.3296509, 9891.29688, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
	NameMon = "Skull Pirate"
	CFrameMon = CFrame.new(957.65319824219, 175.79154968262, 7112.705078125)
	levelquest = 3025
	elseif MyLevel >= 3075 and MyLevel <= 3099 then
	Ms = "Elite Skeleton [Lv. 3100]"
	CFrameQuest = CFrame.new(-3032.25317, 51.5443535, 9854.83691, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
	NameMon = "Elite Skeleton"
	CFrameMon = CFrame.new(1378.60546875, 139.00987243652, 7331.2514648438)
	levelquest = 3075
	elseif MyLevel >= 3100 and MyLevel <= 3124 then
	Ms = "Desert Thief [Lv.3125]"
	CFrameQuest = CFrame.new(8847.94238, 14.4670143, 1400.72119, -0.322491169, 0, 0.946572542, 0, 1, 0, -0.946572542, 0, -0.322491169)
	NameMon = "Desert Thief"
	CFrameMon = CFrame.new(8331.119140625, 266.55130004883, 1398.7974853516)
	levelquest = 3100
	elseif MyLevel >= 3125 and MyLevel <= 3149 then
	Ms = "Anubis [Lv.3150]"
	CFrameQuest = CFrame.new(9141.8457, 14.469614, 1055.01233, -0.894592047, 0, 0.446883589, 0, 1, 0, -0.446883589, 0, -0.894592047)
	NameMon = "Anubis"
	CFrameMon = CFrame.new(9568.6044921875, 86.315910339355, 1232.5357666016)
	levelquest = 3125
	elseif MyLevel >= 3150  and MyLevel <= 3174 then
	Ms = "Pharaoh [Lv.3175]"
	CFrameQuest = CFrame.new(9554.38672, 14.4762154, 1545.59363, 0.31220305, 0, 0.950015426, 0, 1, 0, -0.950015426, 0, 0.31220305)
	NameMon = "Pharaoh"
	CFrameMon = CFrame.new(9116.03125, 47.920093536377, 1914.4226074219)
	levelquest = 3150
	elseif MyLevel >= 3175 and MyLevel <= 3199 then
	Ms = "Flame User [Lv.3200]"
	CFrameQuest = CFrame.new(9857.44727, 14.7451639, 1684.2052, -0.0956259966, 0, 0.995417356, 0, 1, 0, -0.995417356, 0, -0.0956259966)
	NameMon = "Flame User"
	CFrameMon = CFrame.new(9780.2236328125, 316.51937866211, 1732.7475585938)
	levelquest = 3175
	elseif MyLevel >= 3200 and MyLevel <= 3224 then
	Ms = "Chess Soldier [Lv. 3200]"
	CFrameQuest = CFrame.new(6875, 28.9374027, 7951.53223, -0.992770553, 0, -0.12002904, 0, 1, 0, 0.12002904, 0, -0.992770553)
	NameMon = "Chess Soldier"
	CFrameMon = CFrame.new(6842.9458, 113.897461, 8166.92139, -0.978180647, 0, -0.207756639, 0, 1, 0, 0.207756639, 0, -0.978180647)
	levelquest = 3200
	elseif MyLevel >= 3225 and MyLevel <= 3249 then
	Ms = "Sunken Vessel [Lv.3225]"
	CFrameQuest = CFrame.new(6430.80225, 28.7034626, 7979.43799, -0.896995902, 0, -0.442038745, 0, 1, 0, 0.442038745, 0, -0.896995902)
	NameMon = "Sunken Vessel"
	CFrameMon = CFrame.new(6260.2124, 23.7355881, 8518.10645, -0.135348797, 0, -0.990798056, 0, 1, 0, 0.990798056, 0, -0.135348797)
	levelquest = 3225
	elseif MyLevel >= 3250 then
	Ms = "Biscuit Man [Lv.3250]"
	CFrameQuest = CFrame.new(5789.9624, 202.36792, 9032.56641, 0.256339848, -0, -0.966586709, 0, 1, -0, 0.966586709, 0, 0.256339848)
	NameMon = "Biscuit Man"
	CFrameMon = CFrame.new(6250.66699, 335.045502, 9107.34668, 0.196545959, -0, -0.980494618, 0, 1, -0, 0.980494618, 0, 0.196545959)
	levelquest = 3250
	end
	end
	end
	CheckQuest()
	
	
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local VirtualUser = game:GetService('VirtualUser')
	function autofarm()
	if game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == false then
	pcall(function()
	CheckQuest()
	if not game:GetService("Workspace").AntiTPNPC:FindFirstChild("QuestLvl"..levelquest) then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").MAP["QuestLvl"..levelquest].HumanoidRootPart.CFrame
	else 
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AntiTPNPC["QuestLvl"..levelquest].HumanoidRootPart.CFrame
	end
	
	game:GetService'VirtualUser':Button1Down(Vector2.new(9999,9999))
	game:GetService'VirtualUser':Button1Up(Vector2.new(9999,9999))
	wait()
	for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
	if v.Name == "Dialogue" then
	v.Accept.Size = UDim2.new(0, 10000, 0, 10000)
	v.Accept.Position = UDim2.new(-2, 0, -5, 0)
	v.Accept.ImageTransparency = 1
	end
	end
	end)
	
	elseif game:GetService("Players").LocalPlayer.PlayerGui.Quest.QuestBoard.Visible == true then
	CheckQuest()
	if game:GetService("Workspace").Monster:GetDescendants(Ms) then
	pcall(function()
	for i, v in pairs(game:GetService("Workspace").Monster:GetDescendants()) do
	CheckQuest()
	if v.Name == Ms then
	repeat wait()
	if v.Humanoid.Health > 0 then
	equip()
	CheckQuest()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame* CFrame.new(0,0,MobDistance)
	end
	until v.Humanoid.Health <= 0 or _G.AutoFarm == false or not v.Parent 
	end
	end
	end
	)
	else
	end
	end
	end
	
	spawn(function()
	while task.wait() do
	if _G.AutoFarm == true then
	autofarm()
	end
	end
	end)
	
	Toolse = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
	table.insert(Toolse,v.Name)
	end
	end
	
	local Weapona = tab:Dropdown("Select Weapon", Toolse, function(v)
	_G.SelectWeapon = v
	end)
	
	function equip()
	pcall(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v.Name == _G.SelectWeapon  then
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
	end
	end
	end)
	end
	
	tab:Button("Refresh Weapon", function()
	Weapona:Clear()
	Toolse = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
	Weapona:Add(v.Name)
	end
	end
	end)
	
	MobDistance = 3
	tab:Slider("Mob Distance", 1, 100, 3,function(v)
	MobDistance = v
	end)
	
	tab:Line()
	
	tab:Toggle("Auto Skill Z", false, function(v)
	_G.z = v
	end)
	
	tab:Toggle("Auto Skill X", false, function(v)
	_G.x = v
	end)
	
	tab:Toggle("Auto Skill C", false, function(v)
	_G.c = v
	end)
	
	tab:Toggle("Auto Skill V", false,function(v)
	_G.v = v
	end)
	
	function autoskillheehee()
	if  _G.z == true then
	game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end
	if  _G.x == true then
	game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end
	if  _G.c == true then
	game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end
	if  _G.v == true then
	game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
	end
	end
	
	function attack()
	game:GetService('VirtualUser'):CaptureController()
	game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
	end
	
	spawn(function()
	while wait(.1) do
	if _G.AutoFarm then
	pcall(function()
	autoskillheehee()
	wait(.1)
	equip()
	end)
	end
	end
	end)
	
	local tab2 = StarServer:Channel("Auto Stats")
	
	tab2:Toggle("Melee", _G.Melees, function(v)
	_G.Melees = v
	end)
	
	tab2:Toggle("Defense",_G.Defense, function(v)
	_G.Defense = v
	end)
	
	tab2:Toggle("Sword",_G.Sword, function(v)
	_G.Sword = v
	end)
	
	tab2:Toggle("Devil Fruit", _G.Fruit, function(v)
	_G.Fruit = v
	end)
	
	PointStats = 1
	tab2:Slider("Stats Point", 1, 100, 1,function(v)
	PointStats = 1
	end)
	
	spawn(function()
	while game:GetService("RunService").RenderStepped:wait() do
	if _G.Defense then
	pcall(function()
	local args = {
	[1] = "Defense",
	[2] = PointStats
	}
	game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
	end)
	end
	if _G.Melees then
	pcall(function()
	local args = {
	[1] = "Melee",
	[2] = PointStats
	}
	
	game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
	
	end)
	end
	if _G.Sword then
	pcall(function()
	local args = {
	[1] = "Sword",
	[2] = PointStats
	}
	game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
	end)
	end
	if _G.Fruit then
	pcall(function()
	local args = {
	[1] = "Devil Fruit",
	[2] = PointStats
	}
	game:GetService("Players").LocalPlayer.PlayerGui.Stats.Button.StatsFrame.RemoteEvent:FireServer(unpack(args))
	end)
	end
	end
	end)
	
	local tab3 = StarServer:Channel("Teleport")
	
	if game.PlaceId == 4520749081 then
	tab3:Button("Buso Shop",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5854.84424, 12.3194122, 3610.99585, 0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, 0.374604106)
	end)
	tab3:Button("Ken Shop",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(81.0302734, 387.351685, 4037.99609, -0.930661798, 0, 0.365880936, 0, 1, 0, -0.365880936, 0, -0.930661798)
	end)
	tab3:Button("Dark Leg Shop", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6452.85352, 168.681778, -2371.36523, 0.552294254, -0, -0.833649278, 0, 1, -0, 0.833649278, 0, 0.552294254)
	end)
	tab3:Button("Cyborg Shop", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3937.80396, 123.202278, 1486.78528, -0.479026794, 0, -0.877800286, 0, 1, 0, 0.877800286, 0, -0.479026794)
	end)
	tab3:Button("Sword Shop",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6727.07275, 310.193512, 1295.02942, 0.86898458, 0, 0.494839221, 0, 1, 0, -0.494839221, 0, 0.86898458)
	end)
	tab3:Button("Water Kungfu Shop",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2348.47363, 40.5055351, 9684.56445, -0.125672936, 0, -0.992071748, 0, 1, 0, 0.992071748, 0, -0.125672936)
	end)
	tab3:Button("Mini Mace",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6731.1850585938, 310.11947631836, 1291.1402587891)
	end)
	end
	if game.PlaceId == 6381829480 then 
	tab3:Button("Electro Shop", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2458.68604, 173.271606, -1107.83252, -0.935120225, 0, -0.354330838, 0, 1, 0, 0.354330838, 0, -0.935120225)
	end)
	tab3:Button("Dragon Claw Shop",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2718.39063, 430.889709, 728.691528, 0.99658066, -0, -0.0826257691, 0, 1, -0, 0.0826257691, 0, 0.99658066)
	end)
	tab3:Button("Water Kungfu Shop", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2405.96143, 57.54142, 254.155121, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	end)
	tab3:Button("Dark Leg Shop",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2379.35303, 57.5062447, 128.700226, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	end)
	tab3:Button("Cyborg Shop",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2320.12891, 56.8765411, 236.112518, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
	end)
	tab3:Button("Reset Stat Shop", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2433.93115, 57.4331322, 137.138245, -1, 0, 0, 0, 1, 0, 0, 0, -1)
	end)
	end
	
	if game.PlaceId == 4520749081 then
	tab3:Button("New World", "Teleport To New World", function()
	local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer
	ts:Teleport(6381829480, p)
	end)
	
	tab3:Line()
	
	tab3:Button("Stone Rain Sea",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6215.9287109375, 424.83047485352, -2068.7109375)
	end)
	tab3:Button("Town",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2034.8345947266, 48.167205810547, -1700.8475341797)
	end)
	tab3:Button("Shark Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3186.3107910156, 10.1405210495, 1423.6528320313)
	end)
	tab3:Button("Snow Island",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1106.1993408203, 44.459392547607, 1718.8492431641)
	end)
	tab3:Button("Sky Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(238.40699768066, 402.76065063477, 4078.0029296875)
	end)
	tab3:Button("Pirate Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3955.0932617188, 78.229362487793, -610.56951904297)
	end)
	tab3:Button("Zombie Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.46853637695, 226.77265930176, 6345.2255859375)
	end)
	tab3:Button("Bubble Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5637.09375, 11.105633735657, 3491.439453125)
	end)
	tab3:Button("War Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6480.3989257813, 49.628967285156, 1107.9337158203)
	end)
	tab3:Button("Stone Arena",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9529.345703125, 37.819095611572, -3857.7934570313)
	end)
	tab3:Button("Desert Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.4660644531, 12.909970283508, 2000.4206542969)
	end)
	tab3:Button("Fish Land", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2868.650390625, 40.266338348389, 9136.1875)
	end)
	tab3:Button("Soilder Town", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2033.8972167969, 39.360450744629, 206.95614624023)
	end)
	tab3:Button("Lobby Island", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2914.1423339844, 13.044984817505, 4247.37890625)
	end)
	tab3:Button("Chef Ship",  function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.2366027832, 49.805450439453, 86.103416442871)
	end)
	end
	if game.PlaceId == 6381829480 then
	tab3:Button("Dock",  function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3707.8854980469, 56.696941375732, 219.93495178223)
	end)
	tab3:Button("Viridans", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2243.5974121094, 58.433891296387, 2271.3725585938)
	end)
	tab3:Button("Skull Island", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(122.43953704834, 261.84866333008, 7684.0473632813)
	end)
	tab3:Button("Dead Tundra", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9244.3212890625, 106.59592437744, 1467.6929931641)
	end)
	tab3:Button("Torrefacio", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1730.4539794922, 56.374805450439, 1269.7200927734)
	end)
	tab3:Button("Skull Island", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1211.4458007813, 229.15634155273, 6133.8676757813)
	end)
	tab3:Button("Hibernus Land",  function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2464.9543457031, 134.92204284668, -951.77880859375)
	end)
	tab3:Button("Carcer", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3126.4921875, 213.45323181152, 1269.3514404297)
	end)
	tab3:Button("Skull Island2",  function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3453.7497558594, 51.437110900879, 10329.479492188)
	end)
	tab3:Button("Skull Islan3", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109.29490661621, 232.21307373047, 6164.7646484375)
	end)
	tab3:Button("Loaf Island", function()
	game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5510.9887695313, 266.36245727539, 8698.9052734375)
	end)		
	end
	
	local tab4 = StarServer:Channel("Players")
	
	tab4:Toggle("Kill Player", false, function(v)
	KillPlayer = v
	end)
	
	spawn(function()
	while wait() do
	if KillPlayer then
	pcall(function()
	equip5()
	if KillPlayer == false then
	game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
	end
	while KillPlayer do wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,7)
	autoskillheehee()
	wait(2)
	attack5()
	game.Players:FindFirstChild(SelectedKillPlayer).Character.HumanoidRootPart.Size = Vector3.new(5,5,5)
	game:GetService'VirtualUser':CaptureController()
	game:GetService'VirtualUser':B1Down(Vector2.new(1280, 672))
	end
	end)
	end
	end
	end)
	
	tab4:Toggle("Auto Farm Bounty", false, function(v)
	_G.Bounty = v
	end)
	
	spawn(function()
	while wait() do
	pcall(function()
	if _G.Bounty then
	eiei = game.Players.LocalPlayer
	for i, v in pairs(game.Players:GetChildren()) do
	if v.Name ~= eiei.Name then
	repeat wait()
	   NameRandom = v.Name
	   equip5()
	   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
	   autoskillheehee()
	   wait()
	   v.Character.HumanoidRootPart.Size = Vector3.new(5,5,5)
	   game:GetService'VirtualUser':CaptureController()
	   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	until setting["Bounty"] == false or _G.Change1 == true or not v.Parent or v.Character.Humanoid.Health == 0 or not v.Character
	v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
	_G.Change1 = false
	end
	end
	end
	end)
	end
	end)
	
	spawn(function()
	game:GetService('RunService').Stepped:connect(function()
	if _G.Bounty == true then
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
	end)
	end)
	
	spawn(function ()
	while wait(6) do
	pcall(function()
	if _G.Bounty then
	for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
	if v.Name == NameRandom and v.Humanoid.Health == v.Humanoid.MaxHealth then
	_G.Change1 = true
	end
	end
	end
	end)	
	end
	end)
	
	tab4:Line()
	
	function attack5()
	game:GetService('VirtualUser'):CaptureController()
	game:GetService('VirtualUser'):Button1Down(Vector2.new(9999, 9999))
	end
	
	local toolses = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
	table.insert(toolses,v.Name)
	end
	end
	
	local dropdown1 = tab4:Dropdown("Select Weapon", toolses, function(v)
	_G.SelectWeapon5 = v
	end)
	
	tab4:Button("Refresh Weapon", function()
	dropdown1:Clear()
	toolses = {}
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v:IsA("Tool") then
	dropdown1:Add(v.Name)
	end
	end
	end)
	
	function equip5()
	pcall(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	if v.Name == _G.SelectWeapon5 then
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
	end
	end
	end)
	end
	
	game:GetService("RunService").Heartbeat:Connect(
	function()
	if KillPlayer then
	game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
	end
	end
	)
	
	function isnil(thing)
	return (thing == nil)
	end
	local function round(n)
	return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChaMonster()
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
	name.TextColor3 = Color3.new(255,0,0)
	else
	name.TextColor3 = Color3.new(0,0,255)
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
	
	tab4:Toggle("ESP Players",false, function(v)
	ESPPlayer = v
	while ESPPlayer do wait()
	UpdatePlayerChaMonster()
	end
	end)
	
	PlayerName = {}
	for i,v in pairs(game.Players:GetChildren()) do  
	table.insert(PlayerName ,v.Name)
	end
	
	SelectedKillPlayer = ""
	tab4:Dropdown("Select Players", PlayerName, function(plys)
	SelectedKillPlayer = plys
	SelectedPly:Refresh("Selected Player : "..SelectedKillPlayer)
	end)
	
	tab4:Toggle("Spectate Player", false, function(v)
	Sp = v
	local plr1 = game.Players.LocalPlayer.Character.Humanoid
	local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
	repeat wait(.1)
	game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
	until Sp == false 
	game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end)
	
	tab4:Button("Refresh Players",function()
	PlayerName = {}
	rdropdwonddd:Clear()
	for i,v in pairs(game.Players:GetChildren()) do  
	rdropdwonddd:Add(v.Name)
	end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
	if KillPlayer then
	game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
	end
	end
	)
	
	tab4:Button("Teleport To Players", function()
	local plr1 = game.Players.LocalPlayer.Character
	local plr2 = game.Players:FindFirstChild(SelectedKillPlayer)
	plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame
	end)
	
	local tab5 = StarServer:Channel("Misc")
	
	tab5:Toggle("Bring All Fruits",  false, function(v)
	TPF = v
	while wait() do
	if TPF then
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	if v:IsA ("Tool") then
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
	end
	end
	end
	end
	end)
	
	tab5:Toggle("No Clip", false, function(v)
	_G.Noclip = v
	local RunService = game:GetService("RunService")
	
	while RunService.RenderStepped:wait() do
	if _G.Noclip then
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
	end
	end)
	
	tab5:Toggle("INF Geppo", false, function(value)
	if value == true then
	game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 1000000000000000000
	elseif value == false then
	game.Players.LocalPlayer.Backpack.GeppoNew.cds.Value = 6
	end
	end)
	
	tab5:Toggle("Ctrl + Click TP", false, function(v)
	CTRL = v
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
	
	Fly = false  
	function activatefly()
	local mouse=game.Players.LocalPlayer:GetMouse''
	localplayer=game.Players.LocalPlayer
	game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
	local speedSET=25
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
	local pos = Instance.new("BodyPosition",torso)
	local gyro = Instance.new("BodyGyro",torso)
	pos.Name="EPIXPOS"
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.position = torso.Position
	gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	gyro.cframe = torso.CFrame
	repeat
	wait()
	localplayer.Character.Humanoid.PlatformStand=true
	local new=gyro.cframe - gyro.cframe.p + pos.position
	if not keys.w and not keys.s and not keys.a and not keys.d then
	speed=1
	end
	if keys.w then
	new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
	speed=speed+speedSET
	end
	if keys.s then
	new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
	speed=speed+speedSET
	end
	if keys.d then
	new = new * CFrame.new(speed,0,0)
	speed=speed+speedSET
	end
	if keys.a then
	new = new * CFrame.new(-speed,0,0)
	speed=speed+speedSET
	end
	if speed>speedSET then
	speed=speedSET
	end
	pos.position=new.p
	if keys.w then
	gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
	elseif keys.s then
	gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
	else
	gyro.cframe = workspace.CurrentCamera.CoordinateFrame
	end
	until not Fly
	if gyro then 
	gyro:Destroy() 
	end
	if pos then 
	pos:Destroy() 
	end
	flying=false
	localplayer.Character.Humanoid.PlatformStand=false
	speed=0
	end
	e1=mouse.KeyDown:connect(function(key)
	if not torso or not torso.Parent then 
	flying=false e1:disconnect() e2:disconnect() return 
	end
	if key=="w" then
	keys.w=true
	elseif key=="s" then
	keys.s=true
	elseif key=="a" then
	keys.a=true
	elseif key=="d" then
	keys.d=true
	end
	end)
	e2=mouse.KeyUp:connect(function(key)
	if key=="w" then
	keys.w=false
	elseif key=="s" then
	keys.s=false
	elseif key=="a" then
	keys.a=false
	elseif key=="d" then
	keys.d=false
	end
	end)
	start()
	end
	
	tab5:Toggle("Fly", false, function(v)
	Fly = v
	activatefly()
	end)
	
	tab5:Slider("Walkspeed", 0, 100,16,function(v)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)
	
	tab5:Slider("Jumppower", 0, 100,50,function(v)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end) 
	
	tab5:Toggle("Invisible", false, function(v)
	_G.Invisible = v
	end)
	
	spawn(function()
	while wait(1) do
	if _G.Invisible then
	pcall(function()
	game.Players.LocalPlayer.Character.LowerTorso:Destroy()
	end)
	end
	end
	end)
	
	tab5:Toggle("No Water Damage", false, function(v)
	_G.a = v
	while _G.a  do
	wait(2)
	local a = nil
	a = hookfunction(getrawmetatable(game).__namecall,newcclosure(function(self,...)
	local args = {...}
	if self.Name == "RemoteEvent" and args[1] == "in" then
	return nil
	end
	return a(self,...)
	end))
	end
	end)
	
	
	tab5:Line()
	
	tab5:Button("No Geppo Cooldown", function()
	local a;
	
	a = hookfunc(getrenv().wait, function(x)
	if tostring(getfenv(2).script) == "GeppoNew" then
	return game:GetService("RunService").RenderStepped:wait()
	end
	return a(x)
	end)
	end)
	
	tab5:Button("No Dodge Cooldown", function()
	local a;
	
	a = hookfunc(getrenv().wait, function(x)
	if tostring(getfenv(2).script) == "Dash" then
	return game:GetService("RunService").RenderStepped:wait()
	end
	return a(x)
	end)
	end)
	
	tab5:Button("FPS Boost" ,function()
	local decalsyeeted = true 
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
	
	local tab6 = StarServer:Channel("Setting")
	
	tab6:Colorpicker("ESP Color", Color3.fromRGB(255,0,0), function(t)
	game:GetService("CoreGui").FluxLib.MainFrame.LeftFrame.Title.TextColor3 = t
	game:GetService("CoreGui").FluxLib.MainFrame.LeftFrame.BottomText.TextColor3 = t
	end)
	
	tab6:Line()
	
	tab6:Button("Teleport To Lower Server", function()
	local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if not _G.FailedServerID then _G.FailedServerID = {} end
	
	local function serversearch()
	data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
	for _, v in pairs(data_table.data) do
	pcall(function()
	if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
	   maxplayers = v.playing
	   goodserver = v.id
	end
	end)
	end
	end
	
	function getservers()
	pcall(serversearch)
	for i, v in pairs(data_table) do
	if i == "nextPageCursor" then
	if gamelink:find"&cursor=" then
	   local a = gamelink:find"&cursor="
	   local b = gamelink:sub(a)
	   gamelink = gamelink:gsub(b, "")
	end
	gamelink = gamelink .. "&cursor=" .. v
	pcall(getservers)
	end
	end
	end
	
	pcall(getservers)
	wait()
	if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
	end
	table.insert(_G.FailedServerID, goodserver)
	game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
	end)
	elseif game.placeId == 537413528 then --BAB
	
	--537413528 -- BAB
	-- BAB
	if game:GetService("CoreGui"):FindFirstChild("SOME X GUI") then
	game:GetService("CoreGui"):FindFirstChild("SOME X GUI"):Destroy()
	end
	local SomeLib = {}
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local HttpService = game:GetService("HttpService")
	local pfp
	local user
	local tag
	local userinfo = {}
	
	
	_G.Key = ""
	_G.Discord = ""
	
	if game.CoreGui:FindFirstChild(_G.Key .."," .. _G.Discord) then
	game.CoreGui:FindFirstChild(_G.Key .."," .. _G.Discord):Destroy()
	end
	
	pcall(function()
	userinfo = HttpService:JSONDecode(readfile("discordlibinfo.txt"))
	end)
	
	pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
	user = userinfo["user"] or game.Players.LocalPlayer.DisplayName
	tag = userinfo["tag"] or tostring(math.random(0001, 9999))
	
	local function SaveInfo()
	userinfo["pfp"] = pfp
	userinfo["user"] = user
	userinfo["tag"] = tag
	writefile("discordlibinfo.txt", HttpService:JSONEncode(userinfo))
	end
	
	local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	
	local function Update(input)
	local Delta = input.Position - DragStart
	local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
	local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
	Tween:Play()
	end
	
	topbarobject.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	Dragging = true
	DragStart = input.Position
	StartPosition = object.Position
	
	input.Changed:Connect(function()
	if input.UserInputState == Enum.UserInputState.End then
		Dragging = false
	end
	end)
	end
	end)
	
	topbarobject.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	DragInput = input
	end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
	if input == DragInput and Dragging then
	Update(input)
	end
	end)
	end
	
	
	
	local function RippleEffect(object)
	spawn(function()
	local Ripple = Instance.new("ImageLabel")
	
	Ripple.Name = "Ripple"
	Ripple.Parent = object
	Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ripple.BackgroundTransparency = 1.000
	Ripple.ZIndex = 8
	Ripple.Image = "rbxassetid://2708891598"
	Ripple.ImageTransparency = 0.800
	Ripple.ScaleType = Enum.ScaleType.Fit
	
	Ripple.Position = UDim2.new((Mouse.X) / object.AbsoluteSize.Y, 0, (Mouse.Y) / object.AbsoluteSize.X, 0)
	TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out),{Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(3, 0, 3, 0)}):Play()
	
	wait(0.5)
	TweenService:Create(Ripple, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
	
	wait(1)
	Ripple:Destroy()
	end)
	end
	wait(1)
	
	local Discord = Instance.new("ScreenGui")
	Discord.Name = "SOME X GUI"
	Discord.Parent = game:GetService("CoreGui")
	Discord.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	function SomeLib:Window(text,mainclr,cls)
	local PresetColor = mainclr or Color3.fromRGB(0,255,255) or _G.Color
	local CloseBind = cls or Enum.KeyCode.RightControl or _G.Toggle
	local currentservertoggled = ""
	local minimized = false
	local fs = false
	local settingsopened = false
	local MainFrame = Instance.new("Frame")
	local MainFrameGradient = Instance.new("UIGradient")
	local TopFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local CloseIcon = Instance.new("ImageLabel")
	local MinimizeBtn = Instance.new("TextButton")
	local MinimizeIcon = Instance.new("ImageLabel")
	local ServersHolder = Instance.new("Folder")
	local Userpad = Instance.new("Frame")
	local UserpadCorner = Instance.new("UICorner")
	local UserIcon = Instance.new("Frame")
	local UserIconCorner = Instance.new("UICorner")
	local UserImage = Instance.new("ImageLabel")
	local UserImageCorner = Instance.new("UICorner")
	local UserCircleImage = Instance.new("ImageLabel")
	local UserName = Instance.new("TextLabel")
	local UserTag = Instance.new("TextLabel")
	local ServersHoldFrame = Instance.new("Frame")
	local ServersHold = Instance.new("ScrollingFrame")
	local ServersHoldLayout = Instance.new("UIListLayout")
	local ServersHoldPadding = Instance.new("UIPadding")
	local TopFrameHolder = Instance.new("Frame")
	local GlowFrame = Instance.new("Frame")
	local Glow = Instance.new("ImageLabel")
	local GlowFrameCorner = Instance.new("UICorner")
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Discord
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
	MainFrame.BackgroundTransparency = 1
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0, 618, 0, 407)
	
	local uitoggled = false
	UserInputService.InputBegan:Connect(function(io, p)
	pcall(function()
	if io.KeyCode == CloseBind then
	if uitoggled == false then
		MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
		wait(.3)
		Discord.Enabled = false
		uitoggled = true
	else
		Discord.Enabled = true
		MainFrame:TweenSize(UDim2.new(0, 618, 0, 407), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
		uitoggled = false
	end
	end
	end)
	end)
	
	GlowFrame.Name = "GlowFrame"
	GlowFrame.Parent = MainFrame
	GlowFrame.BackgroundTransparency = 1
	GlowFrame.Position = UDim2.new(0, 0.5, 0, 17.5)
	GlowFrame.Size = UDim2.new(0.625, 0,0.763, 0)
	GlowFrame.BackgroundColor3 = PresetColor
	
	GlowFrameCorner.CornerRadius = UDim.new(0, 7)
	GlowFrameCorner.Name = "GlowFrameCorner"
	GlowFrameCorner.Parent = GlowFrame
	
	Glow.Name = "Glow"
	Glow.Parent = GlowFrame
	Glow.BackgroundColor3 = PresetColor
	Glow.BackgroundTransparency = 1
	Glow.BorderSizePixel = 0
	Glow.Size = UDim2.new(0.625, 0,0.763, 0)
	Glow.ZIndex = 2
	Glow.Image = "rbxassetid://5028857084"
	Glow.ImageColor3 = PresetColor
	Glow.ScaleType = Enum.ScaleType.Slice
	
	TopFrame.Name = "TopFrame"
	TopFrame.Parent = MainFrame
	TopFrame.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
	TopFrame.BackgroundTransparency = 1.000
	TopFrame.BorderSizePixel = 0
	TopFrame.Position = UDim2.new(-0.000658480625, 0, 0, 0)
	TopFrame.Size = UDim2.new(0, 681, 0, 65)
	
	TopFrameHolder.Name = "TopFrameHolder"
	TopFrameHolder.Parent = TopFrame
	TopFrameHolder.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
	TopFrameHolder.BackgroundTransparency = 1.000
	TopFrameHolder.BorderSizePixel = 0
	TopFrameHolder.Position = UDim2.new(-0.000658480625, 0, 0, 0)
	TopFrameHolder.Size = UDim2.new(0, 681, 0, 22)
	
	Title.Name = "Title"
	Title.Parent = TopFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0102790017, 0, 0, 0)
	Title.Size = UDim2.new(0, 192, 0, 23)
	Title.Font = Enum.Font.Gotham
	Title.Text = text
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 13.000
	Title.TextXAlignment = Enum.TextXAlignment.Left
	
	ServersHolder.Name = "ServersHolder"
	ServersHolder.Parent = TopFrameHolder
	
	Userpad.Name = "Userpad"
	Userpad.Parent = TopFrameHolder
	Userpad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Userpad.BackgroundTransparency = 1
	Userpad.BorderSizePixel = 0
	Userpad.Position = UDim2.new(0.0010243297, 0, 15.8807148, 0)
	Userpad.Size = UDim2.new(0, 179, 0, 43)
	
	UserIcon.Name = "UserIcon"
	UserIcon.Parent = Userpad
	UserIcon.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	UserIcon.BackgroundTransparency = 1
	UserIcon.BorderSizePixel = 0
	UserIcon.Position = UDim2.new(0.0340000018, 0, 0.123999998, 0)
	UserIcon.Size = UDim2.new(0, 32, 0, 32)
	
	UserImage.Name = "UserImage"
	UserImage.Parent = UserIcon
	UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserImage.BackgroundTransparency = 1.000
	UserImage.Size = UDim2.new(0, 32, 0, 32)
	UserImage.Image = pfp
	
	UserCircleImage.Name = "UserImage"
	UserCircleImage.Parent = UserImage
	UserCircleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserCircleImage.BackgroundTransparency = 1.000
	UserCircleImage.ImageColor3 = Color3.fromRGB(23, 23, 23)
	UserCircleImage.Size = UDim2.new(0, 32, 0, 32)
	UserCircleImage.Image = "rbxassetid://4031889928"
	UserCircleImage.ImageColor3 = Color3.fromRGB(27, 27, 27)
	
	UserName.Name = "UserName"
	UserName.Parent = Userpad
	UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserName.BackgroundTransparency = 1.000
	UserName.BorderSizePixel = 0
	UserName.Position = UDim2.new(0.230000004, 0, 0.115999997, 0)
	UserName.Size = UDim2.new(0, 98, 0, 17)
	UserName.Font = Enum.Font.GothamSemibold
	UserName.TextColor3 = PresetColor
	UserName.TextSize = 13.000
	UserName.TextXAlignment = Enum.TextXAlignment.Left
	UserName.ClipsDescendants = true
	
	UserTag.Name = "UserTag"
	UserTag.Parent = Userpad
	UserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserTag.BackgroundTransparency = 1.000
	UserTag.BorderSizePixel = 0
	UserTag.Position = UDim2.new(0.230000004, 0, 0.455000013, 0)
	UserTag.Size = UDim2.new(0, 95, 0, 17)
	UserTag.Font = Enum.Font.Gotham
	UserTag.TextColor3 = PresetColor
	UserTag.TextSize = 13.000
	UserTag.TextTransparency = 0.300
	UserTag.TextXAlignment = Enum.TextXAlignment.Left
	
	UserName.Text = user
	UserTag.Text = "#" .. tag
	
	ServersHoldFrame.Name = "ServersHoldFrame"
	ServersHoldFrame.Parent = MainFrame
	ServersHoldFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServersHoldFrame.BackgroundTransparency = 1.000
	ServersHoldFrame.BorderColor3 = PresetColor
	ServersHoldFrame.Size = UDim2.new(0, 71, 0, 396)
	
	ServersHold.Name = "ServersHold"
	ServersHold.Parent = ServersHoldFrame
	ServersHold.Active = true
	ServersHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServersHold.BackgroundTransparency = 1.000
	ServersHold.BorderSizePixel = 0
	ServersHold.Position = UDim2.new(-0.000359333731, 0, 0.0580808073, 0)
	ServersHold.Size = UDim2.new(0, 71, 0, 373)
	ServersHold.ScrollBarThickness = 1
	ServersHold.ScrollBarImageTransparency = 1
	ServersHold.CanvasSize = UDim2.new(0, 0, 0, 0)
	
	ServersHoldLayout.Name = "ServersHoldLayout"
	ServersHoldLayout.Parent = ServersHold
	ServersHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ServersHoldLayout.Padding = UDim.new(0, 7)
	
	ServersHoldPadding.Name = "ServersHoldPadding"
	ServersHoldPadding.Parent = ServersHold
	
	function SomeLib:Notification(titletext, desctext, btntext)
	local NotificationHolderMain = Instance.new("Frame")
	local NotificationHolderMainCorner = Instance.new("UICorner")
	local Notification = Instance.new("Frame")
	local NotificationCorner = Instance.new("UICorner")
	local UnderBar = Instance.new("Frame")
	local UnderBarCorner = Instance.new("UICorner")
	local UnderBarFrame = Instance.new("Frame")
	local Text1 = Instance.new("TextLabel")
	local Text2 = Instance.new("TextLabel")
	local AlrightBtn = Instance.new("TextButton")
	local AlrightCorner = Instance.new("UICorner")
	
	NotificationHolderMain.Name = "NotificationHolderMain"
	NotificationHolderMain.Parent = MainFrame
	NotificationHolderMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	NotificationHolderMain.BackgroundTransparency = 1
	NotificationHolderMain.BorderSizePixel = 0
	NotificationHolderMain.Position = UDim2.new(0, -1, 0.0460000017, 0)
	NotificationHolderMain.Size = UDim2.new(0, 676, 0, 374)
	TweenService:Create(
	NotificationHolderMain,
	TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0.1}
	):Play()
	
	NotificationHolderMainCorner.CornerRadius = UDim.new(0, 7)
	NotificationHolderMainCorner.Name = "NotificationHolderMainCorner"
	NotificationHolderMainCorner.Parent = NotificationHolderMain
	
	Notification.Name = "Notification"
	Notification.Parent = NotificationHolderMain
	Notification.AnchorPoint = Vector2.new(0.5, 0.5)
	Notification.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	Notification.ClipsDescendants = true
	Notification.Position = UDim2.new(0.524819076, 0, 0.469270051, 0)
	Notification.Size = UDim2.new(0, -43, 0, 0)
	Notification.BackgroundTransparency = 1
	
	Notification:TweenSize(UDim2.new(0, 346, 0, 176), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .2, true)
	
	TweenService:Create(
	Notification,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 0}
	):Play()
	
	NotificationCorner.CornerRadius = UDim.new(0, 5)
	NotificationCorner.Name = "NotificationCorner"
	NotificationCorner.Parent = Notification
	
	UnderBar.Name = "UnderBar"
	UnderBar.Parent = Notification
	UnderBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
	UnderBar.Size = UDim2.new(0, 346, 0, 10)
	
	UnderBarCorner.CornerRadius = UDim.new(0, 5)
	UnderBarCorner.Name = "UnderBarCorner"
	UnderBarCorner.Parent = UnderBar
	
	UnderBarFrame.Name = "UnderBarFrame"
	UnderBarFrame.Parent = UnderBar
	UnderBarFrame.BackgroundColor3 = Color3.fromRGB(14,14,14)
	UnderBarFrame.BorderSizePixel = 0
	UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -3.76068449, 0)
	UnderBarFrame.Size = UDim2.new(0, 346, 0, 40)
	
	Text1.Name = "Text1"
	Text1.Parent = Notification
	Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text1.BackgroundTransparency = 1.000
	Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
	Text1.Size = UDim2.new(0, 346, 0, 68)
	Text1.Font = Enum.Font.GothamSemibold
	Text1.Text = titletext
	Text1.TextColor3 = PresetColor
	Text1.TextSize = 20.000
	
	Text2.Name = "Text2"
	Text2.Parent = Notification
	Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text2.BackgroundTransparency = 1.000
	Text2.Position = UDim2.new(0.106342293, 0, 0.317724228, 0)
	Text2.Size = UDim2.new(0, 272, 0, 63)
	Text2.Font = Enum.Font.Gotham
	Text2.Text = desctext
	Text2.TextColor3 = PresetColor
	Text2.TextSize = 14.000
	Text2.TextWrapped = true
	
	AlrightBtn.Name = "AlrightBtn"
	AlrightBtn.Parent = Notification
	AlrightBtn.BackgroundColor3 = PresetColor
	AlrightBtn.Position = UDim2.new(0.0332369953, 0, 0.789141417, 0)
	AlrightBtn.Size = UDim2.new(0, 322, 0, 27)
	AlrightBtn.Font = Enum.Font.Gotham
	AlrightBtn.Text = btntext
	AlrightBtn.TextColor3 = Color3.fromRGB(23, 23, 23)
	AlrightBtn.TextSize = 13.000
	AlrightBtn.AutoButtonColor = false
	
	AlrightCorner.CornerRadius = UDim.new(0, 4)
	AlrightCorner.Name = "AlrightCorner"
	AlrightCorner.Parent = AlrightBtn
	
	AlrightBtn.MouseButton1Click:Connect(function()
	TweenService:Create(
	NotificationHolderMain,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	Notification:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
	TweenService:Create(
	Notification,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundTransparency = 1}
	):Play()
	wait()
	NotificationHolderMain:Destroy()
	end)
	
	AlrightBtn.MouseEnter:Connect(function()
	TweenService:Create(
	AlrightBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(23, 23, 23), TextColor3 = PresetColor}
	):Play()
	end)
	
	AlrightBtn.MouseLeave:Connect(function()
	TweenService:Create(
	AlrightBtn,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = PresetColor, TextColor3 = Color3.fromRGB(23, 23, 23)}
	):Play()
	end)
	end
	
	MakeDraggable(TopFrame, MainFrame)
	ServersHoldPadding.PaddingLeft = UDim.new(0, 14)
	local ServerHold = {}
	function ServerHold:Server(text, img)
	local fc = false
	local currentchanneltoggled = ""
	local Server = Instance.new("TextButton")
	local ServerBtnCorner = Instance.new("UICorner")
	local ServerIco = Instance.new("ImageLabel")
	local ServerWhiteFrame = Instance.new("Frame")
	local ServerWhiteFrameCorner = Instance.new("UICorner")
	
	Server.Name = text .. "Server"
	Server.Parent = ServersHold
	Server.BackgroundColor3 = Color3.fromRGB(20,20,20)
	Server.Position = UDim2.new(0.125, 0, 0, 0)
	Server.Size = UDim2.new(0, 47, 0, 47)
	Server.AutoButtonColor = false
	Server.Font = Enum.Font.Gotham
	Server.Text = ""
	Server.BackgroundTransparency = 1
	Server.TextTransparency = 1
	Server.TextColor3 = Color3.fromRGB(233, 25, 42)
	Server.TextSize = 18.000
	
	ServerBtnCorner.CornerRadius = UDim.new(1, 0)
	ServerBtnCorner.Name = "ServerCorner"
	ServerBtnCorner.Parent = Server
	
	ServerWhiteFrame.Name = "ServerWhiteFrame"
	ServerWhiteFrame.Parent = Server
	ServerWhiteFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ServerWhiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerWhiteFrame.BackgroundTransparency = 1
	ServerWhiteFrame.Position = UDim2.new(-0.347378343, 0, 0.502659559, 0)
	ServerWhiteFrame.Size = UDim2.new(0, 11, 0, 10)
	
	ServerWhiteFrameCorner.CornerRadius = UDim.new(1, 0)
	ServerWhiteFrameCorner.Name = "ServerWhiteFrameCorner"
	ServerWhiteFrameCorner.Parent = ServerWhiteFrame
	ServersHold.CanvasSize = UDim2.new(0, 0, 0, ServersHoldLayout.AbsoluteContentSize.Y)
	
	local ServerFrame = Instance.new("Frame")
	local ServerTitleFrame = Instance.new("Frame")
	local ServerTitle = Instance.new("TextLabel")
	local GlowFrame = Instance.new("Frame")
	local Glow = Instance.new("ImageLabel")
	local ServerContentFrame = Instance.new("Frame")
	local ServerCorner = Instance.new("UICorner")
	local ChannelTitleFrame = Instance.new("Frame")
	local ChannelTitleFrameCorner = Instance.new("UICorner")
	local Hashtag = Instance.new("TextLabel")
	local ChannelTitle = Instance.new("TextLabel")
	local ChannelContentFrame = Instance.new("Frame")
	local ChannelContentFrameCorner = Instance.new("UICorner")
	local GlowChannel = Instance.new("ImageLabel")
	local ServerChannelHolder = Instance.new("ScrollingFrame")
	local ServerChannelHolderLayout = Instance.new("UIListLayout")
	local ServerChannelHolderPadding = Instance.new("UIPadding")
	local ServerTitleButtom = Instance.new("TextLabel")
	local TimeGlobal = Instance.new("TextLabel")
	local GameImage = Instance.new("ImageLabel")
	
	ServerFrame.Name = "ServerFrame"
	ServerFrame.Parent = ServersHolder
	ServerFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	ServerFrame.BorderSizePixel = 0
	ServerFrame.ClipsDescendants = true
	ServerFrame.Position = UDim2.new(0.005356875, 0, 0.32262593, 13)
	ServerFrame.Size = UDim2.new(0, 609, 0, 373)
	ServerFrame.Visible = false
	
	ServerTitleFrame.Name = "ServerTitleFrame"
	ServerTitleFrame.Parent = ServerFrame
	ServerTitleFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	ServerTitleFrame.BackgroundTransparency = 1.000
	ServerTitleFrame.BorderSizePixel = 0
	ServerTitleFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
	ServerTitleFrame.Size = UDim2.new(0, 180, 0, 40)
	
	ServerTitle.Name = "ServerTitle"
	ServerTitle.Parent = ServerTitleFrame
	ServerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerTitle.BackgroundTransparency = 1.000
	ServerTitle.BorderSizePixel = 0
	ServerTitle.Position = UDim2.new(0.0851359761, 0, 0, 0)
	ServerTitle.Size = UDim2.new(0, 97, 0, 39)
	ServerTitle.Font = Enum.Font.GothamSemibold
	ServerTitle.Text = text
	ServerTitle.TextColor3 = PresetColor
	ServerTitle.TextSize = 15.000
	ServerTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	GlowFrame.Name = "GlowFrame"
	GlowFrame.Parent = ServerFrame
	GlowFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	GlowFrame.BackgroundTransparency = 1.000
	GlowFrame.BorderSizePixel = 0
	GlowFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
	GlowFrame.Size = UDim2.new(0, 609, 0, 40)
	
	Glow.Name = "Glow"
	Glow.Parent = GlowFrame
	Glow.BackgroundColor3 = PresetColor
	Glow.BackgroundTransparency = 1.000
	Glow.BorderSizePixel = 0
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.ZIndex = 0
	Glow.Image = "rbxassetid://4996891970"
	Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(20, 20, 280, 280)
	
	ServerContentFrame.Name = "ServerContentFrame"
	ServerContentFrame.Parent = ServerFrame
	ServerContentFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
	ServerContentFrame.BackgroundTransparency = 1.000
	ServerContentFrame.BorderSizePixel = 0
	ServerContentFrame.Position = UDim2.new(-0.0010054264, 0, 0.106338218, 0)
	ServerContentFrame.Size = UDim2.new(0, 180, 0, 333)
	
	ServerCorner.CornerRadius = UDim.new(0, 7)
	ServerCorner.Name = "ServerCorner"
	ServerCorner.Parent = ServerFrame
	
	ChannelTitleFrame.Name = "ChannelTitleFrame"
	ChannelTitleFrame.Parent = ServerFrame
	ChannelTitleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	ChannelTitleFrame.BorderSizePixel = 0
	ChannelTitleFrame.Position = UDim2.new(0.294561088, 0, -0.000900391256, 0)
	ChannelTitleFrame.Size = UDim2.new(0, 429, 0, 40)
	
	ChannelTitleFrameCorner.CornerRadius = UDim.new(0, 7)
	ChannelTitleFrameCorner.Name = "ChannelTitleFrameCorner"
	ChannelTitleFrameCorner.Parent = ChannelTitleFrame
	
	TimeGlobal.Name = "TimeGlobal"
	TimeGlobal.Parent = ChannelTitleFrame
	TimeGlobal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TimeGlobal.Position = UDim2.new(0.7062470865, 0, 0, 0)
	TimeGlobal.Size = UDim2.new(0, 95, 0, 39)
	TimeGlobal.BackgroundTransparency = 1
	TimeGlobal.ZIndex = 3
	TimeGlobal.Font = Enum.Font.GothamSemibold
	TimeGlobal.Text = "TIME | N/A"
	TimeGlobal.TextColor3 = PresetColor
	TimeGlobal.TextSize = 15.000
	TimeGlobal.TextXAlignment = Enum.TextXAlignment.Left
	
	spawn(function()
	while wait() do
	TimeGlobal.Text = "TIME | "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
	end
	end)
	
	ChannelTitle.Name = "ChannelTitle"
	ChannelTitle.Parent = ChannelTitleFrame
	ChannelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelTitle.BackgroundTransparency = 1.000
	ChannelTitle.BorderSizePixel = 0
	ChannelTitle.Position = UDim2.new(0.0662470865, 0, 0, 0)
	ChannelTitle.Size = UDim2.new(0, 95, 0, 39)
	ChannelTitle.Font = Enum.Font.GothamSemibold
	ChannelTitle.Text = ""
	ChannelTitle.TextColor3 = PresetColor
	ChannelTitle.TextSize = 15.000
	ChannelTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ChannelContentFrame.Name = "ChannelContentFrame"
	ChannelContentFrame.Parent = ServerFrame
	ChannelContentFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	ChannelContentFrame.BorderSizePixel = 0
	ChannelContentFrame.ClipsDescendants = true
	ChannelContentFrame.Position = UDim2.new(0.294561088, 0, 0.106338218, 0)
	ChannelContentFrame.Size = UDim2.new(0, 429, 0, 333)
	
	ChannelContentFrameCorner.CornerRadius = UDim.new(0, 7)
	ChannelContentFrameCorner.Name = "ChannelContentFrameCorner"
	ChannelContentFrameCorner.Parent = ChannelContentFrame
	
	GlowChannel.Name = "GlowChannel"
	GlowChannel.Parent = ChannelContentFrame
	GlowChannel.BackgroundColor3 = PresetColor
	GlowChannel.BackgroundTransparency = 1.000
	GlowChannel.BorderSizePixel = 0
	GlowChannel.Position = UDim2.new(0, -33, 0, -91)
	GlowChannel.Size = UDim2.new(1.06396091, 30, 0.228228226, 30)
	GlowChannel.ZIndex = 0
	GlowChannel.Image = "rbxassetid://4996891970"
	GlowChannel.ImageColor3 = Color3.fromRGB(15, 15, 15)
	GlowChannel.ScaleType = Enum.ScaleType.Slice
	GlowChannel.SliceCenter = Rect.new(20, 20, 280, 280)
	
	ServerChannelHolder.Name = "ServerChannelHolder"
	ServerChannelHolder.Parent = ServerContentFrame
	ServerChannelHolder.Active = true
	ServerChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ServerChannelHolder.BackgroundTransparency = 1.000
	ServerChannelHolder.BorderSizePixel = 0
	ServerChannelHolder.Position = UDim2.new(0.00535549596, 0, 0.0241984241, 0)
	ServerChannelHolder.Selectable = false
	ServerChannelHolder.Size = UDim2.new(0, 179, 0, 278)
	ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
	ServerChannelHolder.ScrollBarThickness = 4
	ServerChannelHolder.ScrollBarImageColor3 = PresetColor
	ServerChannelHolder.ScrollBarImageTransparency = 1
	
	ServerChannelHolderLayout.Name = "ServerChannelHolderLayout"
	ServerChannelHolderLayout.Parent = ServerChannelHolder
	ServerChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ServerChannelHolderLayout.Padding = UDim.new(0, 4)
	
	ServerChannelHolderPadding.Name = "ServerChannelHolderPadding"
	ServerChannelHolderPadding.Parent = ServerChannelHolder
	ServerChannelHolderPadding.PaddingLeft = UDim.new(0, 9)
	
	ServerChannelHolder.MouseEnter:Connect(function()
	ServerChannelHolder.ScrollBarImageTransparency = 0
	end)
	
	ServerChannelHolder.MouseLeave:Connect(function()
	ServerChannelHolder.ScrollBarImageTransparency = 1
	end)
	
	Server.MouseEnter:Connect(function()
	if currentservertoggled ~= Server.Name then
	TweenService:Create(
		Server,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
	):Play()
	TweenService:Create(
		ServerBtnCorner,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{CornerRadius = UDim.new(0, 15)}
	):Play()
	ServerWhiteFrame:TweenSize(
		UDim2.new(0, 11, 0, 27),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		.3,
		true
	)
	end
	end)
	
	Server.MouseLeave:Connect(function()
	if currentservertoggled ~= Server.Name then
	TweenService:Create(
		Server,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{BackgroundColor3 = Color3.fromRGB(47, 49, 54)}
	):Play()
	TweenService:Create(
		ServerBtnCorner,
		TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{CornerRadius = UDim.new(1, 0)}
	):Play()
	ServerWhiteFrame:TweenSize(
		UDim2.new(0, 11, 0, 10),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		.3,
		true
	)
	end
	end)
	
	Server.MouseButton1Click:Connect(function()
	currentservertoggled = Server.Name
	for i, v in next, ServersHolder:GetChildren() do
	if v.Name == "ServerFrame" then
		v.Visible = false
	end
	ServerFrame.Visible = true
	end
	for i, v in next, ServersHold:GetChildren() do
	if v.ClassName == "TextButton" then
		TweenService:Create(
			v,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(47, 49, 54)}
		):Play()
		TweenService:Create(
			Server,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
		):Play()
		TweenService:Create(
			v.ServerCorner,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{CornerRadius = UDim.new(1, 0)}
		):Play()
		TweenService:Create(
			ServerBtnCorner,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{CornerRadius = UDim.new(0, 15)}
		):Play()
		v.ServerWhiteFrame:TweenSize(
			UDim2.new(0, 11, 0, 10),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			.3,
			true
		)
		ServerWhiteFrame:TweenSize(
			UDim2.new(0, 11, 0, 46),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quart,
			.3,
			true
		)
	end
	end
	end)
	
	if img == "" then
	Server.Text = string.sub(text, 1, 1)
	else
	ServerIco.Image = img
	end
	
	if fs == false then
	TweenService:Create(
	Server,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
	):Play()
	TweenService:Create(
	ServerBtnCorner,
	TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{CornerRadius = UDim.new(0, 15)}
	):Play()
	ServerWhiteFrame:TweenSize(
	UDim2.new(0, 11, 0, 46),
	Enum.EasingDirection.Out,
	Enum.EasingStyle.Quart,
	.3,
	true
	)
	ServerFrame.Visible = true
	Server.Name = text .. "Server"
	currentservertoggled = Server.Name
	fs = true
	end
	
	local ChannelHold = {}
	function ChannelHold:Channel(text,ico)
	local Icon = ico or ""
	local ChannelIcon = Instance.new("ImageLabel")
	local ChannelBtnOutline = Instance.new("Frame")
	local ChannelBtnOutlineCorner = Instance.new("UICorner")
	local ChannelBtn = Instance.new("TextButton")
	local ChannelBtnCorner = Instance.new("UICorner")
	local ChannelBtnHashtag = Instance.new("TextLabel")
	local ChannelBtnTitle = Instance.new("TextLabel")
	
	ChannelBtnOutline.Name = text.."ChannelBtn"
	ChannelBtnOutline.Parent = ServerChannelHolder
	ChannelBtnOutline.Position = UDim2.new(0.24118948, 0, 0.578947365, 0)
	ChannelBtnOutline.Size = UDim2.new(0, 162, 0, 32)
	ChannelBtnOutline.BackgroundColor3 = PresetColor
	
	ChannelBtnOutlineCorner.CornerRadius = UDim.new(0, 6)
	ChannelBtnOutlineCorner.Name = "ChannelBtnOutlineCorner"
	ChannelBtnOutlineCorner.Parent = ChannelBtnOutline
	
	ChannelBtn.Name = text .. "ChannelBtn"
	ChannelBtn.Parent = ChannelBtnOutline
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	ChannelBtn.BorderSizePixel = 0
	ChannelBtn.Position = UDim2.new(0.002761, 0, 0.02761, 0)
	ChannelBtn.Size = UDim2.new(0, 160, 0, 30)
	ChannelBtn.AutoButtonColor = false
	ChannelBtn.Font = Enum.Font.SourceSans
	ChannelBtn.Text = ""
	ChannelBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	ChannelBtn.TextSize = 14.000
	
	ChannelBtnCorner.CornerRadius = UDim.new(0, 6)
	ChannelBtnCorner.Name = "ChannelBtnCorner"
	ChannelBtnCorner.Parent = ChannelBtn
	
	ChannelIcon.Name = "TabIcon"
	ChannelIcon.Parent = ChannelBtn
	ChannelIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelIcon.BackgroundTransparency = 1.000
	ChannelIcon.Position = UDim2.new(0.0234146333, 0, 0.12, 0)
	ChannelIcon.Size = UDim2.new(0, 20, 0, 20)
	ChannelIcon.Image = Icon
	ChannelIcon.ImageTransparency = 0
	
	ChannelBtnTitle.Name = "ChannelBtnTitle"
	ChannelBtnTitle.Parent = ChannelBtn
	ChannelBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelBtnTitle.BackgroundTransparency = 1.000
	ChannelBtnTitle.BorderSizePixel = 0
	ChannelBtnTitle.Position = UDim2.new(0.163747092, 0, -0.166666672, 0)
	ChannelBtnTitle.Size = UDim2.new(0, 95, 0, 39)
	ChannelBtnTitle.Font = Enum.Font.Gotham
	ChannelBtnTitle.Text = text
	ChannelBtnTitle.TextColor3 = PresetColor
	ChannelBtnTitle.TextSize = 14.000
	ChannelBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
	ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ServerChannelHolderLayout.AbsoluteContentSize.Y)
	
	local ChannelHolder = Instance.new("ScrollingFrame")
	local ChannelHolderLayout = Instance.new("UIListLayout")
	
	ChannelHolder.Name = "ChannelHolder"
	ChannelHolder.Parent = ChannelContentFrame
	ChannelHolder.Active = true
	ChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChannelHolder.BackgroundTransparency = 1.000
	ChannelHolder.BorderSizePixel = 0
	ChannelHolder.Position = UDim2.new(0.0360843192, 0, 0.0241984241, 0)
	ChannelHolder.Size = UDim2.new(0, 412, 0, 314)
	ChannelHolder.ScrollBarThickness = 6
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
	ChannelHolder.ScrollBarImageTransparency = 0
	ChannelHolder.ScrollBarImageColor3 = PresetColor
	ChannelHolder.Visible = false
	ChannelHolder.ClipsDescendants = false
	
	ChannelHolderLayout.Name = "ChannelHolderLayout"
	ChannelHolderLayout.Parent = ChannelHolder
	ChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ChannelHolderLayout.Padding = UDim.new(0, 6)
	
	ChannelBtn.MouseEnter:Connect(function()
	if currentchanneltoggled ~= ChannelBtn.Name then
		ChannelBtn.BackgroundColor3 = PresetColor
		ChannelBtnTitle.TextColor3 = Color3.fromRGB(27, 27, 27)
	end
	end)
	
	ChannelBtn.MouseLeave:Connect(function()
	if currentchanneltoggled ~= ChannelBtn.Name then
		ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		ChannelBtnTitle.TextColor3 = PresetColor
	end
	end)
	
	ChannelBtn.MouseEnter:Connect(function()
	if currentchanneltoggled == ChannelBtn.Name then
		ChannelBtn.BackgroundColor3 = PresetColor
		ChannelBtnTitle.TextColor3 = Color3.fromRGB(27, 27, 27)
	end
	end)
	
	ChannelBtn.MouseLeave:Connect(function()
	if currentchanneltoggled == ChannelBtn.Name then
		ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		ChannelBtnTitle.TextColor3 = PresetColor
	end
	end)
	
	ChannelBtn.MouseButton1Click:Connect(function()
	for i, v in next, ChannelContentFrame:GetChildren() do
		if v.Name == "ChannelHolder" then
			v.Visible = false
		end
		ChannelHolder.Visible = true
	end
	for i, v in next, ServerChannelHolder:GetChildren() do
		if v.ClassName == "TextButton" then
			v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			v.ChannelBtnTitle.TextColor3 = PresetColor
		end
		ServerFrame.Visible = true
	end
	ChannelTitle.Text = text
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	ChannelBtnTitle.TextColor3 = PresetColor
	currentchanneltoggled = ChannelBtn.Name
	end)
	
	if fc == false then
	fc = true
	ChannelTitle.Text = text
	ChannelBtn.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	ChannelBtnTitle.TextColor3 = PresetColor
	currentchanneltoggled = ChannelBtn.Name
	ChannelHolder.Visible = true
	end
	
	local ChannelContent = {}
	function ChannelContent:Button(text, callback)
	local Button = Instance.new("TextButton")
	local ButtonCorner = Instance.new("UICorner")
	
	Button.Name = "Button"
	Button.Parent = ChannelHolder
	Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Button.Size = UDim2.new(0, 401, 0, 30)
	Button.AutoButtonColor = false
	Button.Font = Enum.Font.Gotham
	Button.TextColor3 = PresetColor
	Button.TextSize = 14.000
	Button.Text = text
	
	ButtonCorner.CornerRadius = UDim.new(0, 4)
	ButtonCorner.Name = "ButtonCorner"
	ButtonCorner.Parent = Button
	
	Button.MouseEnter:Connect(function()
		TweenService:Create(
			Button,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = PresetColor, TextColor3 = Color3.fromRGB(23, 23, 23)}
		):Play()
	end)
	
	Button.MouseButton1Click:Connect(function()
		pcall(callback)
		Button.TextSize = 0
		TweenService:Create(
			Button,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{TextSize = 14}
		):Play()
	end)
	
	Button.MouseLeave:Connect(function()
		TweenService:Create(
			Button,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(23, 23, 23), TextColor3 = PresetColor}
		):Play()
	end)
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Toggle(text, default, callback)
	local toggled = false
	local Toggle = Instance.new("TextButton")
	local ToggleTitle = Instance.new("TextLabel")
	local ToggleFrame = Instance.new("Frame")
	local ToggleFrameCorner = Instance.new("UICorner")
	local ToggleFrameCircle = Instance.new("Frame")
	local ToggleFrameCircleCorner = Instance.new("UICorner")
	local ToggleFrameOutline = Instance.new("Frame")
	local ToggleFrameOutlineCorner = Instance.new("UICorner")
	local Icon = Instance.new("ImageLabel")
	
	Toggle.Name = "Toggle"
	Toggle.Parent = ChannelHolder
	Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	Toggle.Size = UDim2.new(0, 401, 0, 30)
	Toggle.AutoButtonColor = false
	Toggle.Font = Enum.Font.Gotham
	Toggle.Text = ""
	Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.TextSize = 14.000
	
	ToggleTitle.Name = "ToggleTitle"
	ToggleTitle.Parent = Toggle
	ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleTitle.BackgroundTransparency = 1.000
	ToggleTitle.Position = UDim2.new(0, 5, 0, 0)
	ToggleTitle.Size = UDim2.new(0, 200, 0, 30)
	ToggleTitle.Font = Enum.Font.Gotham
	ToggleTitle.Text = text
	ToggleTitle.TextColor3 = PresetColor
	ToggleTitle.TextSize = 14.000
	ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ToggleFrameOutline.Name = "ToggleFrameOutline"
	ToggleFrameOutline.Parent = Toggle
	ToggleFrameOutline.BackgroundColor3 = PresetColor
	ToggleFrameOutline.Position = UDim2.new(0.900481343, -5, 0.16300018, 0)
	ToggleFrameOutline.Size = UDim2.new(0, 41, 0, 22)
	
	ToggleFrameOutlineCorner.CornerRadius = UDim.new(1, 8)
	ToggleFrameOutlineCorner.Name = "ToggleFrameOutlineCorner"
	ToggleFrameOutlineCorner.Parent = ToggleFrameOutline
	
	ToggleFrame.Name = "ToggleFrame"
	ToggleFrame.Parent = ToggleFrameOutline
	ToggleFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	ToggleFrame.Size = UDim2.new(0, 39, 0, 20)
	ToggleFrame.Position = UDim2.new(0, 1, 0.03761, 0)
	
	ToggleFrameCorner.CornerRadius = UDim.new(1, 8)
	ToggleFrameCorner.Name = "ToggleFrameCorner"
	ToggleFrameCorner.Parent = ToggleFrame
	
	ToggleFrameCircle.Name = "ToggleFrameCircle"
	ToggleFrameCircle.Parent = ToggleFrame
	ToggleFrameCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleFrameCircle.Position = UDim2.new(0.234999999, -5, 0.133000001, 0)
	ToggleFrameCircle.Size = UDim2.new(0, 15, 0, 15)
	
	ToggleFrameCircleCorner.CornerRadius = UDim.new(1, 0)
	ToggleFrameCircleCorner.Name = "ToggleFrameCircleCorner"
	ToggleFrameCircleCorner.Parent = ToggleFrameCircle
	
	Icon.Name = "Icon"
	Icon.Parent = ToggleFrameCircle
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Icon.Position = UDim2.new(0, 8, 0, 8)
	Icon.Size = UDim2.new(0, 13, 0, 13)
	Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
	Icon.ImageColor3 = Color3.fromRGB(31, 31, 31)
	
	if default == true then
		TweenService:Create(
			Icon,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ImageColor3 = PresetColor}
		):Play()
		TweenService:Create(
			ToggleFrame,
			TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = PresetColor}
		):Play()
		ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3,true)
		TweenService:Create(
			Icon,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ImageTransparency = 1}
		):Play()
		Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
		wait(.1)
		TweenService:Create(
			Icon,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ImageTransparency = 0}
		):Play()
		toggled = not toggled
		pcall(callback, toggled)
	end
	 
	Toggle.MouseButton1Click:Connect(function()
		if toggled == false then
			TweenService:Create(
				Icon,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageColor3 = PresetColor}
			):Play()
			TweenService:Create(
				ToggleFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = PresetColor}
			):Play()
			ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
			TweenService:Create(
				Icon,
				TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageTransparency = 1}
			):Play()
			Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
			wait(.1)
			TweenService:Create(
				Icon,
				TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageTransparency = 0}
			):Play()
		else
			TweenService:Create(
				Icon,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageColor3 = Color3.fromRGB(31, 31, 31)}
			):Play()
			TweenService:Create(
				ToggleFrame,
				TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
			):Play()
			ToggleFrameCircle:TweenPosition(UDim2.new(0.234999999, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
			TweenService:Create(
				Icon,
				TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageTransparency = 1}
			):Play()
			Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
			wait(.1)
			TweenService:Create(
				Icon,
				TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ImageTransparency = 0}
			):Play()
		end
		toggled = not toggled
		pcall(callback, toggled)
	end)
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Slider(text, min, max, start, callback)
	local SliderFunc = {}
	local dragging = false
	local Slider = Instance.new("TextButton")
	local SliderTitle = Instance.new("TextLabel")
	local SliderFrame = Instance.new("Frame")
	local SliderFrameCorner = Instance.new("UICorner")
	local CurrentValueFrame = Instance.new("Frame")
	local CurrentValueFrameCorner = Instance.new("UICorner")
	local Zip = Instance.new("Frame")
	local ZipCorner = Instance.new("UICorner")
	local ValueBubble = Instance.new("Frame")
	local ValueBubbleCorner = Instance.new("UICorner")
	local SquareBubble = Instance.new("Frame")
	local GlowBubble = Instance.new("ImageLabel")
	local ValueLabel = Instance.new("TextLabel")
	
	Slider.Name = "Slider"
	Slider.Parent = ChannelHolder
	Slider.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.216560602, 0)
	Slider.Size = UDim2.new(0, 401, 0, 38)
	Slider.AutoButtonColor = false
	Slider.Font = Enum.Font.Gotham
	Slider.Text = ""
	Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
	Slider.TextSize = 14.000
	
	SliderTitle.Name = "SliderTitle"
	SliderTitle.Parent = Slider
	SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderTitle.BackgroundTransparency = 1.000
	SliderTitle.Position = UDim2.new(0, 5, 0, -4)
	SliderTitle.Size = UDim2.new(0, 200, 0, 27)
	SliderTitle.Font = Enum.Font.Gotham
	SliderTitle.Text = text
	SliderTitle.TextColor3 = PresetColor
	SliderTitle.TextSize = 14.000
	SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	SliderFrame.BackgroundColor3 = Color3.fromRGB(79, 84, 92)
	SliderFrame.Position = UDim2.new(0.497999996, 0, 0.757000029, 0)
	SliderFrame.Size = UDim2.new(0, 385, 0, 8)
	
	SliderFrameCorner.Name = "SliderFrameCorner"
	SliderFrameCorner.Parent = SliderFrame
	
	CurrentValueFrame.Name = "CurrentValueFrame"
	CurrentValueFrame.Parent = SliderFrame
	CurrentValueFrame.BackgroundColor3 = PresetColor
	CurrentValueFrame.Size = UDim2.new((start or 0) / max, 0, 0, 8)
	
	CurrentValueFrameCorner.Name = "CurrentValueFrameCorner"
	CurrentValueFrameCorner.Parent = CurrentValueFrame
	
	Zip.Name = "Zip"
	Zip.Parent = SliderFrame
	Zip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Zip.Position = UDim2.new((start or 0) / max, -6, -0.644999981, 0)
	Zip.Size = UDim2.new(0, 10, 0, 18)
	ZipCorner.CornerRadius = UDim.new(0, 3)
	ZipCorner.Name = "ZipCorner"
	ZipCorner.Parent = Zip
	
	ValueBubble.Name = "ValueBubble"
	ValueBubble.Parent = Zip
	ValueBubble.AnchorPoint = Vector2.new(0.5, 0.5)
	ValueBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	ValueBubble.Position = UDim2.new(0.5, 0, -1.00800002, 0)
	ValueBubble.Size = UDim2.new(0, 36, 0, 21)
	ValueBubble.Visible = false
	
	Zip.MouseEnter:Connect(function()
		if dragging == false then
			ValueBubble.Visible = true
		end
	end)
	
	Zip.MouseLeave:Connect(function()
		if dragging == false then
			ValueBubble.Visible = false
		end
	end)
	
	ValueBubbleCorner.CornerRadius = UDim.new(0, 3)
	ValueBubbleCorner.Name = "ValueBubbleCorner"
	ValueBubbleCorner.Parent = ValueBubble
	
	SquareBubble.Name = "SquareBubble"
	SquareBubble.Parent = ValueBubble
	SquareBubble.AnchorPoint = Vector2.new(0.5, 0.5)
	SquareBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	SquareBubble.BorderSizePixel = 0
	SquareBubble.Position = UDim2.new(0.493000001, 0, 0.637999971, 0)
	SquareBubble.Rotation = 45.000
	SquareBubble.Size = UDim2.new(0, 19, 0, 19)
	
	GlowBubble.Name = "GlowBubble"
	GlowBubble.Parent = ValueBubble
	GlowBubble.BackgroundColor3 = PresetColor
	GlowBubble.BackgroundTransparency = 1.000
	GlowBubble.BorderSizePixel = 0
	GlowBubble.Position = UDim2.new(0, -15, 0, -15)
	GlowBubble.Size = UDim2.new(1, 30, 1, 30)
	GlowBubble.ZIndex = 0
	GlowBubble.Image = "rbxassetid://4996891970"
	GlowBubble.ImageColor3 = Color3.fromRGB(15, 15, 15)
	GlowBubble.ScaleType = Enum.ScaleType.Slice
	GlowBubble.SliceCenter = Rect.new(20, 20, 280, 280)
	
	ValueLabel.Name = "ValueLabel"
	ValueLabel.Parent = ValueBubble
	ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ValueLabel.BackgroundTransparency = 1.000
	ValueLabel.Size = UDim2.new(0, 36, 0, 21)
	ValueLabel.Font = Enum.Font.Gotham
	ValueLabel.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
	ValueLabel.TextColor3 = PresetColor
	ValueLabel.TextSize = 10.000
	
	local function move(input)
		local pos = UDim2.new(math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0 , 1), -6, -0.644999981, 0)
		local pos1 = UDim2.new(math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1), 0, 0, 8)
		CurrentValueFrame.Size = pos1
		Zip.Position = pos
		local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
		ValueLabel.Text = tostring(value)
		pcall(callback, value)
	end
	
	Zip.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			ValueBubble.Visible = true
		end
	end)
	
	Zip.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
			ValueBubble.Visible = false
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			move(input)
		end
	end)
	
	function SliderFunc:Change(tochange)
		CurrentValueFrame.Size = UDim2.new((tochange or 0) / max, 0, 0, 8)
		Zip.Position = UDim2.new((tochange or 0) / max, -6, -0.644999981, 0)
		ValueLabel.Text = tostring(tochange and math.floor((tochange / max) * (max - min) + min) or 0)
		pcall(callback, tochange)
	end
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	return SliderFunc
	end
	
	function ChannelContent:Line()
	local Line1 = Instance.new("Frame")
	local Line2 = Instance.new("Frame")
	
	Line1.Name = "Line1"
	Line1.Parent = ChannelHolder
	Line1.BackgroundColor3 = PresetColor
	Line1.BackgroundTransparency = 1.000
	Line1.Position = UDim2.new(0, 0, 0.350318581, 0)
	Line1.Size = UDim2.new(0, 100, 0, 8)
	
	Line2.Name = "Line2"
	Line2.Parent = Line1
	Line2.BackgroundColor3 = PresetColor
	Line2.BorderSizePixel = 0
	Line2.Position = UDim2.new(0, 0, 0, 4)
	Line2.Size = UDim2.new(0, 401, 0, 1)
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Dropdown(text, list, callback)
	local DropFunc = {}
	local itemcount = 0
	local framesize = 0
	local DropTog = false
	local Dropdown = Instance.new("Frame")
	local DropdownTitle = Instance.new("TextLabel")
	local DropdownFrameOutline = Instance.new("Frame")
	local DropdownFrameOutlineCorner = Instance.new("UICorner")
	local DropdownFrame = Instance.new("Frame")
	local DropdownFrameCorner = Instance.new("UICorner")
	local CurrentSelectedText = Instance.new("TextLabel")
	local ArrowImg = Instance.new("ImageLabel")
	local DropdownFrameBtn = Instance.new("TextButton")
	
	Dropdown.Name = "Dropdown"
	Dropdown.Parent = ChannelHolder
	Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dropdown.BackgroundTransparency = 1.000
	Dropdown.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
	Dropdown.Size = UDim2.new(0, 403, 0, 60)
	
	DropdownTitle.Name = "DropdownTitle"
	DropdownTitle.Parent = Dropdown
	DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropdownTitle.BackgroundTransparency = 1.000
	DropdownTitle.Position = UDim2.new(0, 5, 0, 0)
	DropdownTitle.Size = UDim2.new(0, 200, 0, 29)
	DropdownTitle.Font = Enum.Font.Gotham
	DropdownTitle.Text = ""
	DropdownTitle.TextColor3 = PresetColor
	DropdownTitle.TextSize = 14.000
	DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	DropdownFrameOutline.Name = "DropdownFrameOutline"
	DropdownFrameOutline.Parent = DropdownTitle
	DropdownFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
	DropdownFrameOutline.BackgroundColor3 = PresetColor
	DropdownFrameOutline.Position = UDim2.new(0.988442957, 0, 1.0197437, 0)
	DropdownFrameOutline.Size = UDim2.new(0, 396, 0, 36)
	
	DropdownFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
	DropdownFrameOutlineCorner.Name = "DropdownFrameOutlineCorner"
	DropdownFrameOutlineCorner.Parent = DropdownFrameOutline
	
	DropdownFrame.Name = "DropdownFrame"
	DropdownFrame.Parent = DropdownTitle
	DropdownFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	DropdownFrame.ClipsDescendants = true
	DropdownFrame.Position = UDim2.new(0.00899999978, 0, 0.46638527, 0)
	DropdownFrame.Selectable = true
	DropdownFrame.Size = UDim2.new(0, 392, 0, 32)
	
	DropdownFrameCorner.CornerRadius = UDim.new(0, 3)
	DropdownFrameCorner.Name = "DropdownFrameCorner"
	DropdownFrameCorner.Parent = DropdownFrame
	
	CurrentSelectedText.Name = "CurrentSelectedText"
	CurrentSelectedText.Parent = DropdownFrame
	CurrentSelectedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CurrentSelectedText.BackgroundTransparency = 1.000
	CurrentSelectedText.Position = UDim2.new(0.0178571437, 0, 0, 0)
	CurrentSelectedText.Size = UDim2.new(0, 193, 0, 32)
	CurrentSelectedText.Font = Enum.Font.Gotham
	CurrentSelectedText.Text = text
	CurrentSelectedText.TextTransparency = 0.250
	CurrentSelectedText.TextColor3 = PresetColor
	CurrentSelectedText.TextSize = 14.000
	CurrentSelectedText.TextXAlignment = Enum.TextXAlignment.Left
	
	ArrowImg.Name = "ArrowImg"
	ArrowImg.Parent = CurrentSelectedText
	ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ArrowImg.BackgroundTransparency = 1.000
	ArrowImg.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
	ArrowImg.Size = UDim2.new(0, 22, 0, 22)
	ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818372"
	ArrowImg.ImageColor3 = PresetColor
	
	DropdownFrameBtn.Name = "DropdownFrameBtn"
	DropdownFrameBtn.Parent = DropdownFrame
	DropdownFrameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropdownFrameBtn.BackgroundTransparency = 1.000
	DropdownFrameBtn.Size = UDim2.new(0, 392, 0, 32)
	DropdownFrameBtn.Font = Enum.Font.SourceSans
	DropdownFrameBtn.Text = ""
	DropdownFrameBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
	DropdownFrameBtn.TextSize = 14.000
	
	local DropdownFrameMainOutline = Instance.new("Frame")
	local DropdownFrameMainOutlineCorner = Instance.new("UICorner")
	local DropdownFrameMain = Instance.new("Frame")
	local DropdownFrameMainCorner = Instance.new("UICorner")
	local DropItemHolderLabel = Instance.new("TextLabel")
	local DropItemHolder = Instance.new("ScrollingFrame")
	local DropItemHolderLayout = Instance.new("UIListLayout")
	
	DropdownFrameMainOutline.Name = "DropdownFrameMainOutline"
	DropdownFrameMainOutline.Parent = DropdownTitle
	DropdownFrameMainOutline.BackgroundColor3 = PresetColor
	DropdownFrameMainOutline.Position = UDim2.new(-0.00155700743, 0, 1.66983342, 0)
	DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 81)
	DropdownFrameMainOutline.Visible = false
	
	DropdownFrameMainOutlineCorner.CornerRadius = UDim.new(0, 3)
	DropdownFrameMainOutlineCorner.Name = "DropdownFrameMainOutlineCorner"
	DropdownFrameMainOutlineCorner.Parent = DropdownFrameMainOutline
	
	DropdownFrameMain.Name = "DropdownFrameMain"
	DropdownFrameMain.Parent = DropdownTitle
	DropdownFrameMain.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	DropdownFrameMain.ClipsDescendants = true
	DropdownFrameMain.Position = UDim2.new(0.00799999978, 0, 1.7468965, 0)
	DropdownFrameMain.Selectable = true
	DropdownFrameMain.Size = UDim2.new(0, 392, 0, 77)
	DropdownFrameMain.Visible = false
	
	DropdownFrameMainCorner.CornerRadius = UDim.new(0, 3)
	DropdownFrameMainCorner.Name = "DropdownFrameMainCorner"
	DropdownFrameMainCorner.Parent = DropdownFrameMain
	
	DropItemHolderLabel.Name = "ItemHolderLabel"
	DropItemHolderLabel.Parent = DropdownFrameMain
	DropItemHolderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropItemHolderLabel.BackgroundTransparency = 1.000
	DropItemHolderLabel.Position = UDim2.new(0.0178571437, 0, 0, 0)
	DropItemHolderLabel.Size = UDim2.new(0, 193, 0, 13)
	DropItemHolderLabel.Font = Enum.Font.Gotham
	DropItemHolderLabel.Text = ""
	DropItemHolderLabel.TextColor3 = PresetColor
	DropItemHolderLabel.TextSize = 14.000
	DropItemHolderLabel.TextXAlignment = Enum.TextXAlignment.Left
	
	DropItemHolder.Name = "ItemHolder"
	DropItemHolder.Parent = DropItemHolderLabel
	DropItemHolder.Active = true
	DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropItemHolder.BackgroundTransparency = 1.000
	DropItemHolder.Position = UDim2.new(0, 0, 0.215384638, 0)
	DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
	DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
	DropItemHolder.ScrollBarThickness = 6
	DropItemHolder.BorderSizePixel = 0
	DropItemHolder.ScrollBarImageColor3 = PresetColor
	
	DropItemHolderLayout.Name = "ItemHolderLayout"
	DropItemHolderLayout.Parent = DropItemHolder
	DropItemHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
	DropItemHolderLayout.Padding = UDim.new(0, 0)
	
	DropdownFrameBtn.MouseButton1Click:Connect(function()
		if DropTog == false then
			DropdownFrameMain.Visible = true
			DropdownFrameMainOutline.Visible = true
			TweenService:Create(
				Dropdown,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{Size = UDim2.new(0, 403, 0, 60 + DropdownFrameMainOutline.AbsoluteSize.Y)}
			):Play()
			TweenService:Create(
				ChannelHolder,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
			):Play()
		else
			DropdownFrameMain.Visible = false
			DropdownFrameMainOutline.Visible = false
			TweenService:Create(
				Dropdown,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{Size = UDim2.new(0, 403, 0, 60)}
			):Play()
			TweenService:Create(
				ChannelHolder,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
			):Play()
			wait(.2)
		end
		DropTog = not DropTog
	end)
	
	for i, v in next, list do
		itemcount = itemcount + 1
	
		if itemcount == 1 then
			framesize = 29
		elseif itemcount == 2 then
			framesize = 58
		elseif itemcount >= 3 then
			framesize = 87
		end
	
		local Item = Instance.new("TextButton")
		local ItemCorner = Instance.new("UICorner")
		local ItemText = Instance.new("TextLabel")
	
		Item.Name = "Item"
		Item.Parent = DropItemHolder
		Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
		Item.Size = UDim2.new(0, 379, 0, 29)
		Item.AutoButtonColor = false
		Item.Font = Enum.Font.SourceSans
		Item.Text = ""
		Item.TextColor3 = Color3.fromRGB(0, 0, 0)
		Item.TextSize = 14.000
		Item.BackgroundTransparency = 1
	
		ItemCorner.CornerRadius = UDim.new(0, 4)
		ItemCorner.Name = "ItemCorner"
		ItemCorner.Parent = Item
	
		ItemText.Name = "ItemText"
		ItemText.Parent = Item
		ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
		ItemText.BackgroundTransparency = 1.000
		ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
		ItemText.Size = UDim2.new(0, 192, 0, 29)
		ItemText.Font = Enum.Font.Gotham
		ItemText.TextColor3 = PresetColor
		ItemText.TextSize = 14.000
		ItemText.TextXAlignment = Enum.TextXAlignment.Left
		ItemText.Text = v
	
		Item.MouseEnter:Connect(function()
			ItemText.TextColor3 = Color3.fromRGB(255, 255, 255)
			Item.BackgroundTransparency = 0
		end)
	
		Item.MouseLeave:Connect(function()
			ItemText.TextColor3 = PresetColor
			Item.BackgroundTransparency = 1
		end)
	
		Item.MouseButton1Click:Connect(function()
			CurrentSelectedText.Text = v
			CurrentSelectedText.TextTransparency = 0.250
			pcall(callback, v)
			DropdownFrameMain.Visible = false
			DropdownFrameMainOutline.Visible = false
			TweenService:Create(
				Dropdown,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{Size = UDim2.new(0, 403, 0, 60)}
			):Play()
			TweenService:Create(
				ChannelHolder,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
			):Play()
			wait(.2)
			DropTog = not DropTog
		end)
	
		DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropItemHolderLayout.AbsoluteContentSize.Y)
	
		DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
		DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
		DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
	end
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	
	function DropFunc:Clear()
		for i, v in next, DropItemHolder:GetChildren() do
			if v.Name == "Item" then
				v:Destroy()
			end
		end
	
		CurrentSelectedText.Text = text
		CurrentSelectedText.TextTransparency = 0.250
	
		itemcount = 0
		framesize = 0
		DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
		DropdownFrameMain.Size = UDim2.new(0, 392, 0, 0)
		DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 0)
		Dropdown.Size = UDim2.new(0, 403, 0, 60)
		DropdownFrameMain.Visible = false
		DropdownFrameMainOutline.Visible = false
		ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function DropFunc:Add(textadd)
		itemcount = itemcount + 1
	
		if itemcount == 1 then
			framesize = 29
		elseif itemcount == 2 then
			framesize = 58
		elseif itemcount >= 3 then
			framesize = 87
		end
	
		local Item = Instance.new("TextButton")
		local ItemCorner = Instance.new("UICorner")
		local ItemText = Instance.new("TextLabel")
	
		Item.Name = "Item"
		Item.Parent = DropItemHolder
		Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
		Item.Size = UDim2.new(0, 379, 0, 29)
		Item.AutoButtonColor = false
		Item.Font = Enum.Font.SourceSans
		Item.Text = ""
		Item.TextColor3 = Color3.fromRGB(0, 0, 0)
		Item.TextSize = 14.000
		Item.BackgroundTransparency = 1
	
		ItemCorner.CornerRadius = UDim.new(0, 4)
		ItemCorner.Name = "ItemCorner"
		ItemCorner.Parent = Item
	
		ItemText.Name = "ItemText"
		ItemText.Parent = Item
		ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
		ItemText.BackgroundTransparency = 1.000
		ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
		ItemText.Size = UDim2.new(0, 192, 0, 29)
		ItemText.Font = Enum.Font.Gotham
		ItemText.TextColor3 = PresetColor
		ItemText.TextSize = 14.000
		ItemText.TextXAlignment = Enum.TextXAlignment.Left
		ItemText.Text = textadd
	
		Item.MouseEnter:Connect(function()
			ItemText.TextColor3 = Color3.fromRGB(255, 255, 255)
			Item.BackgroundTransparency = 0
		end)
	
		Item.MouseLeave:Connect(function()
			ItemText.TextColor3 = PresetColor
			Item.BackgroundTransparency = 1
		end)
	
		Item.MouseButton1Click:Connect(function()
			CurrentSelectedText.Text = textadd
			CurrentSelectedText.TextTransparency = 0.250
			pcall(callback, textadd)
			DropdownFrameMain.Visible = false
			DropdownFrameMainOutline.Visible = false
			TweenService:Create(
				Dropdown,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{Size = UDim2.new(0, 403, 0, 60)}
			):Play()
			TweenService:Create(
				ChannelHolder,
				TweenInfo.new(.5, Enum.EasingStyle.Quart),
				{CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)}
			):Play()
			wait(.2)
			DropTog = not DropTog
		end)
	
		DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropItemHolderLayout.AbsoluteContentSize.Y)
	
		DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
		DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
		DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
	end
	return DropFunc
	end
	
	function ChannelContent:Colorpicker(text, preset, callback)
	local OldToggleColor = Color3.fromRGB(0, 0, 0)
	local OldColor = Color3.fromRGB(0, 0, 0)
	local OldColorSelectionPosition = nil
	local OldHueSelectionPosition = nil
	local ColorH, ColorS, ColorV = 1, 1, 1
	local RainbowColorPicker = false
	local ColorPickerInput = nil
	local ColorInput = nil
	local HueInput = nil
	
	local Colorpicker = Instance.new("Frame")
	local ColorpickerTitle = Instance.new("TextLabel")
	local ColorpickerFrameOutline = Instance.new("Frame")
	local ColorpickerFrameOutlineCorner = Instance.new("UICorner")
	local ColorpickerFrame = Instance.new("Frame")
	local ColorpickerFrameCorner = Instance.new("UICorner")
	local Color = Instance.new("ImageLabel")
	local ColorCorner = Instance.new("UICorner")
	local ColorSelection = Instance.new("ImageLabel")
	local Hue = Instance.new("ImageLabel")
	local HueCorner = Instance.new("UICorner")
	local HueGradient = Instance.new("UIGradient")
	local HueSelection = Instance.new("ImageLabel")
	local PresetClr = Instance.new("Frame")
	local PresetClrCorner = Instance.new("UICorner")
	
	Colorpicker.Name = "Colorpicker"
	Colorpicker.Parent = ChannelHolder
	Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Colorpicker.BackgroundTransparency = 1.000
	Colorpicker.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
	Colorpicker.Size = UDim2.new(0, 403, 0, 175)
	
	ColorpickerTitle.Name = "ColorpickerTitle"
	ColorpickerTitle.Parent = Colorpicker
	ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ColorpickerTitle.BackgroundTransparency = 1.000
	ColorpickerTitle.Position = UDim2.new(0, 5, 0, 0)
	ColorpickerTitle.Size = UDim2.new(0, 200, 0, 29)
	ColorpickerTitle.Font = Enum.Font.Gotham
	ColorpickerTitle.Text = "Colorpicker"
	ColorpickerTitle.TextColor3 = PresetColor
	ColorpickerTitle.TextSize = 14.000
	ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ColorpickerFrameOutline.Name = "ColorpickerFrameOutline"
	ColorpickerFrameOutline.Parent = ColorpickerTitle
	ColorpickerFrameOutline.BackgroundColor3 = PresetColor
	ColorpickerFrameOutline.Position = UDim2.new(-0.00100000005, 0, 0.991999984, 0)
	ColorpickerFrameOutline.Size = UDim2.new(0, 238, 0, 139)
	
	ColorpickerFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
	ColorpickerFrameOutlineCorner.Name = "ColorpickerFrameOutlineCorner"
	ColorpickerFrameOutlineCorner.Parent = ColorpickerFrameOutline
	
	ColorpickerFrame.Name = "ColorpickerFrame"
	ColorpickerFrame.Parent = ColorpickerTitle
	ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	ColorpickerFrame.ClipsDescendants = true
	ColorpickerFrame.Position = UDim2.new(0.00899999978, 0, 1.06638515, 0)
	ColorpickerFrame.Selectable = true
	ColorpickerFrame.Size = UDim2.new(0, 234, 0, 135)
	
	ColorpickerFrameCorner.CornerRadius = UDim.new(0, 3)
	ColorpickerFrameCorner.Name = "ColorpickerFrameCorner"
	ColorpickerFrameCorner.Parent = ColorpickerFrame
	
	Color.Name = "Color"
	Color.Parent = ColorpickerFrame
	Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	Color.Position = UDim2.new(0, 10, 0, 10)
	Color.Size = UDim2.new(0, 154, 0, 118)
	Color.ZIndex = 10
	Color.Image = "rbxassetid://4155801252"
	
	ColorCorner.CornerRadius = UDim.new(0, 3)
	ColorCorner.Name = "ColorCorner"
	ColorCorner.Parent = Color
	
	ColorSelection.Name = "ColorSelection"
	ColorSelection.Parent = Color
	ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
	ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ColorSelection.BackgroundTransparency = 1.000
	ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
	ColorSelection.Size = UDim2.new(0, 18, 0, 18)
	ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
	ColorSelection.ScaleType = Enum.ScaleType.Fit
	
	Hue.Name = "Hue"
	Hue.Parent = ColorpickerFrame
	Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hue.Position = UDim2.new(0, 171, 0, 10)
	Hue.Size = UDim2.new(0, 18, 0, 118)
	
	HueCorner.CornerRadius = UDim.new(0, 3)
	HueCorner.Name = "HueCorner"
	HueCorner.Parent = Hue
	
	HueGradient.Color = ColorSequence.new {ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
	HueGradient.Rotation = 270
	HueGradient.Name = "HueGradient"
	HueGradient.Parent = Hue
	
	HueSelection.Name = "HueSelection"
	HueSelection.Parent = Hue
	HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
	HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HueSelection.BackgroundTransparency = 1.000
	HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
	HueSelection.Size = UDim2.new(0, 18, 0, 18)
	HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
	
	PresetClr.Name = "PresetClr"
	PresetClr.Parent = ColorpickerFrame
	PresetClr.BackgroundColor3 = preset
	PresetClr.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
	PresetClr.Size = UDim2.new(0, 25, 0, 25)
	
	PresetClrCorner.CornerRadius = UDim.new(0, 3)
	PresetClrCorner.Name = "PresetClrCorner"
	PresetClrCorner.Parent = PresetClr
	
	local function UpdateColorPicker(nope)
		PresetClr.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
		Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
		pcall(callback, PresetClr.BackgroundColor3)
	end
	
	ColorH = 1 - (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) / Hue.AbsoluteSize.Y)
	ColorS = (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) / Color.AbsoluteSize.X)
	ColorV = 1 - (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) / Color.AbsoluteSize.Y)
	
	PresetClr.BackgroundColor3 = preset
	Color.BackgroundColor3 = preset
	pcall(callback, PresetClr.BackgroundColor3)
	
	Color.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if ColorInput then
				ColorInput:Disconnect()
			end
	
			ColorInput = RunService.RenderStepped:Connect(function()
				local ColorX = (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) / Color.AbsoluteSize.X)
				local ColorY = (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) / Color.AbsoluteSize.Y)
				ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
				ColorS = ColorX
				ColorV = 1 - ColorY
	
				UpdateColorPicker(true)
			end)
		end
	end)
	
	Color.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if ColorInput then
				ColorInput:Disconnect()
			end
		end
	end)
	
	Hue.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if HueInput then
				HueInput:Disconnect()
			end
	
			HueInput = RunService.RenderStepped:Connect(function()
				local HueY = (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) / Hue.AbsoluteSize.Y)
				HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
				ColorH = 1 - HueY
	
				UpdateColorPicker(true)
			end)
		end
	end)
	
	Hue.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if HueInput then
				HueInput:Disconnect()
			end
		end
	end)
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Textbox(text, placetext, disapper, callback)
	local Textbox = Instance.new("Frame")
	local TextboxTitle = Instance.new("TextLabel")
	local TextboxFrameOutline = Instance.new("Frame")
	local TextboxFrameOutlineCorner = Instance.new("UICorner")
	local TextboxFrame = Instance.new("Frame")
	local TextboxFrameCorner = Instance.new("UICorner")
	local TextBox = Instance.new("TextBox")
	
	Textbox.Name = "Textbox"
	Textbox.Parent = ChannelHolder
	Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Textbox.BackgroundTransparency = 1.000
	Textbox.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
	Textbox.Size = UDim2.new(0, 403, 0, 73)
	
	TextboxTitle.Name = "TextboxTitle"
	TextboxTitle.Parent = Textbox
	TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextboxTitle.BackgroundTransparency = 1.000
	TextboxTitle.Position = UDim2.new(0, 5, 0, 0)
	TextboxTitle.Size = UDim2.new(0, 200, 0, 29)
	TextboxTitle.Font = Enum.Font.Gotham
	TextboxTitle.Text = text
	TextboxTitle.TextColor3 = PresetColor
	TextboxTitle.TextSize = 14.000
	TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	TextboxFrameOutline.Name = "TextboxFrameOutline"
	TextboxFrameOutline.Parent = TextboxTitle
	TextboxFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
	TextboxFrameOutline.BackgroundColor3 = PresetColor
	TextboxFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
	TextboxFrameOutline.Size = UDim2.new(0, 396, 0, 36)
	
	TextboxFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
	TextboxFrameOutlineCorner.Name = "TextboxFrameOutlineCorner"
	TextboxFrameOutlineCorner.Parent = TextboxFrameOutline
	
	TextboxFrame.Name = "TextboxFrame"
	TextboxFrame.Parent = TextboxTitle
	TextboxFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	TextboxFrame.ClipsDescendants = true
	TextboxFrame.Position = UDim2.new(0.00899999978, 0, 1.06638527, 0)
	TextboxFrame.Selectable = true
	TextboxFrame.Size = UDim2.new(0, 392, 0, 32)
	
	TextboxFrameCorner.CornerRadius = UDim.new(0, 3)
	TextboxFrameCorner.Name = "TextboxFrameCorner"
	TextboxFrameCorner.Parent = TextboxFrame
	
	TextBox.Parent = TextboxFrame
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.Position = UDim2.new(0.0178571437, 0, 0, 0)
	TextBox.Size = UDim2.new(0, 377, 0, 32)
	TextBox.Font = Enum.Font.Gotham
	TextBox.PlaceholderColor3 = PresetColor
	TextBox.PlaceholderText = placetext
	TextBox.Text = ""
	TextBox.TextColor3 = PresetColor
	TextBox.TextSize = 14.000
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	
	TextBox.Focused:Connect(function()
		TweenService:Create(
			TextboxFrameOutline,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
		):Play()
	end)
	
	TextBox.FocusLost:Connect(function(ep)
		TweenService:Create(
			TextboxFrameOutline,
			TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{BackgroundColor3 = PresetColor}
		):Play()
		if ep then
			if #TextBox.Text > 0 then
				pcall(callback, TextBox.Text)
				if disapper then
					TextBox.Text = ""
				end
			end
		end
	end)
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:AddImage(image)
	local gamepng = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png"
	local img = gamepng or image
	local ImageFrame = Instance.new("Frame")
	local gameImageOutline = Instance.new("Frame")
	local gameImage = Instance.new("ImageLabel")
	
	ImageFrame.Name = "ImageFrame"
	ImageFrame.Parent = ChannelHolder
	ImageFrame.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	ImageFrame.Size = UDim2.new(0, 401, 0, 105)
	ImageFrame.BackgroundTransparency = 1.000
	
	gameImage.Name = "gameImageOutline"
	gameImage.Parent = ImageFrame
	gameImage.Size = UDim2.new(0, 401 * 2/4, 0, 125 * 3/4)
	gameImage.Position = UDim2.new(0.125, 0, 0, 0)
	gameImage.BackgroundTransparency = 1.000
	gameImage.Image = img
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:AddImage(image)
	local imagePlayer = "www.roblox.com/avatar-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
	local gamepng = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432&format=png"
	local img = gamepng or image
	local ImageFrame = Instance.new("Frame")
	local gameImageOutline = Instance.new("Frame")
	local gameImage = Instance.new("ImageLabel")
	
	ImageFrame.Name = "ImageFrame"
	ImageFrame.Parent = ChannelHolder
	ImageFrame.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	ImageFrame.Size = UDim2.new(0, 401, 0, 105)
	ImageFrame.BackgroundTransparency = 1.000
	
	gameImage.Name = "gameImageOutline"
	gameImage.Parent = ImageFrame
	gameImage.Size = UDim2.new(0, 401 * 2/4, 0, 125 * 3/4)
	gameImage.Position = UDim2.new(0.125, 0, 0, 0)
	gameImage.BackgroundTransparency = 1.000
	gameImage.Image = img
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	
	function ChannelContent:Label(text)
	local Label = Instance.new("TextButton")
	local LabelTitle = Instance.new("TextLabel")
	local labelfunc = {}
	Label.Name = "Label"
	
	Label.Parent = ChannelHolder
	Label.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Label.BorderSizePixel = 0
	Label.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	Label.Size = UDim2.new(0, 401, 0, 30)
	Label.AutoButtonColor = false
	Label.Font = Enum.Font.Gotham
	Label.Text = ""
	Label.TextColor3 = PresetColor
	Label.TextSize = 14.000
	
	LabelTitle.Name = "LabelTitle"
	LabelTitle.Parent = Label
	LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LabelTitle.BackgroundTransparency = 1.000
	LabelTitle.Position = UDim2.new(0, 5, 0, 0)
	LabelTitle.Size = UDim2.new(0, 200, 0, 30)
	LabelTitle.Font = Enum.Font.Gotham
	LabelTitle.Text = text
	LabelTitle.TextColor3 = PresetColor
	LabelTitle.TextSize = 14.000
	LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	
	function labelfunc:Refresh(tochange)
		Label.Text = tochange
	end
	return labelfunc
	end
	
	function ChannelContent:Bind(text, presetbind, callback)
	local Key = presetbind.Name
	local Keybind = Instance.new("TextButton")
	local KeybindTitle = Instance.new("TextLabel")
	local KeybindText = Instance.new("TextLabel")
	
	Keybind.Name = "Keybind"
	Keybind.Parent = ChannelHolder
	Keybind.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
	Keybind.BorderSizePixel = 0
	Keybind.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
	Keybind.Size = UDim2.new(0, 401, 0, 30)
	Keybind.AutoButtonColor = false
	Keybind.Font = Enum.Font.Gotham
	Keybind.Text = ""
	Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
	Keybind.TextSize = 14.000
	
	KeybindTitle.Name = "KeybindTitle"
	KeybindTitle.Parent = Keybind
	KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeybindTitle.BackgroundTransparency = 1.000
	KeybindTitle.Position = UDim2.new(0, 5, 0, 0)
	KeybindTitle.Size = UDim2.new(0, 200, 0, 30)
	KeybindTitle.Font = Enum.Font.Gotham
	KeybindTitle.Text = text
	KeybindTitle.TextColor3 = PresetColor
	KeybindTitle.TextSize = 14.000
	KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left
	
	KeybindText.Name = "KeybindText"
	KeybindText.Parent = Keybind
	KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeybindText.BackgroundTransparency = 1.000
	KeybindText.Position = UDim2.new(0, 316, 0, 0)
	KeybindText.Size = UDim2.new(0, 85, 0, 30)
	KeybindText.Font = Enum.Font.Gotham
	KeybindText.Text = presetbind.Name
	KeybindText.TextColor3 = PresetColor
	KeybindText.TextSize = 14.000
	KeybindText.TextXAlignment = Enum.TextXAlignment.Right
	
	Keybind.MouseButton1Click:Connect(function()
		KeybindText.Text = "..."
		local inputwait = game:GetService("UserInputService").InputBegan:wait()
		if inputwait.KeyCode.Name ~= "Unknown" then
			KeybindText.Text = inputwait.KeyCode.Name
			Key = inputwait.KeyCode.Name
		end
	end)
	
	game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
		if not pressed then
			if current.KeyCode.Name == Key then
				pcall(callback)
			end
		end
	end)
	ChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ChannelHolderLayout.AbsoluteContentSize.Y)
	end
	return ChannelContent
	end
	return ChannelHold
	end
	return ServerHold
	end
	
	local win = SomeLib:Window(" Build A Boat For Treasure ", _G.Color, _G.Toggle)
	
	local serv = win:Server("PUTAYA HUB | v.0.1","")
	
	local AF = serv:Channel("Main", "http://www.roblox.com/asset/?id=7040391851")
	
	
	Time = AF:Label("Server Time")
	
	function UpdateTime()
	local GameTime = math.floor(workspace.DistributedGameTime+0.5)
	local Hour = math.floor(GameTime/(60^2))%24
	local Minute = math.floor(GameTime/(60^1))%60
	local Second = math.floor(GameTime/(60^0))%60
	Time:Refresh("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
	end
	
	spawn(function()
	while true do
	UpdateTime()
	wait()
	end
	end)
	
	Client = AF:Label("FPS Server")
	
	function UpdateClient()
	local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
	local Fps = workspace:GetRealPhysicsFPS()
	Client:Refresh("Fps : "..Fps.." Ping : "..Ping)
	end
	spawn(function()
	while true do wait(.1)
	UpdateClient()
	end
	end)
	
	AF:Line()
	
	
	function toposa(Para1)
	Distance = (Para1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance <= 200 then
	Speed = 99999
	elseif Distance >= 400 then
	Speed = 500
	end
	game:GetService("TweenService"):Create(
	game.Players.LocalPlayer.Character.HumanoidRootPart,
	TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
	{CFrame = Para1}
	):Play()
	end
	
	
	AF:Toggle("Auto Farm",false, function(value)
	_G.FarmAuto = value
	if value == false then
	wait()
	toposa(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	game.Players.LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
	end
	end)
	AF:Slider("WalkSpeed", 0, 200, 36, function(t)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
	end)
	AF:Slider("JumpPower", 0, 200, 36, function(t)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
	end)
	AF:Line()
	AF:Button("Open Legendary Chest", function()
	workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest",1)
	end)
	AF:Button("Open Epic Chest", function()
	workspace.ItemBoughtFromShop:InvokeServer("Epic Chest",1)
	end)
	AF:Button("Open Rare Chest", function()
	workspace.ItemBoughtFromShop:InvokeServer("Rare Chest",1)
	end)
	AF:Button("Open Uncommon Chest", function()
	workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest",1)
	end)
	AF:Button("Open Common Chest", function()
	workspace.ItemBoughtFromShop:InvokeServer("Common Chest",1)
	end)
	
	AF:Line()
	
	AF:Toggle("Auto Legendary Chest",false, function(t)
	_G.LC = t
	while _G.LC do wait()
	workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest",1)
	end
	end)
	AF:Toggle("Auto Epic Chest",false, function(t)
	_G.EC = t
	while _G.EC do wait()
	workspace.ItemBoughtFromShop:InvokeServer("Epic Chest",1)
	end
	end)
	AF:Toggle("Auto Rare Chest",false, function(t)
	_G.RC = t
	while _G.RC do wait()
	workspace.ItemBoughtFromShop:InvokeServer("Rare Chest",1)
	end
	end)
	AF:Toggle("Auto Uncommon Chest",false, function(t)
	_G.UC = t
	while _G.UC do wait()
	workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest",1)
	end
	end)
	AF:Toggle("Auto Common Chest",false, function(t)
	_G.CC = t
	while _G.CC do wait()
	workspace.ItemBoughtFromShop:InvokeServer("Common Chest",1)
	end
	end)
	spawn(function()
	while wait() do
	pcall(function()
	if _G.FarmAuto then
	repeat wait()
	if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
		local Noclip = Instance.new("BodyVelocity")
		Noclip.Name = "BodyClip"
		Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		Noclip.MaxForce = Vector3.new(100000,100000,100000)
		Noclip.Velocity = Vector3.new(0,0,0)
	end
	toposa(CFrame.new(-18.998249053955078, 20.54625701904297, 667.4664306640625))  
	until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-18.998249053955078, 20.54625701904297, 667.4664306640625)).Magnitude <= 10 or not _G.FarmAuto
	repeat wait()
	toposa(CFrame.new(-48.843223571777344, 118.14437103271484, 8547.1845703125))                
	until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-48.843223571777344, 118.14437103271484, 8547.1845703125)).Magnitude <= 10 or not _G.FarmAuto
	repeat wait()
	toposa(CFrame.new(-38.399635314941406, -233.12307739257812, 8653.392578125))
	until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-38.399635314941406, -233.12307739257812, 8653.392578125)).Magnitude <= 10 or not _G.FarmAuto
	repeat wait()
	toposa(CFrame.new(-52.00980758666992, -360.2146911621094, 9491.052734375))
	until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-52.00980758666992, -360.2146911621094, 9491.052734375)).Magnitude <= 10 or not _G.FarmAuto
	wait(5)
	end
	end)
	end
	end)
	
	
	local ST = serv:Channel("Auto Quest", "http://www.roblox.com/asset/?id=7040391851")
	
	ST:Toggle("Auto Quest Find Me",false, function(t)
	_G.QuestFindMe = t
	end)
	
	spawn(function()
	while wait() do
	pcall(function()
		if _G.QuestFindMe then
			if not game:GetService("Workspace").WhiteZone.Quest:FindFirstChild("Butter") then
				local args = {
					[1] = 4
					}
				workspace.QuestMakerEvent:FireServer(unpack(args))
			elseif game:GetService("Workspace").WhiteZone.Quest:FindFirstChild("Butter") then
				fireclickdetector(game:GetService("Workspace").WhiteZone.Quest.Butter.PPart.ClickDetector)
			end
		end
	end)
	end
	end)
	
	
	elseif game.placeId == 6284583030 then --PST
	
	
	do  local ui =  game:GetService("CoreGui"):FindFirstChild("Testui")  if ui then ui:Destroy() end end
	do 
	local ui =  game:GetService("CoreGui"):FindFirstChild("Atom Lib") 
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
	local PresetColor = Color3.fromRGB(66, 134, 255)
	local CloseBind = Enum.KeyCode.RightControl
	
	local Atomlib = Instance.new("ScreenGui")
	
	Atomlib.Name = "Atom Lib"
	Atomlib.Parent = game:GetService("CoreGui")
	Atomlib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
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
	
	do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("Close")  if ui then ui:Destroy() end end
	local Close = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local MainFrameUICorner = Instance.new("UICorner")
	local Button = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	
	Close.Name = "Close"
	Close.Parent = game:GetService("CoreGui").RobloxGui.Modules
	Close.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Close
	MainFrame.Active = true
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	MainFrame.BorderColor3 = Color3.fromRGB(35, 35, 35)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.18696712, 0, 0.164417177, 0)
	MainFrame.Size = UDim2.new(0, 0, 0, 0) 
	
	MakeDraggable(Button,MainFrame)
	
	local DropFrameStroke = Instance.new("UIStroke")
	
	DropFrameStroke.Thickness = 1
	DropFrameStroke.Name = ""
	DropFrameStroke.Parent = MainFrame
	DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
	DropFrameStroke.Color = Color3.fromRGB(255,24,24)
	DropFrameStroke.Transparency = 1
	
	TweenService:Create(
	MainFrame,
	TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Size = UDim2.new(0, 100, 0, 50)}
	):Play()
	
	repeat wait() until MainFrame.Size == UDim2.new(0, 100, 0, 50)
	
	TweenService:Create(
	DropFrameStroke,
	TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{Transparency = 0}
	):Play()
	
	repeat wait() until DropFrameStroke.Transparency == 0
	
	MainFrameUICorner.Name = "MainFrameUICorner"
	MainFrameUICorner.Parent = MainFrame
	
	Button.Name = "Button"
	Button.Parent = MainFrame
	Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button.BackgroundTransparency = 1.000
	Button.Size = UDim2.new(0, 100, 0, 50)
	Button.AutoButtonColor = false
	Button.Font = Enum.Font.SourceSans
	Button.Text = ""
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 14.000
	
	TextLabel.Parent = MainFrame
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(0, 100, 0, 25)
	TextLabel.Font = Enum.Font.GothamSemibold
	TextLabel.Text = "Close"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 12.000
	
	Toggle = false 
	
	Button.MouseButton1Click:Connect(function()
	if Toggle == false then
	TextLabel.TextSize = 0 
	TweenService:Create(
		TextLabel,
		TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextSize = 12}
	):Play()
	TextLabel.Text = "Close"
	game:GetService("CoreGui").Testui.Enabled = true
	else
	TextLabel.TextSize = 0 
	TweenService:Create(
		TextLabel,
		TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextSize = 12}
	):Play()
	TextLabel.Text = "Open"
	game:GetService("CoreGui").Testui.Enabled = false
	end
	Toggle = not Toggle
	end)
	
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
	
	local Testui = Instance.new("ScreenGui")
	Testui.Name = "Testui"
	Testui.Parent = game.CoreGui
	Testui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
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
	
	local ui = {}
	
	function ui:W1n(text,text2,text2Pos,toclose)
	
	CloseBind = toclose or Enum.KeyCode.RightControl
	
	if text2Pos == nil then
	text2Pos = 0.35
	end
	
	local fs = false
	local MainSceen = Instance.new("Frame")
	MainSceen.Name = "MainSceen"
	MainSceen.Parent = Testui
	MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
	MainSceen.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
	MainSceen.BorderSizePixel = 0
	MainSceen.ClipsDescendants = true
	MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainSceen.Size = UDim2.new(0, 550, 0, 300)
	
	local Main_UiConner = Instance.new("UICorner")
	Main_UiConner.Name = "Main_UiConner"
	Main_UiConner.CornerRadius = UDim.new(0, 8)
	Main_UiConner.Parent = MainSceen
	
	local Main_UiStroke = Instance.new("UIStroke")
	
	Main_UiStroke.Thickness = 2
	Main_UiStroke.Name = ""
	Main_UiStroke.Parent = MainSceen
	Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
	Main_UiStroke.Color = Color3.fromRGB(30,30,30)
	Main_UiStroke.Transparency = 0
	
	local ClickFrame = Instance.new("Frame")
	
	ClickFrame.Name = "ClickFrame"
	ClickFrame.Parent = MainSceen
	ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClickFrame.BackgroundTransparency = 1.000
	ClickFrame.ClipsDescendants = true
	ClickFrame.Position = UDim2.new(0.5, 0, 0.0543823242, 0)
	ClickFrame.Size = UDim2.new(0, 550, 0, 30)
	
	MakeDraggable(ClickFrame,MainSceen)
	
	local NameReal = Instance.new("TextLabel")
	
	NameReal.Name = "NameReal"
	NameReal.Parent = MainSceen
	NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
	NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameReal.BackgroundTransparency = 1.000
	NameReal.Position = UDim2.new(0.145454541, 0, 0.0610294119, 0)
	NameReal.Size = UDim2.new(0, 136, 0, 34)
	NameReal.Font = Enum.Font.GothamSemibold
	NameReal.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameReal.TextSize = 13.000
	NameReal.TextTransparency = 0.590
	NameReal.Text = tostring(text)
	NameReal.TextXAlignment = Enum.TextXAlignment.Left
	
	local NameReal2 = Instance.new("TextLabel")
	
	NameReal2.Name = "NameReal"
	NameReal2.Parent = MainSceen
	NameReal2.Font = Enum.Font.GothamSemibold
	NameReal2.TextColor3 = Color3.fromRGB(255, 23, 46)
	NameReal2.TextSize = 13.000
	NameReal2.TextTransparency = 0
	NameReal2.TextXAlignment = Enum.TextXAlignment.Left
	NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
	NameReal2.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
	NameReal2.BackgroundTransparency = 1.000
	NameReal2.Text = tostring(text2)
	NameReal2.Position = UDim2.new(text2Pos, 0, 0.0610294119, 0)
	NameReal2.Size = UDim2.new(0, 136, 0, 34)
	
	local MainSceen2 = Instance.new("Frame")
	
	MainSceen2.Name = "MainSceen2"
	MainSceen2.Parent = MainSceen
	MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)
	MainSceen2.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	MainSceen2.BorderSizePixel = 0
	MainSceen2.ClipsDescendants = true
	MainSceen2.Position = UDim2.new(0.5, 0, 0.550735235, 0)
	MainSceen2.Size = UDim2.new(0, 530, 0, 252)
	
	local Main_UiConner2 = Instance.new("UICorner")
	Main_UiConner2.CornerRadius = UDim.new(0, 8)
	Main_UiConner2.Name = "Main_UiConner2"
	Main_UiConner2.Parent = MainSceen2
	
	local Main_Ui2Stroke = Instance.new("UIStroke")
	
	Main_Ui2Stroke.Thickness = 1
	Main_Ui2Stroke.Name = ""
	Main_Ui2Stroke.Parent = MainSceen2
	Main_Ui2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Main_Ui2Stroke.LineJoinMode = Enum.LineJoinMode.Round
	Main_Ui2Stroke.Color = Color3.fromRGB(50,50,50)
	Main_Ui2Stroke.Transparency = 0
	
	local ScolTapBarFrame = Instance.new("Frame")
	
	ScolTapBarFrame.Name = "ScolTapBarFrame"
	ScolTapBarFrame.Parent = MainSceen2
	ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScolTapBarFrame.BackgroundTransparency = 1.000
	ScolTapBarFrame.BorderSizePixel = 0
	ScolTapBarFrame.ClipsDescendants = true
	ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.0700000003, 0)
	ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
	
	local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")
	
	ScrollingFrame_Menubar.Name = "ScrollingFrame_Menubar"
	ScrollingFrame_Menubar.Parent = ScolTapBarFrame
	ScrollingFrame_Menubar.Active = true
	ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame_Menubar.BackgroundTransparency = 1.000
	ScrollingFrame_Menubar.BorderSizePixel = 0
	ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
	ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
	ScrollingFrame_Menubar.ScrollBarThickness = 3
	
	local UIListLayout_Menubar = Instance.new("UIListLayout")
	
	UIListLayout_Menubar.Name = "UIListLayout_Menubar"
	UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
	UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_Menubar.Padding = UDim.new(0, 10)
	
	local UIPadding_Menubar = Instance.new("UIPadding")
	
	UIPadding_Menubar.Name = "UIPadding_Menubar"
	UIPadding_Menubar.Parent = ScrollingFrame_Menubar
	UIPadding_Menubar.PaddingTop = UDim.new(0, 2)
	
	local PageOrders = -1
	
	local Container_Page = Instance.new("Frame",MainSceen2)
	Container_Page.Name = "Container_Page"
	Container_Page.Parent = MainSceen2
	Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)
	Container_Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container_Page.BackgroundTransparency = 1.000
	Container_Page.Position = UDim2.new(0.499056607, 0, 0.55, 0)
	Container_Page.Size = UDim2.new(0, 511, 0, 200)
	
	local pagesFolder = Instance.new("Folder")
	
	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = Container_Page
	
	local UIPage = Instance.new("UIPageLayout",pagesFolder)
	
	UIPage.Name = "UIPage"
	UIPage.Parent = pagesFolder
	UIPage.SortOrder = Enum.SortOrder.LayoutOrder
	UIPage.EasingDirection = Enum.EasingDirection.InOut
	UIPage.EasingStyle = Enum.EasingStyle.Back
	UIPage.Padding = UDim.new(0, 15)
	UIPage.TweenTime = 0.500
	
	local uitop = {}
	
	local NotiFrame = Instance.new("Frame")
	NotiFrame.Name = "NotiFrame"
	NotiFrame.Parent = Testui
	NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	NotiFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
	NotiFrame.BorderSizePixel = 0
	NotiFrame.Position =  UDim2.new(1, -150, 1, 50)
	NotiFrame.Size = UDim2.new(0, 250, 0, 500)
	NotiFrame.ClipsDescendants = true
	NotiFrame.BackgroundTransparency = 1
	
	
	local Notilistlayout = Instance.new("UIListLayout")
	Notilistlayout.Parent = NotiFrame
	Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	Notilistlayout.Padding = UDim.new(0, 30)
	
	
	function ui:Notification(titel,text,delays)
	local TitleFrame = Instance.new("Frame")
	TitleFrame.Name = "TitleFrame"
	TitleFrame.Parent = NotiFrame
	TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	TitleFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
	TitleFrame.BorderSizePixel = 0
	TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
	TitleFrame.Size = UDim2.new(0, 0, 0, 0)
	TitleFrame.ClipsDescendants = true
	TitleFrame.BackgroundTransparency = 0
	
	local ConnerTitile = Instance.new("UICorner")
	
	ConnerTitile.CornerRadius = UDim.new(0, 4)
	ConnerTitile.Name = ""
	ConnerTitile.Parent = TitleFrame
	
	TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)
	
	local imagenoti = Instance.new("ImageLabel")
	
	imagenoti.Parent = TitleFrame
	imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	imagenoti.BackgroundTransparency = 1.000
	imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
	imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
	imagenoti.Size = UDim2.new(0, 50, 0, 50)
	--  imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=7578496318&width=0&height=0&format=png"
	
	local txdlid = Instance.new("TextLabel")
	
	txdlid.Parent = TitleFrame
	txdlid.Name = "TextLabel_Tap"
	txdlid.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
	txdlid.Size =UDim2.new(0, 160, 0,25 )
	txdlid.Font = Enum.Font.GothamBold
	txdlid.Text = titel
	txdlid.TextColor3 = Color3.fromRGB(0, 2000, 255)
	txdlid.TextSize = 13.000
	txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
	txdlid.Position = UDim2.new(0.37, 0, 0.3, 0)
	-- txdlid.TextYAlignment = Enum.TextYAlignment.Top
	txdlid.TextXAlignment = Enum.TextXAlignment.Left
	txdlid.BackgroundTransparency = 1
	
	local LableFrame = Instance.new("Frame")
	LableFrame.Name = "LableFrame"
	LableFrame.Parent = TitleFrame
	LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LableFrame.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
	LableFrame.BorderSizePixel = 0
	LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
	LableFrame.Size = UDim2.new(0, 260, 0,25 )
	LableFrame.ClipsDescendants = true
	LableFrame.BackgroundTransparency = 1
	
	local TextNoti = Instance.new("TextLabel")
	
	TextNoti.Parent = LableFrame
	TextNoti.Name = "TextLabel_Tap"
	TextNoti.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
	TextNoti.Size =UDim2.new(0, 260, 0,25 )
	TextNoti.Font = Enum.Font.Gotham
	TextNoti.Text = text
	TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextNoti.TextSize = 11.000
	TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
	TextNoti.Position = UDim2.new(0.7, 0, 0.5, 0)
	-- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
	TextNoti.TextXAlignment = Enum.TextXAlignment.Left
	TextNoti.BackgroundTransparency = 1
	
	repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)
	
	local Time = Instance.new("Frame")
	Time.Name = "Time"
	Time.Parent = TitleFrame
	--Time.AnchorPoint = Vector2.new(0.5, 0.5)
	Time.BackgroundColor3 =  Color3.fromRGB(255, 23, 46)
	Time.BorderSizePixel = 0
	Time.Position =  UDim2.new(0, 0, 0.,0)
	Time.Size = UDim2.new(0, 0,0,0)
	Time.ClipsDescendants = false
	Time.BackgroundTransparency = 0
	
	local ConnerTitile_Time = Instance.new("UICorner")
	
	ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
	ConnerTitile_Time.Name = ""
	ConnerTitile_Time.Parent = Time
	
	Time:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Back", 0.3, true)
	repeat wait() until Time.Size == UDim2.new(0, 250-10, 0, 3)
	
	TweenService:Create(
		Time,
		TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
		{Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
	):Play()
	delay(tonumber(delays),function()
		TweenService:Create(
			TitleFrame,
			TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
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
			tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
			tween:Create(Main_UiStroke,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Thickness = 0}):Play()
			uitoggled = true
			wait(.5)
			ui:Notification("UI Toggle","Has Been Close",2.5)
		else
			MainSceen:TweenSize(UDim2.new(0, 550, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .4, true)
			tween:Create(Main_UiStroke,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Thickness = 2}):Play()
			uitoggled = false
			wait(.5)
			ui:Notification("UI Toggle","Has Been Open",2.5)
		end
	end
	end)
	
	function uitop:Tap(text)
	PageOrders = PageOrders + 1
	local name = tostring(text) or tostring(math.random(1,5000))
	
	local Frame_Tap = Instance.new("Frame")
	Frame_Tap.Name = text.."Server"
	Frame_Tap.Parent = ScrollingFrame_Menubar
	Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_Tap.BackgroundTransparency = 1.000
	Frame_Tap.Position = UDim2.new(0, 0, 0.272727281, 0)
	Frame_Tap.Size = UDim2.new(0, 90, 0, 16)
	
	local TextLabel_Tap = Instance.new("TextLabel")
	TextLabel_Tap.Name = "TextLabel_Tap"
	TextLabel_Tap.Parent = Frame_Tap
	TextLabel_Tap.Active = true
	TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_Tap.BorderSizePixel = 0
	TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.800000012, 0)
	TextLabel_Tap.Font = Enum.Font.SourceSans
	TextLabel_Tap.Text = ""
	TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_Tap.TextSize = 14.000
	
	local TextButton_Tap = Instance.new("TextButton")
	
	TextButton_Tap.Name = "TextButton_Tap"
	TextButton_Tap.Parent = Frame_Tap
	TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_Tap.BackgroundTransparency = 1.000
	TextButton_Tap.Position = UDim2.new(0.0480000004, 0, 0.449999988, 0)
	TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
	TextButton_Tap.Font = Enum.Font.Gotham
	TextButton_Tap.Text = tostring(text)
	TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
	TextButton_Tap.TextSize = 12.000
	
	local MainPage = Instance.new("Frame")
	
	MainPage.Name = name.."_MainPage"
	MainPage.Parent = pagesFolder
	MainPage.Active = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1
	MainPage.ClipsDescendants = true
	MainPage.Position = UDim2.new(0.0039138943, 0, 0, 0)
	MainPage.Size = UDim2.new(0, 516, 0, 200)
	MainPage.LayoutOrder = PageOrders
	
	TextButton_Tap.MouseButton1Click:connect(function()
		if MainPage.Name == text.."_MainPage" then
			UIPage:JumpToIndex(MainPage.LayoutOrder)
	
		end
		for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
			if v:IsA("Frame") then
				TweenService:Create(
					v.TextButton_Tap,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155, 155, 155)}
				):Play()
			end
	
			TweenService:Create(
				TextButton_Tap,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{TextColor3 = Color3.fromRGB(255, 23, 46)}
			):Play()
		end
	end)
	
	if fs == false then
		-- TweenService:Create(
		--     TextLabel_Tap,
		--     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		--     {Size = UDim2.new(0, 70, 0, 2)}
		-- ):Play()
		TweenService:Create(
			TextButton_Tap,
			TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{TextColor3 = Color3.fromRGB(255, 23, 46)}
		):Play()
	
		MainPage.Visible = true
		Frame_Tap.Name  = text .. "Server"
		fs  = true
	end
	
	local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")
	ScrollingFrame_Pagefrist.Name = "ScrollingFrame_Pagefrist"
	ScrollingFrame_Pagefrist.Parent = MainPage
	ScrollingFrame_Pagefrist.Active = true
	ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	ScrollingFrame_Pagefrist.BorderSizePixel = 0
	ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 200)
	ScrollingFrame_Pagefrist.ScrollBarThickness = 4
	
	local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
	local UIPadding_Pagefrist = Instance.new("UIPadding")
	
	UIGridLayout_Pagefrist.Name = "UIGridLayout_Pagefrist"
	UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
	UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
	UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 178)
	
	UIPadding_Pagefrist.Name = "UIPadding_Pagefrist"
	UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
	UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
	UIPadding_Pagefrist.PaddingTop = UDim.new(0, 10)
	
	local uipage = {}
	
	function uipage:newpage()
		local Pageframe = Instance.new("Frame")
		Pageframe.Name = "Pageframe"
		Pageframe.Parent = ScrollingFrame_Pagefrist
		Pageframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Pageframe.BorderColor3 = Color3.fromRGB(15, 15, 15)
		Pageframe.Position = UDim2.new(0, 0, -1.12658226, 0)
		Pageframe.Size = UDim2.new(0, 240, 0, 328)
	
		local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")
		ScrollingFrame_Pageframe.Name = "ScrollingFrame_Pageframe"
		ScrollingFrame_Pageframe.Parent = Pageframe
		ScrollingFrame_Pageframe.Active = true
		ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		ScrollingFrame_Pageframe.BackgroundTransparency = 1.000
		ScrollingFrame_Pageframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
		ScrollingFrame_Pageframe.BorderSizePixel = 0
		ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 178)
		ScrollingFrame_Pageframe.ScrollBarThickness = 3
		ScrollingFrame_Pageframe.ClipsDescendants = true
	
		local UIPadding_Pageframe = Instance.new("UIPadding")
		local UIListLayout_Pageframe = Instance.new("UIListLayout")
	
		UIPadding_Pageframe.Name = "UIPadding_Pageframe"
		UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
		UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
		UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)
	
		UIListLayout_Pageframe.Name = "UIListLayout_Pageframe"
		UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
		UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_Pageframe.Padding = UDim.new(0, 7)
	
		local Pageframe_UICorner = Instance.new("UICorner")
	
		Pageframe_UICorner.Name = "Pageframe_UICorner"
		Pageframe_UICorner.Parent = Pageframe
		Pageframe_UICorner.CornerRadius = UDim.new(0, 8)
	
		local Pageframe_UIStroke = Instance.new("UIStroke")
	
		Pageframe_UIStroke.Thickness = 1
		Pageframe_UIStroke.Name = ""
		Pageframe_UIStroke.Parent = Pageframe
		Pageframe_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
		Pageframe_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
		Pageframe_UIStroke.Color = Color3.fromRGB(0,0,0)
		Pageframe_UIStroke.Transparency = 0
	
		UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
		end)
	
		UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
		end)
	
		game:GetService("RunService").Stepped:Connect(function ()
			pcall(function ()
				ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
				ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
				ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 20)
			end)
		end)
	
		local ui4 = {}
	
		function ui4:Toggle(text,config,callback)
			local Toggle = Instance.new("Frame")
	
			Toggle.Name = "Toggle"
			Toggle.Parent = ScrollingFrame_Pageframe
			Toggle.Active = true
			Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1
			Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
			Toggle.Size = UDim2.new(0, 250, 0, 35)
	
			local TextButton_Toggle = Instance.new("TextButton")
			TextButton_Toggle.Name = "TextButton_Toggle"
			TextButton_Toggle.Parent = Toggle
			TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Toggle.BackgroundTransparency = 1.000
			TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
			TextButton_Toggle.Font = Enum.Font.SourceSans
			TextButton_Toggle.Text = " "
			TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_Toggle.TextSize = 14.000
	
			local TextButton_2_Toggle = Instance.new("TextButton")
	
			TextButton_2_Toggle.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle.Parent = TextButton_Toggle
			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
			TextButton_2_Toggle.BorderSizePixel = 0
			TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
			TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
			TextButton_2_Toggle.AutoButtonColor = false
			TextButton_2_Toggle.Font = Enum.Font.SourceSans
			TextButton_2_Toggle.Text = " "
			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle.TextSize = 14.000
	
			local Main_UiStroke = Instance.new("UIStroke")
	
			Main_UiStroke.Thickness = 1
			Main_UiStroke.Name = ""
			Main_UiStroke.Parent = TextButton_2_Toggle
			Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke.Transparency = 0
	
			local TextButton_2_Toggle2 = Instance.new("TextButton")
	
			TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle2.Parent = TextButton_2_Toggle
			TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
			TextButton_2_Toggle2.BorderSizePixel = 0
			TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
			TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
			TextButton_2_Toggle2.AutoButtonColor = false
			TextButton_2_Toggle2.Font = Enum.Font.SourceSans
			TextButton_2_Toggle2.Text = " "
			TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle2.TextSize = 14.000
	
			local UICorner2 = Instance.new("UICorner")
	
			UICorner2.CornerRadius = UDim.new(0, 6)
			UICorner2.Parent = TextButton_2_Toggle2
	
			local Main_UiStroke2 = Instance.new("UIStroke")
	
			Main_UiStroke2.Thickness = 1
			Main_UiStroke2.Name = ""
			Main_UiStroke2.Parent = TextButton_2_Toggle2
			Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2.Transparency = 0
	
			local UICorner = Instance.new("UICorner")
	
			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = TextButton_2_Toggle
	
			local ImageButton = Instance.new("ImageButton")
	
			ImageButton.Parent = TextButton_2_Toggle
			ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			ImageButton.BackgroundTransparency = 0
			ImageButton.BorderSizePixel = 0
			ImageButton.AutoButtonColor = false
			ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageButton.Size = UDim2.new(0, 0, 0, 0)
	
			local UICorner6 = Instance.new("UICorner")
	
			UICorner6.CornerRadius = UDim.new(0, 6)
			UICorner6.Parent = ImageButton
	
			local TextLabel_Toggle = Instance.new("TextLabel")
	
			TextLabel_Toggle.Name = "TextLabel_Toggle"
			TextLabel_Toggle.Parent = Toggle
			TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Toggle.BackgroundTransparency = 1
			TextLabel_Toggle.Position = UDim2.new(0.55, 0, 0.5, 0)
			TextLabel_Toggle.Size = UDim2.new(0, 200, 0, 25)
			TextLabel_Toggle.Font = Enum.Font.Gotham
			TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Toggle.TextSize = 12.000
			TextLabel_Toggle.Text = text
			TextLabel_Toggle.TextWrapped = true
			TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left
	
			local Main_UiStroke2TextLabel_Toggle = Instance.new("UIStroke")
	
			Main_UiStroke2TextLabel_Toggle.Thickness = 1
			Main_UiStroke2TextLabel_Toggle.Name = ""
			Main_UiStroke2TextLabel_Toggle.Parent = TextLabel_Toggle
			Main_UiStroke2TextLabel_Toggle.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			Main_UiStroke2TextLabel_Toggle.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2TextLabel_Toggle.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2TextLabel_Toggle.Transparency = 0
	
			TextButton_Toggle.MouseEnter:Connect(function()
				TweenService:Create(
					TextLabel_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155,155,155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle2,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			TextButton_Toggle.MouseLeave:Connect(function()
				TweenService:Create(
					TextLabel_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle2,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(7,7,7)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
			local check = {toogle = false ; loacker = true ; togfunction = {
	
			};}
	
			TextButton_Toggle.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			TextButton_2_Toggle.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			TextButton_2_Toggle2.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			ImageButton.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			if config == true then
				TweenService:Create(
					ImageButton,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				wait(0.1)
				TweenService:Create(
					ImageButton,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				check.toogle = true
				callback(check.toogle)
			end
			local lockerframe = Instance.new("Frame")
	
			lockerframe.Name = "lockerframe"
			lockerframe.Parent = Toggle
			lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			lockerframe.BackgroundTransparency = 1
			lockerframe.BorderSizePixel = 0
			lockerframe.Size = UDim2.new(0, 300, 0, 35)
			lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
			lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)
	
			local LockerImageLabel = Instance.new("ImageLabel")
			LockerImageLabel.Parent = lockerframe
			LockerImageLabel.BackgroundTransparency = 1.000
			LockerImageLabel.BorderSizePixel = 0
			LockerImageLabel.Position = UDim2.new(0.45, 0, 0.5, 0)
			LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
			LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"
	
			function check.togfunction:lock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 0.7}
				):Play()
				wait(0.5)
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 25, 0, 25)}
				):Play()
	
				check.loacker  = false
			end
			function check.togfunction:unlock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 1}
				):Play()
				wait(0.5)
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 0, 0, 0)}
				):Play()
				check.loacker  = true
			end
			return  check.togfunction
		end
		function ui4:ToggleS(text,config,callback)
			local Toggle = Instance.new("Frame")
	
			Toggle.Name = "Toggle"
			Toggle.Parent = ScrollingFrame_Pageframe
			Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1.000
			Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
			Toggle.Size = UDim2.new(0, 210, 0, 30)
	
			local Toggle_2_Toggle_UIStroke = Instance.new("UIStroke")
	
			Toggle_2_Toggle_UIStroke.Thickness = 1
			Toggle_2_Toggle_UIStroke.Name = ""
			Toggle_2_Toggle_UIStroke.Parent = Toggle
			Toggle_2_Toggle_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Toggle_2_Toggle_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
			Toggle_2_Toggle_UIStroke.Color = Color3.fromRGB(255, 46, 46)
			Toggle_2_Toggle_UIStroke.Transparency = 0
	
			local Toggle_Pageframe_Uiconner = Instance.new("UICorner")
	
			Toggle_Pageframe_Uiconner.CornerRadius = UDim.new(0, 4)
			Toggle_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
			Toggle_Pageframe_Uiconner.Parent = Toggle
	
			local TextButton_Toggle = Instance.new("TextButton")
	
			TextButton_Toggle.Name = "TextButton_Toggle"
			TextButton_Toggle.Parent = Toggle
			TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Toggle.BackgroundTransparency = 1.000
			TextButton_Toggle.Size = UDim2.new(0, 210, 0, 30)
			TextButton_Toggle.AutoButtonColor = false
			TextButton_Toggle.Font = Enum.Font.SourceSans
			TextButton_Toggle.Text = " "
			TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_Toggle.TextSize = 14.000
	
			local TextButton_2_Toggle = Instance.new("TextButton")
	
			TextButton_2_Toggle.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle.Parent = TextButton_Toggle
			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_2_Toggle.BorderSizePixel = 0
			TextButton_2_Toggle.Position = UDim2.new(0.87, 0, 0.5, 0)
			TextButton_2_Toggle.Size = UDim2.new(0, 43, 0, 19)
			TextButton_2_Toggle.AutoButtonColor = false
			TextButton_2_Toggle.Font = Enum.Font.SourceSans
			TextButton_2_Toggle.Text = " "
			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle.TextSize = 14.000
	
			local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
	
			TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
			TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle
	
			local TextButton_3_Toggle = Instance.new("TextButton")
	
			TextButton_3_Toggle.Name = "TextButton_3_Toggle"
			TextButton_3_Toggle.Parent = TextButton_2_Toggle
			TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_3_Toggle.BorderSizePixel = 0
			TextButton_3_Toggle.Position = UDim2.new(0, 10, 0.5, 0)
			TextButton_3_Toggle.Size = UDim2.new(0, 17, 0, 17)
			TextButton_3_Toggle.AutoButtonColor = false
			TextButton_3_Toggle.Font = Enum.Font.SourceSans
			TextButton_3_Toggle.Text = " "
			TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_3_Toggle.TextSize = 14.000
	
			local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")
	
			TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
			TextButton_Pageframe_Uiconner2.Name = "TextButton_Pageframe_Uiconner2"
			TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle
	
			local TextLabel_Toggle = Instance.new("TextLabel")
	
			TextLabel_Toggle.Name = "TextLabel_Toggle"
			TextLabel_Toggle.Parent = Toggle
			TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Toggle.BackgroundTransparency = 1
			TextLabel_Toggle.ClipsDescendants = true
			TextLabel_Toggle.Position = UDim2.new(0.35, 0, 0.5, 0)
			TextLabel_Toggle.Size = UDim2.new(0, 155, 0, 31)
			TextLabel_Toggle.Font = Enum.Font.GothamSemibold
			TextLabel_Toggle.Text = text
			TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Toggle.TextSize = 11.000
			TextLabel_Toggle.TextWrapped = true
			TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Center
	
			local check = {toogle = false ; loacker = true ; togfunction = {
	
			};}
	
			TextButton_Toggle.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Toggle_2_Toggle_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
				elseif  check.loacker ==  true then
					TweenService:Create(
						Toggle_2_Toggle_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color =  Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 46, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0, 10, 0.5, 0), "Out", "Quad", 0.1, true)
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			TextButton_3_Toggle.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						Toggle_2_Toggle_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
				elseif  check.loacker ==  true then
					TweenService:Create(
						Toggle_2_Toggle_UIStroke,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Color =  Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_3_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 46, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextButton_2_Toggle,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0, 10, 0.5, 0), "Out", "Quad", 0.1, true)
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			if config == true then
				TweenService:Create(
					TextButton_3_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					Toggle_2_Toggle_UIStroke,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
				check.toogle = true
				callback(check.toogle)
			end
			local lockerframe = Instance.new("Frame")
	
			lockerframe.Name = "lockerframe"
			lockerframe.Parent = Toggle
			lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			lockerframe.BackgroundTransparency = 1
			lockerframe.BorderSizePixel = 0
			lockerframe.Size = UDim2.new(0, 245, 0, 35)
			lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
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
		function ui4:ToggleDesc(text,text2,config,callback)
			local Toggle = Instance.new("Frame")
	
			Toggle.Name = "Toggle"
			Toggle.Parent = ScrollingFrame_Pageframe
			Toggle.Active = true
			Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1
			Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
			Toggle.Size = UDim2.new(0, 250, 0, 35)
	
			local TextButton_Toggle = Instance.new("TextButton")
			TextButton_Toggle.Name = "TextButton_Toggle"
			TextButton_Toggle.Parent = Toggle
			TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton_Toggle.BackgroundTransparency = 1.000
			TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
			TextButton_Toggle.Font = Enum.Font.SourceSans
			TextButton_Toggle.Text = " "
			TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_Toggle.TextSize = 14.000
	
			local TextButton_2_Toggle = Instance.new("TextButton")
	
			TextButton_2_Toggle.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle.Parent = TextButton_Toggle
			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
			TextButton_2_Toggle.BorderSizePixel = 0
			TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
			TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
			TextButton_2_Toggle.AutoButtonColor = false
			TextButton_2_Toggle.Font = Enum.Font.SourceSans
			TextButton_2_Toggle.Text = " "
			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle.TextSize = 14.000
	
			local Main_UiStroke = Instance.new("UIStroke")
	
			Main_UiStroke.Thickness = 1
			Main_UiStroke.Name = ""
			Main_UiStroke.Parent = TextButton_2_Toggle
			Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke.Transparency = 0
	
			local TextButton_2_Toggle2 = Instance.new("TextButton")
	
			TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle2.Parent = TextButton_2_Toggle
			TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
			TextButton_2_Toggle2.BorderSizePixel = 0
			TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
			TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
			TextButton_2_Toggle2.AutoButtonColor = false
			TextButton_2_Toggle2.Font = Enum.Font.SourceSans
			TextButton_2_Toggle2.Text = " "
			TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle2.TextSize = 14.000
	
			local UICorner2 = Instance.new("UICorner")
	
			UICorner2.CornerRadius = UDim.new(0, 6)
			UICorner2.Parent = TextButton_2_Toggle2
	
			local Main_UiStroke2 = Instance.new("UIStroke")
	
			Main_UiStroke2.Thickness = 1
			Main_UiStroke2.Name = ""
			Main_UiStroke2.Parent = TextButton_2_Toggle2
			Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2.Transparency = 0
	
			local UICorner = Instance.new("UICorner")
	
			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = TextButton_2_Toggle
	
			local ImageButton = Instance.new("ImageButton")
	
			ImageButton.Parent = TextButton_2_Toggle
			ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			ImageButton.BackgroundTransparency = 0
			ImageButton.BorderSizePixel = 0
			ImageButton.AutoButtonColor = false
			ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageButton.Size = UDim2.new(0, 0, 0, 0)
	
			local UICorner6 = Instance.new("UICorner")
	
			UICorner6.CornerRadius = UDim.new(0, 6)
			UICorner6.Parent = ImageButton
	
			local TextLabel_Toggle = Instance.new("TextLabel")
	
			TextLabel_Toggle.Name = "TextLabel_Toggle"
			TextLabel_Toggle.Parent = Toggle
			TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Toggle.BackgroundTransparency = 1
			TextLabel_Toggle.Position = UDim2.new(0.55, 0, 0.5, 0)
			TextLabel_Toggle.Size = UDim2.new(0, 200, 0, 25)
			TextLabel_Toggle.Font = Enum.Font.Gotham
			TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_Toggle.TextSize = 12.000
			TextLabel_Toggle.Text = text
			TextLabel_Toggle.TextWrapped = true
			TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left
	
			local Main_UiStroke2 = Instance.new("UIStroke")
	
			Main_UiStroke2.Thickness = 1
			Main_UiStroke2.Name = ""
			Main_UiStroke2.Parent = TextLabel_Toggle
			Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2.Transparency = 0
	
			local DescButton2 = Instance.new("ImageButton")
	
			DescButton2.Parent = Toggle
			DescButton2.AnchorPoint = Vector2.new(0.5, 0.5)
			DescButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DescButton2.BackgroundTransparency = 1.000
			DescButton2.Position = UDim2.new(0.82, 0, 0.5, 0)
			DescButton2.Size = UDim2.new(0, 21, 0, 21)
			DescButton2.Image = "rbxassetid://3926305904"
			DescButton2.ImageRectOffset = Vector2.new(4, 804)
			DescButton2.ImageRectSize = Vector2.new(36, 36)
			DescButton2.ImageColor3 = Color3.fromRGB(255, 255, 255)
	
			local ScolDown = Instance.new("ScrollingFrame")
	
			ScolDown.Name = "ScolDown"
			ScolDown.Parent = ScrollingFrame_Pageframe
			ScolDown.Active = true
			ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScolDown.BackgroundTransparency = 1
			ScolDown.BorderSizePixel = 0
			ScolDown.Position = UDim2.new(0, 0, 0, 0)
			ScolDown.Size = UDim2.new(0, 245, 0, 0)
			ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
			ScolDown.ScrollBarThickness = 0
	
			local DescButton3 = Instance.new("ImageButton")
	
			DescButton3.Parent = ScolDown
			DescButton3.AnchorPoint = Vector2.new(0.5, 0.5)
			DescButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DescButton3.BackgroundTransparency = 1.000
			DescButton3.Position = UDim2.new(0.02, 0, 0.5, 0)
			DescButton3.Size = UDim2.new(0, 21, 0, 21)
			DescButton3.Image = "rbxassetid://3926307971"
			DescButton3.Rotation = 90
			DescButton3.ImageRectOffset = Vector2.new(324, 524)
			DescButton3.ImageRectSize = Vector2.new(36, 36)
			DescButton3.ImageColor3 = Color3.fromRGB(255, 255, 255)
			DescButton3.ImageTransparency = 1
	
			local DropFrame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
	
			--Properties:
	
			DropFrame.Name = "DropFrame"
			DropFrame.Parent = ScolDown
			DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			DropFrame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			DropFrame.BackgroundTransparency = 1
			DropFrame.BorderSizePixel = 0
			DropFrame.Position = UDim2.new(0, 105, 0, 15)
			DropFrame.Size = UDim2.new(0, 0, 0, 25)
	
			local Main_UiStroke3 = Instance.new("UIStroke")
	
			Main_UiStroke3.Thickness = 0
			Main_UiStroke3.Name = ""
			Main_UiStroke3.Parent = DropFrame
			Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke3.Transparency = 0
	
			local TextLabel_Toggle2 = Instance.new("TextLabel")
	
			TextLabel_Toggle2.Name = "TextLabel_Toggle"
			TextLabel_Toggle2.Parent = DropFrame
			TextLabel_Toggle2.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
			TextLabel_Toggle2.BackgroundTransparency = 1
			TextLabel_Toggle2.Position = UDim2.new(0, 4, 0.025, 0)
			TextLabel_Toggle2.Size = UDim2.new(0, 175, 0, 25)
			TextLabel_Toggle2.Font = Enum.Font.GothamSemibold
			TextLabel_Toggle2.TextColor3 = Color3.fromRGB(255, 23, 46)
			TextLabel_Toggle2.TextSize = 10
			TextLabel_Toggle2.TextTransparency = 1
			TextLabel_Toggle2.Text = text2
			TextLabel_Toggle2.TextWrapped = true
			TextLabel_Toggle2.BorderSizePixel = 0
			TextLabel_Toggle2.TextXAlignment = Enum.TextXAlignment.Left
	
			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = DropFrame
	
			local Desccheck = false
	
			local check = {toogle = false ; loacker = true ; togfunction = {
	
			};}
	
			DescButton2.MouseButton1Click:Connect(function()
				if Desccheck == false and check.loacker == true then
					TweenService:Create(
						DescButton2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						ScolDown,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 500, 0, 35)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until ScolDown.Size == UDim2.new(0, 500, 0, 35)
					TweenService:Create(
						DescButton3,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageTransparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until DescButton3.ImageTransparency == 0
					TweenService:Create(
						DescButton3,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = 270} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until DescButton3.Rotation == 270
					TweenService:Create(
						Main_UiStroke3,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Thickness = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until Main_UiStroke3.Thickness == 1
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 175, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_Toggle2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						DescButton2,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					TweenService:Create(
						TextLabel_Toggle2,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until TextLabel_Toggle2.TextTransparency == 1
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until DropFrame.Size == UDim2.new(0, 0, 0, 25)
					TweenService:Create(
						Main_UiStroke3,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Thickness = 0} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until Main_UiStroke3.Thickness == 0
					TweenService:Create(
						DescButton3,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = 90} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until DescButton3.Rotation == 90
					TweenService:Create(
						DescButton3,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
					):Play()
					repeat wait() until DescButton3.ImageTransparency == 1
					TweenService:Create(
						ScolDown,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 245, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					Desccheck = not Desccheck
				end
			end)
	
			TextButton_Toggle.MouseEnter:Connect(function()
				TweenService:Create(
					TextLabel_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155,155,155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle2,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			TextButton_Toggle.MouseLeave:Connect(function()
				TweenService:Create(
					TextLabel_Toggle,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					TextButton_2_Toggle2,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(7,7,7)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			TextButton_Toggle.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			TextButton_2_Toggle.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			TextButton_2_Toggle2.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			ImageButton.MouseButton1Click:Connect(function()
				if check.toogle == false and check.loacker == true  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				elseif  check.loacker ==  true then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				if  check.loacker == true  then
					check.toogle = not check.toogle
					callback(check.toogle)
				end
			end)
	
			if config == true then
				TweenService:Create(
					ImageButton,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				wait(0.1)
				TweenService:Create(
					ImageButton,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				check.toogle = true
				callback(check.toogle)
			end
			local lockerframe = Instance.new("Frame")
	
			lockerframe.Name = "lockerframe"
			lockerframe.Parent = Toggle
			lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			lockerframe.BackgroundTransparency = 1
			lockerframe.BorderSizePixel = 0
			lockerframe.Size = UDim2.new(0, 300, 0, 35)
			lockerframe.Position = UDim2.new(0.50, 0, 0.5, 0)
			lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)
	
			local LockerImageLabel = Instance.new("ImageLabel")
			LockerImageLabel.Parent = lockerframe
			LockerImageLabel.BackgroundTransparency = 1.000
			LockerImageLabel.BorderSizePixel = 0
			LockerImageLabel.Position = UDim2.new(0.45, 0, 0.5, 0)
			LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
			LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"
	
			function check.togfunction:lock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 0.7}
				):Play()
				wait(0.5)
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 25, 0, 25)}
				):Play()
	
				check.loacker  = false
			end
			function check.togfunction:unlock()
				TweenService:Create(
					lockerframe,
					TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
					{BackgroundTransparency = 1}
				):Play()
				wait(0.5)
				TweenService:Create(
					LockerImageLabel,
					TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
					{Size = UDim2.new(0, 0, 0, 0)}
				):Play()
				check.loacker  = true
			end
			return  check.togfunction
		end
		function ui4:Button(text,callback)
			local Button = Instance.new("Frame")
			local Btn = Instance.new("TextButton")
			local BtnName = Instance.new("TextLabel")
			local UICorner_12 = Instance.new("UICorner")
	
			Button.Name = "Button"
			Button.Parent = ScrollingFrame_Pageframe
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Button.Size = UDim2.new(0, 210, 0, 25)
	
			Btn.Name = "Btn"
			Btn.Parent = Button
			Btn.BackgroundColor3 = Color3.fromRGB(10,10,10)
			Btn.BackgroundTransparency = 0
			Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Btn.BorderSizePixel = 0
			Btn.Position = UDim2.new(0, 0, -0.00100000005, 0)
			Btn.Size = UDim2.new(0, 210, 0, 25)
			Btn.Text = ""
			Btn.AutoButtonColor = false
	
			BtnName.Name = "BtnName"
			BtnName.Parent = Btn
			BtnName.BackgroundTransparency = 1.000
			BtnName.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BtnName.BorderSizePixel = 0
			BtnName.Size = UDim2.new(0, 0, 0, 0)
			BtnName.Position = UDim2.new(0.5, 0, 0.5, 0)
			BtnName.Font = Enum.Font.Gotham
			BtnName.Text = "  ".. text
			BtnName.TextColor3 = Color3.fromRGB(255, 255, 255)
			BtnName.TextSize = 11.000
			BtnName.TextXAlignment = Enum.TextXAlignment.Center
	
			local Main_UiStroke3 = Instance.new("UIStroke")
	
			Main_UiStroke3.Thickness = 1
			Main_UiStroke3.Name = ""
			Main_UiStroke3.Parent = Btn
			Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke3.Transparency = 0
	
			UICorner_12.CornerRadius = UDim.new(0, 4)
			UICorner_12.Parent = Btn
	
			Btn.MouseEnter:Connect(function()
				TweenService:Create(
					Main_UiStroke3,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			Btn.MouseLeave:Connect(function()
				TweenService:Create(
					Main_UiStroke3,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			Btn.MouseButton1Click:Connect(function()
				BtnName.TextSize = 0
				TweenService:Create(
					BtnName,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextSize = 11} -- UDim2.new(0, 128, 0, 25)
				):Play()
				pcall(callback)
			end)
		end
		function ui4:Button2(text,callback)
			local Button = Instance.new("Frame")
			local Btn = Instance.new("TextButton")
			local BtnName = Instance.new("TextLabel")
			local UICorner_12 = Instance.new("UICorner")
	
			Button.Name = "Button"
			Button.Parent = ScrollingFrame_Pageframe
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Button.Size = UDim2.new(0, 210, 0, 25)
	
			Btn.Name = "Btn"
			Btn.Parent = Button
			Btn.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			Btn.BackgroundTransparency = 0
			Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Btn.BorderSizePixel = 0
			Btn.Position = UDim2.new(0, 0, -0.00100000005, 0)
			Btn.Size = UDim2.new(0, 210, 0, 25)
			Btn.Text = ""
			Btn.AutoButtonColor = false
	
			BtnName.Name = "BtnName"
			BtnName.Parent = Btn
			BtnName.BackgroundTransparency = 1.000
			BtnName.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BtnName.BorderSizePixel = 0
			BtnName.Size = UDim2.new(0, 0, 0, 0)
			BtnName.Position = UDim2.new(0.5, 0, 0.5, 0)
			BtnName.Font = Enum.Font.Gotham
			BtnName.Text = "  ".. text
			BtnName.TextColor3 = Color3.fromRGB(255, 255, 255)
			BtnName.TextSize = 11.000
			BtnName.TextXAlignment = Enum.TextXAlignment.Center
	
			local Main_UiStroke3 = Instance.new("UIStroke")
	
			Main_UiStroke3.Thickness = 1
			Main_UiStroke3.Name = ""
			Main_UiStroke3.Parent = Btn
			Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke3.Transparency = 0
	
			UICorner_12.CornerRadius = UDim.new(0, 4)
			UICorner_12.Parent = Btn
	
			Btn.MouseEnter:Connect(function()
				TweenService:Create(
					Main_UiStroke3,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			Btn.MouseLeave:Connect(function()
				TweenService:Create(
					Main_UiStroke3,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			Btn.MouseButton1Click:Connect(function()
				BtnName.TextSize = 0
				TweenService:Create(
					BtnName,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextSize = 11} -- UDim2.new(0, 128, 0, 25)
				):Play()
				pcall(callback)
			end)
		end
		function ui4:Line()
			local LineFrame = Instance.new("Frame")
	
			LineFrame.Name = "LineFrame"
			LineFrame.Parent = ScrollingFrame_Pageframe
			LineFrame.BackgroundColor3 =  Color3.fromRGB(0, 0, 0)
			LineFrame.BorderSizePixel = 0
			LineFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
			LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			LineFrame.Size = UDim2.new(0, 335, 0, 1)
			LineFrame.BackgroundTransparency  = 0
			LineFrame.ClipsDescendants = true
	
			local LineFrame_BindConner = Instance.new("UICorner")
	
			LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
			LineFrame_BindConner.Name = ""
			LineFrame_BindConner.Parent = LineFrame
		end
		function ui4:Blank(count)
			if count == nil then
				count = 0.01
			end
			local BlankFrame = Instance.new("Frame")
	
	
			BlankFrame.Name = "Mainframenoti"
			BlankFrame.Parent = ScrollingFrame_Pageframe
			BlankFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
			BlankFrame.BackgroundTransparency = 1
			BlankFrame.BorderSizePixel = 0
			BlankFrame.ClipsDescendants = false
			BlankFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			BlankFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
			BlankFrame.Size = UDim2.new(0, 213, 0, count)
		end
		function ui4:Title(text)
			local tiframe = Instance.new("Frame")
	
			tiframe.Name = "tiframe"
			tiframe.Parent = ScrollingFrame_Pageframe
			tiframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			tiframe.BackgroundTransparency = 1
			tiframe.BorderSizePixel = 0
			tiframe.ClipsDescendants = true
			tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
			tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
			tiframe.Size = UDim2.new(0, 210, 0, 20)
	
			local  lineframe3 = Instance.new("TextLabel")
	
			lineframe3.Parent = tiframe
			lineframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			lineframe3.BackgroundTransparency = 1
			lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)
			lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
			lineframe3.BorderSizePixel = 0
			lineframe3.Size = UDim2.new(0, 210, 0, 20)
			lineframe3.Font = Enum.Font.GothamSemibold
			lineframe3.Text = tostring(text)
			lineframe3.TextColor3 = Color3.fromRGB(255, 23, 46)
			lineframe3.TextSize = 13.000
			lineframe3.TextWrapped = true
		end
		function ui4:Label(text)
	
			local labelfuc = {}
	
			local Button = Instance.new("Frame")
	
			Button.Name = "Button"
			Button.Parent = ScrollingFrame_Pageframe
			Button.BackgroundColor3 = Color3.fromRGB(42,42,42)
			Button.BackgroundTransparency = 1
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(0, 210, 0, 25)
	
			local ButtonCorner = Instance.new("UICorner")
	
			ButtonCorner.CornerRadius = UDim.new(0, 4)
			ButtonCorner.Parent = Button
	
			local  Labelxd = Instance.new("TextLabel")
	
			Labelxd.Parent = Button
			Labelxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Labelxd.BackgroundTransparency = 1
			Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
			Labelxd.Position = UDim2.new(0.5, 0, 0.5, 0)
			Labelxd.BorderSizePixel = 0
			Labelxd.Size = UDim2.new(0, 210, 0, 13)
			Labelxd.Font = Enum.Font.Gotham
			Labelxd.Text = tostring(text)
			Labelxd.TextColor3 = Color3.fromRGB(255, 255, 255)
			Labelxd.TextSize = 12.000
			Labelxd.TextTransparency = 0.5
			Labelxd.TextXAlignment = Enum.TextXAlignment.Left
			Labelxd.TextWrapped = true
	
			function  labelfuc:Change(text2)
				Labelxd.Text = tostring(text2)
			end
			return  labelfuc
		end
		function ui4:Slider(text,floor,min,max,de,lol,callback)
	
			local sliderfunc = {}
			local SliderFrame = Instance.new("Frame")
	
			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = ScrollingFrame_Pageframe
			SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			SliderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
			SliderFrame.BackgroundTransparency = 1
			SliderFrame.ClipsDescendants = true
			SliderFrame.Position = UDim2.new(0.5, 0, 0.457317084, 0)
			SliderFrame.Size = UDim2.new(0, 210, 0, 47)
	
			local Main_UiStroke2 = Instance.new("UIStroke")
	
			Main_UiStroke2.Thickness = 1
			Main_UiStroke2.Name = ""
			Main_UiStroke2.Parent = SliderFrame
			Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2.Transparency = 0
	
			local SliderFrame_UICorner = Instance.new("UICorner")
			SliderFrame_UICorner.Name = "SliderFrame_UICorner"
			SliderFrame_UICorner.Parent = SliderFrame
			SliderFrame_UICorner.CornerRadius = UDim.new(0, 4)
	
			local LabelNameSlider = Instance.new("TextLabel")
	
			LabelNameSlider.Name = "LabelNameSlider"
			LabelNameSlider.Parent = SliderFrame
			LabelNameSlider.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelNameSlider.BackgroundTransparency = 1.000
			LabelNameSlider.BorderSizePixel = 0
			LabelNameSlider.Position = UDim2.new(0.3, 0, 0.285106242, 0)
			LabelNameSlider.Size = UDim2.new(0, 114, 0, 20)
			LabelNameSlider.Font = Enum.Font.Gotham
			LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelNameSlider.Text = tostring(text)
			LabelNameSlider.TextSize = 11.000
			LabelNameSlider.TextWrapped = true
			LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left
	
			local Main_UiStroke2LabelNameSlider = Instance.new("UIStroke")
	
			Main_UiStroke2LabelNameSlider.Thickness = 1
			Main_UiStroke2LabelNameSlider.Name = ""
			Main_UiStroke2LabelNameSlider.Parent = LabelNameSlider
			Main_UiStroke2LabelNameSlider.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			Main_UiStroke2LabelNameSlider.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2LabelNameSlider.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2LabelNameSlider.Transparency = 0
	
			local ShowValueFrame = Instance.new("Frame")
	
			ShowValueFrame.Name = "ShowValueFrame"
			ShowValueFrame.Parent = SliderFrame
			ShowValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			ShowValueFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
			ShowValueFrame.BorderSizePixel = 0
			ShowValueFrame.Position = UDim2.new(0.85, 0, 0.285106391, 0)
			ShowValueFrame.Size = UDim2.new(0, 50, 0, 15)
	
			local Main_UiStroke3 = Instance.new("UIStroke")
	
			Main_UiStroke3.Thickness = 1
			Main_UiStroke3.Name = ""
			Main_UiStroke3.Parent = ShowValueFrame
			Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke3.Transparency = 0
	
			local ShowValueFrameUICorner = Instance.new("UICorner")
			ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
			ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
			ShowValueFrameUICorner.Parent = ShowValueFrame
	
			local DefaultValue = Instance.new("ImageButton")
	
			DefaultValue.Name = "Imatog"
			DefaultValue.Parent = SliderFrame
			DefaultValue.BackgroundTransparency = 1.000
			DefaultValue.BorderSizePixel = 0
			DefaultValue.Position = UDim2.new(0.45, 0, 0.15, 0)
			DefaultValue.Size = UDim2.new(0, 15, 0, 15)
			DefaultValue.Image = "rbxassetid://7072721335"
			DefaultValue.ImageColor3 =  Color3.fromRGB(255, 23, 46)
	
			local Addvalue = Instance.new("ImageButton")
	
			Addvalue.Name = "Imatog"
			Addvalue.Parent = SliderFrame
			Addvalue.BackgroundTransparency = 1.000
			Addvalue.BorderSizePixel = 0
			Addvalue.Position = UDim2.new(0.55, 0, 0.15, 0)
			Addvalue.Size = UDim2.new(0, 15, 0, 15)
			Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
			Addvalue.ImageColor3 =  Color3.fromRGB(255, 23, 46)
	
			local Deletevalue = Instance.new("ImageButton")
	
			Deletevalue.Name = "Imatog"
			Deletevalue.Parent = SliderFrame
			Deletevalue.BackgroundTransparency = 1.000
			Deletevalue.BorderSizePixel = 0
			Deletevalue.Position = UDim2.new(0.65, 0, 0.15, 0)
			Deletevalue.Size = UDim2.new(0, 15, 0, 15)
			Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
			Deletevalue.ImageColor3 =  Color3.fromRGB(255, 23, 46)
	
			local CustomValue = Instance.new("TextBox")
	
			CustomValue.Name = "CustomValue"
			CustomValue.Parent = ShowValueFrame
			CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
			CustomValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
			CustomValue.BackgroundTransparency = 1.000
			CustomValue.ClipsDescendants = true
			CustomValue.Position = UDim2.new(0.501112819, 0, 0.5, 0)
			CustomValue.Size = UDim2.new(0, 50, 0, 26)
			CustomValue.Font = Enum.Font.Gotham
			CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
			CustomValue.Text = ""
			CustomValue.TextSize = 11
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
			ValueFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
			ValueFrame.BorderSizePixel = 0
			ValueFrame.Position = UDim2.new(0.499824077, 0, 0.800000012, 0)
			ValueFrame.Size = UDim2.new(0, 195, 0, 5)
	
			local Main_UiStroke = Instance.new("UIStroke")
	
			Main_UiStroke.Thickness = 1
			Main_UiStroke.Name = ""
			Main_UiStroke.Parent = ValueFrame
			Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke.Transparency = 0
	
			local ValueFrameUICorner = Instance.new("UICorner")
			ValueFrameUICorner.CornerRadius = UDim.new(0, 4)
			ValueFrameUICorner.Name = "ShowValueFrameUICorner"
			ValueFrameUICorner.Parent = ValueFrame
	
			local PartValue = Instance.new("Frame")
	
			PartValue.Name = "PartValue"
			PartValue.Parent = ValueFrame
			PartValue.Active = true
			PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
			PartValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
			PartValue.BackgroundTransparency = 1.000
			PartValue.Position = UDim2.new(0.498982757, 0, 0.300000012, 0)
			PartValue.Size = UDim2.new(0, 195, 0, 5)
	
			local MainValue = Instance.new("Frame")
	
			MainValue.Name = "MainValue"
			MainValue.Parent = PartValue
			MainValue.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			MainValue.Position = UDim2.new(0.00101725257, 0, 0.200000003, 0)
			MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
			MainValue.BorderSizePixel = 0
	
			local MainValueUICorner = Instance.new("UICorner")
			MainValueUICorner.CornerRadius = UDim.new(0, 4)
			MainValueUICorner.Name = "a"
			MainValueUICorner.Parent = MainValue
	
			local ConneValue = Instance.new("Frame")
	
			ConneValue.Name = "ConneValue"
			ConneValue.Parent = PartValue
			ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
			ConneValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
			ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.6,0, 0)
			ConneValue.Size = UDim2.new(0, 0, 0, 0)
			ConneValue.BorderSizePixel = 0
	
			local UICorner = Instance.new("UICorner")
	
			UICorner.CornerRadius = UDim.new(0, 300)
			UICorner.Parent = ConneValue
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
			Addvalue.MouseButton1Click:Connect(function ()
				if CustomValue.Text == "" then
					CustomValue.Text  = de
				end
				pcall(function()
					CustomValue.Text  = CustomValue.Text  - tonumber(lol)
				end)
				if  tonumber(CustomValue.Text) > max then
					CustomValue.Text  = max
				end
				if  tonumber(CustomValue.Text) < min then
					CustomValue.Text  = min
				end
				MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
				ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
				if floor == true then
					CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
				else
					CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
				end
				callback({
					["s"] =  CustomValue.Text;
				})
				--   callback({ tonumber(CustomValue.Text),check2.toogle2})
				--  pcall(callback, CustomValue.Text)
			end)
	
			Deletevalue.MouseButton1Click:Connect(function ()
				if CustomValue.Text == "" then
					CustomValue.Text  = de
				end
				pcall(function()
					CustomValue.Text  = CustomValue.Text  + tonumber(lol)
				end)
				if  tonumber(CustomValue.Text) > max then
					CustomValue.Text  = max
				end
				if  tonumber(CustomValue.Text) < min then
					CustomValue.Text  = min
				end
				MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
				ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
				if floor == true then
					CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
				else
					CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
				end
				callback({
					["s"] =  CustomValue.Text;
				})
				--callback({ tonumber(CustomValue.Text),check2.toogle2})
				--  pcall(callback, CustomValue.Text)
			end)
			DefaultValue.MouseButton1Click:Connect(function()
				if CustomValue.Text == "" then
					CustomValue.Text  = de
				end
				pcall(function()
					CustomValue.Text  = tonumber(de)
				end)
				if  tonumber(CustomValue.Text) > max then
					CustomValue.Text  = max
				end
				if  tonumber(CustomValue.Text) < min then
					CustomValue.Text  = min
				end
				MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
				ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
	
				if floor == true then
					CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
				else
					CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
				end
				callback({
					["s"] =  CustomValue.Text;
				})
			end)
	
			function sliderfunc:Update(value)
				MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
				CustomValue.Text = value
	
				pcall(function()
					callback(value)
				end)
			end
			return sliderfunc
		end
		function ui4:Dropdown(text,option,callback)
			local DropFrame = Instance.new("Frame")
	
			DropFrame.Name = "DropFrame"
			DropFrame.Parent = ScrollingFrame_Pageframe
			DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			DropFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
			DropFrame.BorderSizePixel = 0
			DropFrame.ClipsDescendants = true
			DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropFrame.Size = UDim2.new(0, 210, 0, 30)
	
			local Main_UiStroke = Instance.new("UIStroke")
	
			Main_UiStroke.Thickness = 1
			Main_UiStroke.Name = ""
			Main_UiStroke.Parent = DropFrame
			Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke.Transparency = 0
	
			local ConnerDropFrame = Instance.new("UICorner")
	
			ConnerDropFrame.CornerRadius = UDim.new(0, 4)
			ConnerDropFrame.Name = "ConnerDropFrame"
			ConnerDropFrame.Parent = DropFrame
	
			local LabelFrameDrop = Instance.new("TextLabel")
	
			LabelFrameDrop.Name = "LabelFrameDrop"
			LabelFrameDrop.Parent = DropFrame
			LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelFrameDrop.BackgroundTransparency = 1.000
			LabelFrameDrop.Position = UDim2.new(0.0328638479, 0, 0, 0)
			LabelFrameDrop.Size = UDim2.new(0, 195, 0, 30)
			LabelFrameDrop.Font = Enum.Font.Gotham
			LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
			LabelFrameDrop.TextSize = 11.000
			LabelFrameDrop.TextWrapped = true
			LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left
			LabelFrameDrop.Text = tostring(text).." :"
	
			local ScolDown = Instance.new("ScrollingFrame")
	
			ScolDown.Name = "ScolDown"
			ScolDown.Parent = LabelFrameDrop
			ScolDown.Active = true
			ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ScolDown.BackgroundTransparency = 1
			ScolDown.BorderSizePixel = 0
			ScolDown.Position = UDim2.new(0, 0, 1, 0)
			ScolDown.Size = UDim2.new(0, 195, 0, 115)
			ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
			ScolDown.ScrollBarThickness = 3
	
			local UIListLayoutlist = Instance.new("UIListLayout")
			local UIPaddinglist = Instance.new("UIPadding")
	
			UIListLayoutlist.Name = "UIListLayoutlist"
			UIListLayoutlist.Parent = ScolDown
			UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayoutlist.Padding = UDim.new(0, 5)
	
			UIPaddinglist.Name = "UIPaddinglist"
			UIPaddinglist.Parent = ScolDown
			UIPaddinglist.PaddingLeft = UDim.new(0, 12)
			UIPaddinglist.PaddingTop = UDim.new(0, 5)
	
			local ButtonDrop = Instance.new("TextButton")
	
			ButtonDrop.Name = "ButtonDrop"
			ButtonDrop.Parent = DropFrame
			ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonDrop.BackgroundTransparency = 1.000
			ButtonDrop.ClipsDescendants = true
			ButtonDrop.Size = UDim2.new(0, 335, 0, 30)
			ButtonDrop.AutoButtonColor = false
			ButtonDrop.Font = Enum.Font.SourceSans
			ButtonDrop.Text = ""
			ButtonDrop.TextColor3 = Color3.fromRGB(0, 0, 0)
			ButtonDrop.TextSize = 14.000
			ButtonDrop.TextWrapped = true
	
			local dog = false
	
			local FrameSize = 75
			local cout = 0
			for i , v in pairs(option) do
				cout =cout + 1
				if cout == 1 then
					FrameSize = 75
				elseif cout == 2 then
					FrameSize = 110
				elseif cout >= 3 then
					FrameSize = 150
				end
	
				local ListFrame = Instance.new("Frame")
	
				ListFrame.Name = "ListFrame"
				ListFrame.Parent = ScolDown
				ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				ListFrame.BackgroundColor3 = Color3.fromRGB(67,67,67)
				ListFrame.BackgroundTransparency = 1
				ListFrame.ClipsDescendants = true
				ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
				ListFrame.Size = UDim2.new(0, 175, 0, 30)
	
				local TextLabel_TapDro2p = Instance.new("TextLabel")
	
				TextLabel_TapDro2p.Name = "TextLabel_TapDro2p"
				TextLabel_TapDro2p.Parent = ListFrame
				TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(249, 53, 139)
				TextLabel_TapDro2p.BackgroundTransparency = 1.000
				TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel_TapDro2p.Size = UDim2.new(0, 205, 0, 30)
				TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
				TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
				TextLabel_TapDro2p.TextSize = 11
				TextLabel_TapDro2p.Text = tostring(v)
	
				local ButtonDrop2 = Instance.new("TextButton")
	
				ButtonDrop2.Name = "ButtonDrop2"
				ButtonDrop2.Parent = ListFrame
				ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonDrop2.BackgroundTransparency = 1
				ButtonDrop2.BorderSizePixel = 0
				ButtonDrop2.ClipsDescendants = true
				ButtonDrop2.Position = UDim2.new(-0.0666666701, 0, 0, 0)
				ButtonDrop2.Size = UDim2.new(0, 205, 0, 30)
				ButtonDrop2.AutoButtonColor = false
				ButtonDrop2.Text = ""
				ButtonDrop2.Font = Enum.Font.SourceSans
				ButtonDrop2.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonDrop2.TextSize = 14.000
				ButtonDrop2.TextWrapped = true
	
				ButtonDrop2.MouseEnter:Connect(function ()
					TweenService:Create(
						TextLabel_TapDro2p,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)
	
				ButtonDrop2.MouseLeave:Connect(function ()
					TweenService:Create(
						TextLabel_TapDro2p,
						TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end)
	
				ButtonDrop2.MouseButton1Click:Connect(function()
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					LabelFrameDrop.Text =  text.." : "..tostring(v)
					callback(v)
					dog = not dog
				end)
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
	
			DropFrame.MouseEnter:Connect(function()
				TweenService:Create(
					Main_UiStroke,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					LabelFrameDrop,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					DropArbt_listimage,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			DropFrame.MouseLeave:Connect(function()
				TweenService:Create(
					Main_UiStroke,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				TweenService:Create(
					LabelFrameDrop,
					TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
				):Play()
			end)
	
			ButtonDrop.MouseButton1Click:Connect(function()
				if dog == false then
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 210, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
				else
					TweenService:Create(
						DropFrame,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
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
					{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
				):Play()
				dog = not dog
				for i, v in next, ScolDown:GetChildren() do
					if v:IsA("Frame") then
						v:Destroy()
					end
				end
	
				function dropfunc:Add(t)
	
					local ListFrame = Instance.new("Frame")
	
					ListFrame.Name = "ListFrame"
					ListFrame.Parent = ScolDown
					ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- Color3.fromRGB(249, 53, 139)
					ListFrame.BorderSizePixel = 0
					ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
					ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
					ListFrame.Size = UDim2.new(0, 175, 0, 30) -- UDim2.new(0, 213, 0, 35)
					ListFrame.BackgroundTransparency  = 1
					ListFrame.ClipsDescendants = true
	
					local TextLabel_TapDro2p = Instance.new("TextLabel")
	
					TextLabel_TapDro2p.Parent = ListFrame
					TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
					TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
					TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
					TextLabel_TapDro2p.Size =  UDim2.new(0, 205, 0, 30)
					TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
					TextLabel_TapDro2p.Text = tostring(t)
					TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
					TextLabel_TapDro2p.TextSize = 11.000
					TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
					TextLabel_TapDro2p.BackgroundTransparency = 1
					TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center
	
					local ButtonDrop2 = Instance.new("TextButton")
	
					ButtonDrop2.Parent = ListFrame
					ButtonDrop2.Name = "ButtonDrop2"
					ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
					ButtonDrop2.Size = UDim2.new(0, 205, 0, 30)
					ButtonDrop2.Font = Enum.Font.SourceSansSemibold
					ButtonDrop2.Text = ""
					ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
					ButtonDrop2.TextSize = 13.000
					--   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
					ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
					ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
					ButtonDrop2.BackgroundTransparency = 1
					ButtonDrop2.TextWrapped = true
					ButtonDrop2.AutoButtonColor = false
					ButtonDrop2.ClipsDescendants = true
	
					ButtonDrop2.MouseEnter:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)
	
					ButtonDrop2.MouseLeave:Connect(function ()
						TweenService:Create(
							TextLabel_TapDro2p,
							TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
						):Play()
					end)
	
					ButtonDrop2.MouseButton1Click:Connect(function()
						TweenService:Create(
							DropFrame,
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
						):Play()
						callback(t)
						dog = not dog
					end)
				end
				ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
			end
			return dropfunc
		end
		function ui4:Textbox(text,text2,callback)
			local TextFrame = Instance.new("Frame")
	
			TextFrame.Name = "TextFrame"
			TextFrame.Parent = ScrollingFrame_Pageframe
			TextFrame.Active = true
			TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			TextFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextFrame.BackgroundTransparency = 1.000
			TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			TextFrame.Size = UDim2.new(0, 213, 0, 70)
	
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
			FrameBox.Size = UDim2.new(0, 213, 0, 30)
	
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
			TextBox2Stroke.Color = Color3.fromRGB(255, 23, 46)
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
			TextFrame2.Size = UDim2.new(0, 212, 0, 35)
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
		function ui4:Color(text,preset,callback)
			local Pixker = Instance.new("Frame")
	
			Pixker.Name = "Pixker"
			Pixker.Parent = ScrollingFrame_Pageframe
			Pixker.BackgroundColor3 = Color3.fromRGB(10,10,10)
			Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
			Pixker.Size = UDim2.new(0, 210, 0, 33)
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
			FrameStroke.Color = Color3.fromRGB(0, 0, 0)
			FrameStroke.Transparency = 0
	
	
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
			TextReal.Position = UDim2.new(0.03, 0, 0., 0)
			TextReal.TextXAlignment = Enum.TextXAlignment.Left
	
			local BoxColor = Instance.new("Frame")
	
			BoxColor.Name = "BoxColor"
			BoxColor.Parent = TextFrameColor
			BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BoxColor.Position = UDim2.new(0.5, 0, 0.5, 0)
			BoxColor.Size = UDim2.new(0, 35, 0, 19)
			BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)
	
			local FrameStrokea = Instance.new("UIStroke")
	
			FrameStrokea.Thickness = 1
			FrameStrokea.Name = ""
			FrameStrokea.Parent = BoxColor
			FrameStrokea.LineJoinMode = Enum.LineJoinMode.Round
			FrameStrokea.Color = Color3.fromRGB(0, 0, 0)
			FrameStrokea.Transparency = 0.7
	
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
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(255, 23, 46)}
				):Play()
				TweenService:Create(
					TextReal,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(255, 23, 46)}
				):Play()
	
			end)
			Pixker.MouseLeave:Connect(function()
				TweenService:Create(
					FrameStroke,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Color = Color3.fromRGB(0, 0, 0)}
				):Play()
				TweenService:Create(
					TextReal,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{TextColor3 = Color3.fromRGB(155,155, 155)}
				):Play()
			end)
			-- Rainbow Toggle
			local TextButton_2_Toggle = Instance.new("TextButton")
	
			TextButton_2_Toggle.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle.Parent = TextFrameColor
			TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
			TextButton_2_Toggle.BorderSizePixel = 0
			TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 1.9, 0)
			TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
			TextButton_2_Toggle.AutoButtonColor = false
			TextButton_2_Toggle.Font = Enum.Font.SourceSans
			TextButton_2_Toggle.Text = " "
			TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle.TextSize = 14.000
	
			local Main_UiStroke = Instance.new("UIStroke")
	
			Main_UiStroke.Thickness = 1
			Main_UiStroke.Name = ""
			Main_UiStroke.Parent = TextButton_2_Toggle
			Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke.Transparency = 0
	
			local TextButton_2_Toggle2 = Instance.new("TextButton")
	
			TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
			TextButton_2_Toggle2.Parent = TextButton_2_Toggle
			TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
			TextButton_2_Toggle2.BorderSizePixel = 0
			TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
			TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
			TextButton_2_Toggle2.AutoButtonColor = false
			TextButton_2_Toggle2.Font = Enum.Font.SourceSans
			TextButton_2_Toggle2.Text = " "
			TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton_2_Toggle2.TextSize = 14.000
	
			local UICorner2 = Instance.new("UICorner")
	
			UICorner2.CornerRadius = UDim.new(0, 6)
			UICorner2.Parent = TextButton_2_Toggle2
	
			local Main_UiStroke2 = Instance.new("UIStroke")
	
			Main_UiStroke2.Thickness = 1
			Main_UiStroke2.Name = ""
			Main_UiStroke2.Parent = TextButton_2_Toggle2
			Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
			Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
			Main_UiStroke2.Transparency = 0
	
			local UICorner = Instance.new("UICorner")
	
			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = TextButton_2_Toggle
	
			local ImageButton = Instance.new("ImageButton")
	
			ImageButton.Parent = TextButton_2_Toggle
			ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			ImageButton.BackgroundTransparency = 0
			ImageButton.BorderSizePixel = 0
			ImageButton.AutoButtonColor = false
			ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageButton.Size = UDim2.new(0, 0, 0, 0)
	
			local UICorner6 = Instance.new("UICorner")
	
			UICorner6.CornerRadius = UDim.new(0, 6)
			UICorner6.Parent = ImageButton
	
			local TextButton_3_Toggle2 = Instance.new("TextLabel")
	
			TextButton_3_Toggle2.Parent = TextButton_2_Toggle
			TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
			TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(249, 53, 139)
			TextButton_3_Toggle2.BorderSizePixel = 0
			TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton_3_Toggle2.Position = UDim2.new(2.5, 0, 0.5, 0)
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
			Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			Color.Position = UDim2.new(0.03,0,4,0)
			Color.Size = UDim2.new(0, 195, 0, 40)
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
			Hue.Size = UDim2.new(0, 195, 0, 25)
			Hue.ZIndex = 0
			Hue.BorderSizePixel = 0
	
			local ColorFucj2 = Instance.new("UICorner")
	
			ColorFucj2.CornerRadius = UDim.new(0, 4)
			ColorFucj2.Name = ""
			ColorFucj2.Parent = Hue
	
			local HueGradient = Instance.new("UIGradient")
	
			HueGradient.Color = ColorSequence.new {
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
				ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
				ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
				ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
				ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
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
			BTN_XD.Position = UDim2.new(0.4, 0, 1.9, 0)
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
			BTN_XDStroke.Color = Color3.fromRGB(255, 23, 46)
			BTN_XDStroke.Transparency = 0.7
	
	
			local UwU = false
	
			OMF.MouseButton1Click:Connect(function()
				if UwU == false  then
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				else
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
					):Play()
					wait(0.1)
					TweenService:Create(
						ImageButton,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
					):Play()
				end
				UwU = not UwU
			end)
	
			OMF.MouseButton1Down:Connect(function()
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
			ImageButton.MouseButton1Down:Connect(
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
						{Size = UDim2.new(0, 210, 0, 180)}
					):Play()
				else
					TweenService:Create(
						Pixker,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Size = UDim2.new(0, 210, 0, 33)}
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
						{Size = UDim2.new(0, 210, 0, 33)}
					):Play()
					sk = not sk
				end)
		end
		function ui4:MultiDropdown(text,use,option,callback)
	
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
			DropFrame.Parent = ScrollingFrame_Pageframe
			DropFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)-- Color3.fromRGB(249, 53, 139)
			DropFrame.BorderSizePixel = 0
			DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
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
			DropFrameStroke.Color = Color3.fromRGB(255, 23, 46)
			DropFrameStroke.Transparency = 0.7
	
	
	
	
	
			local LabelFrameDrop = Instance.new("TextLabel")
	
			LabelFrameDrop.Parent = DropFrame
			LabelFrameDrop.Name = "LabelFrameDrop"
			LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
			LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
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
			TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
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
			DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
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
			ScolDown.Size = UDim2.new(0, 205, 0, 115)
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
			ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
			ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
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
				listtog.Size = UDim2.new(0, 210, 0, 33)
	
	
				local listtextbutton = Instance.new("TextButton")
	
				listtextbutton.Parent = listtog
				listtextbutton.BackgroundTransparency =1
				listtextbutton.BackgroundColor3 = Color3.fromRGB(5,5,5)
				listtextbutton.BorderSizePixel = 0
				listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
				listtextbutton.AutoButtonColor = false
				listtextbutton.Font = Enum.Font.SourceSans
				listtextbutton.Text = " "
				listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
				listtextbutton.TextSize = 14.000
	
				local farmtoglist = Instance.new("TextButton")
	
				farmtoglist.Parent = listtextbutton
				farmtoglist.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
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
				farmtoglist2.BorderColor3 = Color3.fromRGB(255, 23, 46)
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
				listimage.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
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
						{TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
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
						{Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
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
						{Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
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
		function ui4:Bind(text,bi,callback)
			local BindFrame = Instance.new("Frame")
	
			BindFrame.Name = "BindFrame"
			BindFrame.Parent = ScrollingFrame_Pageframe
			BindFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)
			BindFrame.BorderSizePixel = 0
			BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			BindFrame.Size = UDim2.new(0, 213, 0, 35)
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
			BindStroke.Color = Color3.fromRGB(255, 23, 46)
			BindStroke.Transparency = 0.7
	
			local LabelBind = Instance.new("TextLabel")
	
			LabelBind.Parent = BindFrame
			LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelBind.BackgroundTransparency = 1
			LabelBind.BorderSizePixel = 0
			LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
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
			LabelBind2.Position = UDim2.new(0.70, 0, 0.5, 0)
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
		return ui4
	end
	return uipage
	end
	return uitop
	end
	
	local win = ui:W1n("Pet Simulator X!","| Putaya Hub V.0.1",0.30,Enum.KeyCode.RightControl)
	
	local Tap = win:Tap("Main")
	
	local AutoFarm = Tap:newpage()
	
	AutoFarm:Title("Auto Farm")
	
	
	AutoFarm:ToggleDesc("Auto Farm Coin","Auto Farm Coin",false,function(value)
	_G.Coin = value
	end)
	function tp(p1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p1
	end
	
	local Teleport = Tap:newpage()
	Teleport:Title("Teleport")
	Teleport:Button("Forest",  function()
	tp(CFrame.new(-273.03598, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Beach",  function()
	tp(CFrame.new(-621.536, 91.0132, 238.075))
	end)
	Teleport:Button("Mine",  function()
	tp(CFrame.new(-987.036011, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Winter",  function()
	tp(CFrame.new(-1360.53601, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Glacier",  function()
	tp(CFrame.new(-1705.04, 91.0132, 238.075))
	end)
	Teleport:Button("Desert",  function()
	tp(CFrame.new(-2088.03613, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Volcano",  function()
	tp(CFrame.new(-2424.03613, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Cave",  function()
	tp(CFrame.new(-2724.53613, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Ice Tech",  function()
	tp(CFrame.new(-1811.72534, 97.1900635, 413.829834, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	end)
	Teleport:Button("Town",  function()
	tp(CFrame.new(73.4640198, 91.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Shop",  function()
	tp(CFrame.new(266.96402, 95.0132141, 238.074982, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Vip",  function()
	tp(CFrame.new(-38.2474365, 91.0132141, 408.099213, 0, 0, 1, 0, 1, -0, -1, 0, 0))
	end)
	Teleport:Button("Ground", function()
	tp(CFrame.new(3023.48828, 91.8347168, 238.074997, 1, 0, 0, 0, 1, 0, 0, 0, 1)) 
	end)
	local function getNearestCoin()
	local TargetDistance = math.huge
	local Target
	for i, v in ipairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
	if v:FindFirstChild("Coin") then
		local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("Coin").Position).Magnitude
		if Mag < TargetDistance then
			TargetDistance = Mag
			Target = v
		end
	end
	end
	return Target
	end
	spawn(function()
	repeat task.wait()
	until workspace.__THINGS.__REMOTES:FindFirstChild("join coin")
	while task.wait() do 
	pcall(function()
	if _G.Coin then
		for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets:GetChildren()) do
			if v:FindFirstChild("Equipped") and v.Equipped.Visible == true then
				workspace.__THINGS.__REMOTES:FindFirstChild("join coin"):InvokeServer({getNearestCoin().Name, {v.Name}})
				game.workspace['__THINGS']['__REMOTES']["farm coin"]:FireServer({getNearestCoin().Name, v.Name})
			end
		end
		for i, v in pairs(game:GetService("Workspace")["__THINGS"].Orbs:GetChildren()) do
			workspace.__THINGS.__REMOTES:FindFirstChild("claim orbs"):FireServer({{v.Name}})
		end
		for i, v in pairs(game.Workspace["__THINGS"].Lootbags:GetChildren()) do
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end)
	end
	end)
	
	--
	else 
	game.Players.LocalPlayer:Kick("\nPutaya 79 Bat >o<")
	end
			else
				game.StarterGui:SetCore("SendNotification", { 
				Title = "Info!",
				Text = "Invaid Random Excute Script Again", 
				Icon = "", 
				Duration = 2.5
				})
			end
		else
			return LocalPlayer:Kick("Wrong Discordid Dm Admin!")
		end
	else
		return LocalPlayer:Kick("Wrong Key Dm Admin!")
	end
else
	setclipboard(string.reverse(game:GetService("RbxAnalyticsService"):GetClientId()))
	wait(.5)
	LocalPlayer:Kick("Wrong Hwid Dm Admin!")
	wait(.5)
	game:Shutdown()
end