local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")

local Window = {}
Window.__index=Window

local function N(class,props,parent)
    local o=Instance.new(class);for k,v in pairs(props or {})do o[k]=v end;o.Parent=parent;return o
end
local function corner(o,r)local c=Instance.new("UICorner");c.CornerRadius=UDim.new(0,r or 10);c.Parent=o end
local function stroke(o,c,t,w)local s=Instance.new("UIStroke");s.Color=c;s.Transparency=t or .5;s.Thickness=w or 1;s.Parent=o;return s end
local function pad(o,n)local p=Instance.new("UIPadding");p.PaddingTop=UDim.new(0,n);p.PaddingBottom=UDim.new(0,n);p.PaddingLeft=UDim.new(0,n);p.PaddingRight=UDim.new(0,n);p.Parent=o end

function Window:Build()
    local o=self.Options;local t=self.Theme
    local old=CoreGui:FindFirstChild("ARIO_UI");if old then old:Destroy()end
    self.Gui=N("ScreenGui",{Name="ARIO_UI",ResetOnSpawn=false,IgnoreGuiInset=true,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},CoreGui)
    if o.Blur~=false then
        local b=N("BlurEffect",{Name="ARIOBlur_"..tostring(math.random(1000,9999)),Size=0},Lighting)
        self.Blur=b;TweenService:Create(b,TweenInfo.new(.4),{Size=o.BlurSize or 8}):Play()
    end
    local size=o.Size or UDim2.fromOffset(720,520)
    self.Main=N("Frame",{AnchorPoint=Vector2.new(.5,.5),Position=UDim2.fromScale(.5,.5),Size=size,BackgroundColor3=t.Background,BackgroundTransparency=o.Transparency or 0,BorderSizePixel=0},self.Gui)
    corner(self.Main,o.CornerRadius or 12);stroke(self.Main,t.Border,.2,o.OutlineThickness or 1)
    self.Main.ClipsDescendants=true
    if o.Gradient~=false then
        local g=N("UIGradient",{Color=ColorSequence.new(t.Background,t.Surface),Rotation=135},self.Main)
    end

    self.Header=N("Frame",{Size=UDim2.new(1,0,0,64),BackgroundTransparency=1},self.Main)
    local logo=N("TextButton",{Position=UDim2.fromOffset(14,14),Size=UDim2.fromOffset(36,36),BackgroundColor3=t.Accent,Text=o.Logo or "A",TextColor3=Color3.new(1,1,1),Font=Enum.Font.GothamBold,TextSize=17,BorderSizePixel=0},self.Header);corner(logo,10)
    local title=N("TextLabel",{Position=UDim2.fromOffset(60,9),Size=UDim2.new(1,-170,0,25),BackgroundTransparency=1,Text=o.Title or "ARIO UI",TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=15,TextXAlignment=Enum.TextXAlignment.Left},self.Header)
    local sub=N("TextLabel",{Position=UDim2.fromOffset(60,34),Size=UDim2.new(1,-170,0,18),BackgroundTransparency=1,Text=o.Subtitle or (o.Author and ("by "..o.Author) or "Premium UI Framework"),TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left},self.Header)

    local min=N("TextButton",{Position=UDim2.new(1,-78,0,16),Size=UDim2.fromOffset(28,28),BackgroundTransparency=1,Text="—",TextColor3=t.Muted,Font=Enum.Font.GothamBold,TextSize=18},self.Header)
    local max=N("TextButton",{Position=UDim2.new(1,-48,0,16),Size=UDim2.fromOffset(28,28),BackgroundTransparency=1,Text="□",TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=15},self.Header)
    local close=N("TextButton",{Position=UDim2.new(1,-18,0,16),AnchorPoint=Vector2.new(1,0),Size=UDim2.fromOffset(28,28),BackgroundTransparency=1,Text="×",TextColor3=t.Muted,Font=Enum.Font.GothamBold,TextSize=21},self.Header)

    self.Body=N("Frame",{Position=UDim2.fromOffset(10,70),Size=UDim2.new(1,-20,1,-80),BackgroundTransparency=1},self.Main)
    self.Side=N("ScrollingFrame",{Size=UDim2.fromOffset(o.SidebarWidth or 165,1),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=0,CanvasSize=UDim2.new()},self.Body)
    pad(self.Side,4);local sl=N("UIListLayout",{Padding=UDim.new(0,6)},self.Side)
    self.Pages=N("Frame",{Position=UDim2.fromOffset((o.SidebarWidth or 165)+8,0),Size=UDim2.new(1,-(o.SidebarWidth or 165)-8,1),BackgroundTransparency=1},self.Body)

    local dragging=false;local dragStart;local startPos
    self.Header.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=true;dragStart=i.Position;startPos=self.Main.Position end end)
    UIS.InputChanged:Connect(function(i)
        if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
            local d=i.Position-dragStart
            self.Main.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
        end
    end)
    UIS.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dragging=false end end)

    local minimized=false;local maximized=false;local normalSize=size;local normalPos=self.Main.Position
    min.MouseButton1Click:Connect(function()
        minimized=not minimized;self.Body.Visible=not minimized
        TweenService:Create(self.Main,TweenInfo.new(.3,Enum.EasingStyle.Quart),{Size=minimized and UDim2.fromOffset(size.X.Offset,64) or (maximized and UDim2.fromScale(.92,.9) or normalSize)}):Play()
    end)
    max.MouseButton1Click:Connect(function()
        maximized=not maximized;minimized=false;self.Body.Visible=true
        if maximized then
            normalSize=self.Main.Size;normalPos=self.Main.Position
            TweenService:Create(self.Main,TweenInfo.new(.35,Enum.EasingStyle.Quart),{Size=UDim2.fromScale(.92,.9),Position=UDim2.fromScale(.5,.5)}):Play()
        else
            TweenService:Create(self.Main,TweenInfo.new(.35,Enum.EasingStyle.Quart),{Size=normalSize,Position=normalPos}):Play()
        end
    end)
    close.MouseButton1Click:Connect(function()self:Destroy()end)

    local key=o.ToggleKey or Enum.KeyCode.RightShift
    UIS.InputBegan:Connect(function(i,gp)if not gp and i.KeyCode==key then self:Toggle()end end)

    self:CreateCommandCenter()
    if o.LoadingScreen then self:ShowLoadingScreen(o.LoadingScreen) end
end

function Window:CreateTab(opts)
    opts=opts or {};local t=self.Theme
    local tab={Window=self,Name=opts.Name or "Tab",Icon=opts.Icon or "•",Badge=opts.Badge}
    tab.Button=N("TextButton",{Size=UDim2.new(1,-8,0,40),BackgroundColor3=t.Surface,Text="",AutoButtonColor=false,BorderSizePixel=0},self.Side);corner(tab.Button,self.Options.CornerRadius or 10);stroke(tab.Button,t.Border,.65,1)
    local ic=N("TextLabel",{Position=UDim2.fromOffset(8,0),Size=UDim2.fromOffset(28,40),BackgroundTransparency=1,Text=tab.Icon,TextColor3=t.Muted,Font=Enum.Font.GothamBold,TextSize=13},tab.Button)
    local tx=N("TextLabel",{Position=UDim2.fromOffset(40,0),Size=UDim2.new(1,-48,1,0),BackgroundTransparency=1,Text=tab.Name,TextColor3=t.Muted,Font=Enum.Font.GothamMedium,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left},tab.Button)
    tab.Indicator=N("Frame",{Position=UDim2.fromOffset(0,7),Size=UDim2.fromOffset(3,26),BackgroundColor3=t.Accent,BackgroundTransparency=1,BorderSizePixel=0},tab.Button);corner(tab.Indicator,4)
    if opts.Badge then
        local b=N("TextLabel",{AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-8,.5,0),Size=UDim2.fromOffset(28,18),BackgroundColor3=t.Accent,Text=tostring(opts.Badge),TextColor3=Color3.new(1,1,1),Font=Enum.Font.GothamBold,TextSize=9},tab.Button);corner(b,9)
    end
    tab.Page=N("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Visible=false},self.Pages)
    local heading=N("TextLabel",{Position=UDim2.fromOffset(5,0),Size=UDim2.new(1,-10,0,30),BackgroundTransparency=1,Text=tab.Name,TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=18,TextXAlignment=Enum.TextXAlignment.Left},tab.Page)
    tab.Content=N("ScrollingFrame",{Position=UDim2.fromOffset(0,35),Size=UDim2.new(1,0,1,-35),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=3,ScrollBarImageColor3=t.Accent,CanvasSize=UDim2.new()},tab.Page)
    local layout=N("UIListLayout",{Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},tab.Content)
    local p=N("UIPadding",{PaddingLeft=UDim.new(0,4),PaddingRight=UDim.new(0,4),PaddingBottom=UDim.new(0,8)},tab.Content)
    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()tab.Content.CanvasSize=UDim2.fromOffset(0,layout.AbsoluteContentSize.Y+10)end)
    function tab:Select()self.Window:SelectTab(self)end
    tab.Button.MouseButton1Click:Connect(function()tab:Select()end)
    table.insert(self.Tabs,tab)
    if #self.Tabs==1 then tab:Select() end
    return setmetatable(tab,{__index=require(script.Parent.Tab)})
end

function Window:SelectTab(tab)
    for _,t in ipairs(self.Tabs)do
        t.Page.Visible=t==tab
        TweenService:Create(t.Button,TweenInfo.new(.18),{BackgroundColor3=t==tab and self.Theme.Surface2 or self.Theme.Surface}):Play()
        t.Indicator.BackgroundTransparency=t==tab and 0 or 1
    end
end

function Window:SetTheme(theme)
    if type(theme)=="string" then theme=self.Library:GetTheme(theme) end
    if type(theme)~="table" then return end
    self.Theme=theme
    for _,o in ipairs(self.Gui:GetDescendants())do
        local role=o:GetAttribute("ARIOColor")
        if role and theme[role] then
            if o:IsA("GuiObject") then
                if o:IsA("TextLabel") or o:IsA("TextButton") or o:IsA("TextBox") then o.TextColor3=theme[role] else o.BackgroundColor3=theme[role] end
            elseif o:IsA("UIStroke") then o.Color=theme[role] end
        end
    end
end

function Window:SetAccent(color)
    self.Theme.Accent=color
    for _,o in ipairs(self.Gui:GetDescendants())do
        if o:GetAttribute("ARIOAccent") then o.BackgroundColor3=color end
    end
end

function Window:SetPulse(enabled)
    self.Pulse=enabled
end

function Window:Toggle()
    self.Visible=not self.Visible
    if self.Visible then
        self.Main.Visible=true
        local target=self.Main.Size
        self.Main.Size=UDim2.fromOffset(20,20)
        self.Animation:Play(self.Main,{Size=target},{Duration=.35,Easing="Back"})
    else
        self.Animation:Play(self.Main,{Size=UDim2.fromOffset(20,20)},{Duration=.2,Easing="Quad"}).Completed:Connect(function()if not self.Visible then self.Main.Visible=false end end)
    end
end

function Window:Notify(opts)
    opts=opts or {};local t=self.Theme
    if not self.NotificationHolder then
        self.NotificationHolder=N("Frame",{AnchorPoint=Vector2.new(1,1),Position=UDim2.new(1,-18,1,-18),Size=UDim2.fromOffset(330,1),BackgroundTransparency=1},self.Gui)
        N("UIListLayout",{VerticalAlignment=Enum.VerticalAlignment.Bottom,Padding=UDim.new(0,8)},self.NotificationHolder)
    end
    local kind=opts.Type or "Info";local c=kind=="Success" and t.Good or kind=="Error" and t.Bad or kind=="Warning" and t.Warn or t.Accent
    local f=N("Frame",{Size=UDim2.fromOffset(310,76),BackgroundColor3=t.Surface2,BorderSizePixel=0},self.NotificationHolder);corner(f,11);stroke(f,c,.3,1)
    local bar=N("Frame",{Size=UDim2.fromOffset(3,76),BackgroundColor3=c,BorderSizePixel=0},f);corner(bar,4)
    N("TextLabel",{Position=UDim2.fromOffset(15,8),Size=UDim2.new(1,-25,0,20),BackgroundTransparency=1,Text=opts.Title or "ARIO",TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=13,TextXAlignment=Enum.TextXAlignment.Left},f)
    N("TextLabel",{Position=UDim2.fromOffset(15,31),Size=UDim2.new(1,-25,0,35),BackgroundTransparency=1,Text=opts.Content or "",TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=11,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top},f)
    task.delay(opts.Duration or 4,function()if f.Parent then self.Animation:Play(f,{BackgroundTransparency=1},{Duration=.2});task.delay(.25,function()if f.Parent then f:Destroy()end end)end end)
end

function Window:Confirm(opts)
    opts=opts or {};local t=self.Theme
    local modal=N("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=.35,ZIndex=100},self.Gui)
    local box=N("Frame",{AnchorPoint=Vector2.new(.5,.5),Position=UDim2.fromScale(.5,.5),Size=UDim2.fromOffset(380,190),BackgroundColor3=t.Surface2,BorderSizePixel=0,ZIndex=101},modal);corner(box,14);stroke(box,t.Border,.25,1)
    N("TextLabel",{Position=UDim2.fromOffset(20,18),Size=UDim2.new(1,-40,0,28),BackgroundTransparency=1,Text=opts.Title or "Confirm",TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=102},box)
    N("TextLabel",{Position=UDim2.fromOffset(20,52),Size=UDim2.new(1,-40,0,70),BackgroundTransparency=1,Text=opts.Content or "",TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=12,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,ZIndex=102},box)
    local cancel=N("TextButton",{Position=UDim2.new(1,-205,1,-50),Size=UDim2.fromOffset(85,34),BackgroundColor3=t.Surface,Text="Cancel",TextColor3=t.Text,Font=Enum.Font.GothamMedium,TextSize=11,ZIndex=102},box);corner(cancel,8)
    local yes=N("TextButton",{Position=UDim2.new(1,-110,1,-50),Size=UDim2.fromOffset(90,34),BackgroundColor3=t.Accent,Text="Confirm",TextColor3=Color3.new(1,1,1),Font=Enum.Font.GothamBold,TextSize=11,ZIndex=102},box);corner(yes,8)
    cancel.MouseButton1Click:Connect(function()modal:Destroy()end)
    yes.MouseButton1Click:Connect(function()modal:Destroy();if opts.Callback then task.spawn(opts.Callback)end end)
    return modal
end

function Window:CreateCommandCenter()
    local t=self.Theme
    local cmd=N("Frame",{AnchorPoint=Vector2.new(.5,.5),Position=UDim2.fromScale(.5,.5),Size=UDim2.fromOffset(470,350),BackgroundColor3=t.Surface2,Visible=false,ZIndex=200,BorderSizePixel=0},self.Gui)
    corner(cmd,14);stroke(cmd,t.Border,.2,1)
    local search=N("TextBox",{Position=UDim2.fromOffset(16,16),Size=UDim2.new(1,-32,0,40),BackgroundColor3=t.Surface,PlaceholderText="Search ARIO...",Text="",TextColor3=t.Text,PlaceholderColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=13,ClearTextOnFocus=false,ZIndex=201},cmd);corner(search,9)
    local list=N("ScrollingFrame",{Position=UDim2.fromOffset(16,66),Size=UDim2.new(1,-32,1,-82),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,ZIndex=201},cmd)
    local function refresh(q)
        for _,x in ipairs(list:GetChildren())do if x:IsA("TextButton")then x:Destroy()end end
        local y=0
        for _,tab in ipairs(self.Tabs)do
            if q=="" or tab.Name:lower():find(q:lower(),1,true) then
                local b=N("TextButton",{Position=UDim2.fromOffset(0,y),Size=UDim2.new(1,-4,0,36),BackgroundColor3=t.Surface,Text="  "..tab.Icon.."  "..tab.Name,TextColor3=t.Text,Font=Enum.Font.GothamMedium,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=202},list);corner(b,8)
                b.MouseButton1Click:Connect(function()self:SelectTab(tab);cmd.Visible=false end);y+=42
            end
        end
        list.CanvasSize=UDim2.fromOffset(0,y)
    end
    search:GetPropertyChangedSignal("Text"):Connect(function()refresh(search.Text)end)
    refresh("")
    self.CommandCenter=cmd
    UIS.InputBegan:Connect(function(i,gp)
        if gp then return end
        if i.KeyCode==Enum.KeyCode.F2 then cmd.Visible=not cmd.Visible;search:CaptureFocus() end
    end)
end

function Window:ShowLoadingScreen(config)
    config=config==true and {} or config
    local t=self.Theme
    local load=N("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=t.Background,ZIndex=300},self.Gui)
    local title=N("TextLabel",{AnchorPoint=Vector2.new(.5,.5),Position=UDim2.fromScale(.5,.38),Size=UDim2.fromOffset(300,40),BackgroundTransparency=1,Text=config.Title or self.Options.Title or "ARIO",TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=25,ZIndex=301},load)
    local sub=N("TextLabel",{AnchorPoint=Vector2.new(.5,.5),Position=UDim2.fromScale(.5,.47),Size=UDim2.fromOffset(300,25),BackgroundTransparency=1,Text="Initializing...",TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=12,ZIndex=301},load)
    local bar=N("Frame",{AnchorPoint=Vector2.new(.5,.5),Position=UDim2.fromScale(.5,.55),Size=UDim2.fromOffset(300,7),BackgroundColor3=t.Surface2,ZIndex=301,BorderSizePixel=0},load);corner(bar,8)
    local fill=N("Frame",{Size=UDim2.fromScale(0,1),BackgroundColor3=t.Accent,ZIndex=302,BorderSizePixel=0},bar);corner(fill,8)
    for i=1,100 do task.wait(.008);fill.Size=UDim2.fromScale(i/100,1);if i==100 then sub.Text="Ready" end end
    TweenService:Create(load,TweenInfo.new(.35),{BackgroundTransparency=1}):Play()
    task.delay(.4,function()if load.Parent then load:Destroy()end end)
end

function Window:Destroy()
    if self.Blur then self.Blur:Destroy() end
    if self.Cleanup then self.Cleanup:Destroy() end
    if self.Animation then self.Animation:StopAll() end
    if self.Gui then self.Gui:Destroy() end
end

return Window
