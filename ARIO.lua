-- ARIO UI Framework PRO - Single File Build
-- Self-contained: no require(), no ModuleScripts.
local __ARIO_SOURCES = {}
local __ARIO_CACHE = {}
__ARIO_SOURCES['Components.Activity'] = [=[-- ARIO Activity component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Activity", options or {})
end
]=]
__ARIO_SOURCES['Components.Button'] = [=[-- ARIO Button component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Button", options or {})
end
]=]
__ARIO_SOURCES['Components.ButtonGroup'] = [=[-- ARIO ButtonGroup component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "ButtonGroup", options or {})
end
]=]
__ARIO_SOURCES['Components.Checkbox'] = [=[-- ARIO Checkbox component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Checkbox", options or {})
end
]=]
__ARIO_SOURCES['Components.CodeEditor'] = [=[-- ARIO CodeEditor component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "CodeEditor", options or {})
end
]=]
__ARIO_SOURCES['Components.ColorPicker'] = [=[-- ARIO ColorPicker component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "ColorPicker", options or {})
end
]=]
__ARIO_SOURCES['Components.Counter'] = [=[-- ARIO Counter component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Counter", options or {})
end
]=]
__ARIO_SOURCES['Components.Divider'] = [=[-- ARIO Divider component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Divider", options or {})
end
]=]
__ARIO_SOURCES['Components.Dropdown'] = [=[-- ARIO Dropdown component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Dropdown", options or {})
end
]=]
__ARIO_SOURCES['Components.FPS'] = [=[-- ARIO FPS component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "FPS", options or {})
end
]=]
__ARIO_SOURCES['Components.GradientPicker'] = [=[-- ARIO GradientPicker component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "GradientPicker", options or {})
end
]=]
__ARIO_SOURCES['Components.Graph'] = [=[-- ARIO Graph component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Graph", options or {})
end
]=]
__ARIO_SOURCES['Components.Input'] = [=[-- ARIO Input component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Input", options or {})
end
]=]
__ARIO_SOURCES['Components.Keybind'] = [=[-- ARIO Keybind component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Keybind", options or {})
end
]=]
__ARIO_SOURCES['Components.Label'] = [=[-- ARIO Label component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Label", options or {})
end
]=]
__ARIO_SOURCES['Components.LoadingBar'] = [=[-- ARIO LoadingBar component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "LoadingBar", options or {})
end
]=]
__ARIO_SOURCES['Components.MultiDropdown'] = [=[-- ARIO MultiDropdown component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "MultiDropdown", options or {})
end
]=]
__ARIO_SOURCES['Components.NumberInput'] = [=[-- ARIO NumberInput component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "NumberInput", options or {})
end
]=]
__ARIO_SOURCES['Components.Paragraph'] = [=[-- ARIO Paragraph component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Paragraph", options or {})
end
]=]
__ARIO_SOURCES['Components.Ping'] = [=[-- ARIO Ping component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Ping", options or {})
end
]=]
__ARIO_SOURCES['Components.Progress'] = [=[-- ARIO Progress component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Progress", options or {})
end
]=]
__ARIO_SOURCES['Components.RadioGroup'] = [=[-- ARIO RadioGroup component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "RadioGroup", options or {})
end
]=]
__ARIO_SOURCES['Components.SearchDropdown'] = [=[-- ARIO SearchDropdown component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "SearchDropdown", options or {})
end
]=]
__ARIO_SOURCES['Components.Section'] = [=[-- ARIO Section component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Section", options or {})
end
]=]
__ARIO_SOURCES['Components.Slider'] = [=[-- ARIO Slider component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Slider", options or {})
end
]=]
__ARIO_SOURCES['Components.StatCard'] = [=[-- ARIO StatCard component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "StatCard", options or {})
end
]=]
__ARIO_SOURCES['Components.Status'] = [=[-- ARIO Status component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Status", options or {})
end
]=]
__ARIO_SOURCES['Components.Stepper'] = [=[-- ARIO Stepper component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Stepper", options or {})
end
]=]
__ARIO_SOURCES['Components.Table'] = [=[-- ARIO Table component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Table", options or {})
end
]=]
__ARIO_SOURCES['Components.TextArea'] = [=[-- ARIO TextArea component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "TextArea", options or {})
end
]=]
__ARIO_SOURCES['Components.Timer'] = [=[-- ARIO Timer component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Timer", options or {})
end
]=]
__ARIO_SOURCES['Components.Toggle'] = [=[-- ARIO Toggle component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "Toggle", options or {})
end
]=]
__ARIO_SOURCES['Components.ToggleGroup'] = [=[-- ARIO ToggleGroup component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return __ARIO_LOAD("Core.Component").new(tab, "ToggleGroup", options or {})
end
]=]
__ARIO_SOURCES['Core.Animation'] = [=[local TweenService = game:GetService("TweenService")

local Animation = {}
Animation.__index = Animation

local styles = {
    Linear = Enum.EasingStyle.Linear,
    Quad = Enum.EasingStyle.Quad,
    Cubic = Enum.EasingStyle.Cubic,
    Quart = Enum.EasingStyle.Quart,
    Quint = Enum.EasingStyle.Quint,
    Sine = Enum.EasingStyle.Sine,
    Back = Enum.EasingStyle.Back,
    Elastic = Enum.EasingStyle.Elastic,
    Bounce = Enum.EasingStyle.Bounce,
}

function Animation.new()
    return setmetatable({Active = {}}, Animation)
end

function Animation:Play(object, props, options)
    options = options or {}
    local style = styles[options.Easing or "Quart"] or Enum.EasingStyle.Quart
    local direction = options.Direction or Enum.EasingDirection.Out
    local info = TweenInfo.new(options.Duration or .3, style, direction, options.RepeatCount or 0, options.Reverses or false, options.DelayTime or 0)
    local tween = TweenService:Create(object, info, props)
    table.insert(self.Active, tween)
    tween:Play()
    return tween
end

function Animation:Spring(object, props, duration)
    return self:Play(object, props, {Duration = duration or .35, Easing = "Back"})
end

function Animation:StopAll()
    for _, t in ipairs(self.Active) do pcall(function() t:Cancel() end) end
    table.clear(self.Active)
end

return Animation
]=]
__ARIO_SOURCES['Core.Cleanup'] = [=[local Cleanup = {}
Cleanup.__index = Cleanup

function Cleanup.new()
    return setmetatable({Items = {}}, Cleanup)
end

function Cleanup:Add(item)
    table.insert(self.Items, item)
    return item
end

function Cleanup:Destroy()
    for i = #self.Items, 1, -1 do
        local item = self.Items[i]
        pcall(function()
            if typeof(item) == "RBXScriptConnection" then
                item:Disconnect()
            elseif type(item) == "function" then
                item()
            elseif item and item.Destroy then
                item:Destroy()
            elseif item and item.Disconnect then
                item:Disconnect()
            end
        end)
        self.Items[i] = nil
    end
end

return Cleanup
]=]
__ARIO_SOURCES['Core.Component'] = [=[local UIS=game:GetService("UserInputService")
local RunService=game:GetService("RunService")
local TweenService=game:GetService("TweenService")
local HttpService=game:GetService("HttpService")

local Component={}
Component.__index=Component

local function N(c,p,parent)local o=Instance.new(c);for k,v in pairs(p or {})do o[k]=v end;o.Parent=parent;return o end
local function C(o,r)local x=Instance.new("UICorner");x.CornerRadius=UDim.new(0,r or 9);x.Parent=o end
local function S(o,c,t,w)local x=Instance.new("UIStroke");x.Color=c;x.Transparency=t or .5;x.Thickness=w or 1;x.Parent=o end
local function label(parent,text,color,size)
    return N("TextLabel",{Size=UDim2.new(1,-20,1,0),Position=UDim2.fromOffset(10,0),BackgroundTransparency=1,Text=text or "",TextColor3=color,Font=Enum.Font.GothamMedium,TextSize=size or 12,TextXAlignment=Enum.TextXAlignment.Left},parent)
end

function Component.new(tab,kind,o)
    o=o or {};local t=tab.Window.Theme;local h=(kind=="Paragraph" and 74) or (kind=="Section" and 34) or (kind=="CodeEditor" and 190) or (kind=="Table" and 150) or 50
    local f=N("Frame",{Size=UDim2.new(1,-8,0,h),BackgroundColor3=t.Surface,BorderSizePixel=0},tab.Content);C(f,tab.Window.Options.CornerRadius or 10);S(f,t.Border,.5,1)
    local self=setmetatable({Instance=f,Tab=tab,Type=kind,Value=o.Default,Changed=__ARIO_LOAD("Core.Signal").new()},Component)
    local name=o.Name or kind

    if kind=="Section" then
        f.BackgroundTransparency=1
        local b=N("TextButton",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Text="  "..(o.Icon or "▾").."  "..name,TextColor3=o.Color or t.Muted,Font=Enum.Font.GothamBold,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left},f)
        local desc=label(f,o.Description or "",t.Muted,10);desc.Position=UDim2.fromOffset(10,17);desc.Visible=o.Description~=nil
        if o.Collapsible then
            local collapsed=false;b.MouseButton1Click:Connect(function()collapsed=not collapsed;for _,x in ipairs(tab.Content:GetChildren())do if x~=f and x:GetAttribute("ARIOSection")==name then x.Visible=not collapsed end end end)
        end
    elseif kind=="Label" then
        label(f,o.Text or "",t.Text,13)
    elseif kind=="Paragraph" then
        local a=label(f,o.Title or "Information",t.Text,13);a.Position=UDim2.fromOffset(10,7);a.Font=Enum.Font.GothamBold
        local b=label(f,o.Content or "",t.Muted,11);b.Position=UDim2.fromOffset(10,29);b.TextWrapped=true;b.TextYAlignment=Enum.TextYAlignment.Top
        self.TitleLabel=a;self.ContentLabel=b
    elseif kind=="Divider" then
        f.Size=UDim2.new(1,-8,0,10);f.BackgroundTransparency=1
        N("Frame",{Position=UDim2.new(0,10,.5,0),Size=UDim2.new(1,-20,0,1),BackgroundColor3=t.Border,BorderSizePixel=0},f)
    elseif kind=="Button" then
        f.Size=UDim2.new(1,-8,0,o.Height or 46)
        local b=N("TextButton",{Position=UDim2.fromOffset(5,5),Size=UDim2.new(1,-10,1,-10),BackgroundColor3=t.Surface2,Text=o.Name or "Button",TextColor3=t.Text,Font=Enum.Font.GothamMedium,TextSize=12,AutoButtonColor=false},f);C(b,8)
        b.MouseEnter:Connect(function()TweenService:Create(b,TweenInfo.new(.15),{BackgroundColor3=t.Accent}):Play()end)
        b.MouseLeave:Connect(function()TweenService:Create(b,TweenInfo.new(.15),{BackgroundColor3=t.Surface2}):Play()end)
        b.MouseButton1Click:Connect(function()if tab.Window.Library.CreateRipple then tab.Window.Library:CreateRipple(b,t.Text)end;if o.Callback then task.spawn(o.Callback)end;self.Changed:Fire()end)
        self.Button=b
    elseif kind=="Toggle" or kind=="Checkbox" then
        local state=o.Default==true
        label(f,name,t.Text,12)
        local b=N("TextButton",{AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-12,.5,0),Size=UDim2.fromOffset(kind=="Checkbox" and 25 or 48,26),BackgroundColor3=state and t.Accent or t.Surface2,Text=kind=="Checkbox" and (state and "✓" or "") or "",TextColor3=Color3.new(1,1,1),Font=Enum.Font.GothamBold,TextSize=13,AutoButtonColor=false},f);C(b,kind=="Checkbox" and 7 or 99);S(b,t.Border,.4,1)
        local knob
        if kind=="Toggle" then knob=N("Frame",{Size=UDim2.fromOffset(20,20),Position=UDim2.fromOffset(state and 25 or 3,3),BackgroundColor3=Color3.new(1,1,1),BorderSizePixel=0},b);C(knob,99) end
        local function set(v,fire)state=not not v;b.BackgroundColor3=state and t.Accent or t.Surface2;if knob then knob.Position=UDim2.fromOffset(state and 25 or 3,3) else b.Text=state and "✓" or "" end;if fire and o.Callback then task.spawn(o.Callback,state)end;self.Changed:Fire(state)end
        b.MouseButton1Click:Connect(function()set(not state,true)end);self.Button=b;self.Get=function()return state end;self.Set=function(_,v)set(v,true)end
    elseif kind=="Slider" then
        local min=o.Min or 0;local max=o.Max or 100;local value=math.clamp(o.Default or min,min,max)
        local a=label(f,name,t.Text,12);a.Size=UDim2.new(1,-100,0,20);a.Position=UDim2.fromOffset(10,3)
        local v=label(f,tostring(value),t.Accent,11);v.Size=UDim2.fromOffset(75,20);v.Position=UDim2.new(1,-85,0,3);v.TextXAlignment=Enum.TextXAlignment.Right
        local bar=N("Frame",{Position=UDim2.fromOffset(10,31),Size=UDim2.new(1,-20,0,8),BackgroundColor3=t.Surface2,BorderSizePixel=0},f);C(bar,99)
        local fill=N("Frame",{Size=UDim2.new((value-min)/(max-min),0,1,0),BackgroundColor3=t.Accent,BorderSizePixel=0},bar);C(fill,99)
        local drag=false
        local function set(x,fire)value=math.clamp(x,min,max);fill.Size=UDim2.new((value-min)/(max-min),0,1,0);v.Text=tostring(math.floor(value*100)/100);if fire and o.Callback then task.spawn(o.Callback,value)end;self.Changed:Fire(value)end
        bar.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=true end end)
        UIS.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=false end end)
        UIS.InputChanged:Connect(function(i)if drag and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then local p=math.clamp((i.Position.X-bar.AbsolutePosition.X)/bar.AbsoluteSize.X,0,1);set(min+(max-min)*p,true)end end)
        self.Get=function()return value end;self.Set=function(_,v2)set(v2,true)end
    elseif kind=="Input" or kind=="NumberInput" then
        label(f,name,t.Text,12)
        local box=N("TextBox",{AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-10,.5,0),Size=UDim2.new(.55,0,0,30),BackgroundColor3=t.Surface2,Text=o.Default and tostring(o.Default) or "",PlaceholderText=o.Placeholder or "Enter...",TextColor3=t.Text,PlaceholderColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=11,ClearTextOnFocus=false},f);C(box,8)
        box.FocusLost:Connect(function()local v=box.Text;if kind=="NumberInput" then v=tonumber(v)end;if o.Callback then task.spawn(o.Callback,v)end;self.Changed:Fire(v)end)
        self.Input=box;self.Get=function()return kind=="NumberInput" and tonumber(box.Text) or box.Text end;self.Set=function(_,v2)box.Text=tostring(v2)end
    elseif kind=="TextArea" or kind=="CodeEditor" then
        f.Size=UDim2.new(1,-8,0,o.Height or 190)
        local title=label(f,name,t.Text,12);title.Size=UDim2.new(1,0,0,25)
        local box=N("TextBox",{Position=UDim2.fromOffset(10,30),Size=UDim2.new(1,-20,1,-40),BackgroundColor3=t.Surface2,Text=o.Default or "",PlaceholderText=o.Placeholder or "Write here...",TextColor3=t.Text,PlaceholderColor3=t.Muted,Font=kind=="CodeEditor" and Enum.Font.Code or Enum.Font.Gotham,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,MultiLine=true,ClearTextOnFocus=false,TextWrapped=o.WordWrap==true},f);C(box,8)
        self.Input=box;self.Get=function()return box.Text end;self.Set=function(_,v2)box.Text=tostring(v2)end
    elseif kind=="Dropdown" or kind=="SearchDropdown" then
        local vals=o.Values or {};local selected=o.Default or vals[1]
        local b=N("TextButton",{Size=UDim2.new(1,-10,1,-10),Position=UDim2.fromOffset(5,5),BackgroundTransparency=1,Text="",AutoButtonColor=false},f)
        label(b,name,t.Text,12)
        local right=label(b,tostring(selected or "Select..."),t.Accent,11);right.Size=UDim2.new(.5,-5,1,0);right.Position=UDim2.new(.5,0,0,0);right.TextXAlignment=Enum.TextXAlignment.Right
        local pop
        local function close()if pop then pop:Destroy();pop=nil end end
        local function open()
            close();pop=N("Frame",{Position=UDim2.new(0,5,1,3),Size=UDim2.new(1,-10,0,math.min(#vals*31+8,190)),BackgroundColor3=t.Surface2,ZIndex=30,BorderSizePixel=0},f);C(pop,9);S(pop,t.Border,.2,1)
            local sc=N("ScrollingFrame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,ZIndex=31},pop)
            local lay=N("UIListLayout",{Padding=UDim.new(0,2)},sc)
            if kind=="SearchDropdown" then
                local search=N("TextBox",{Size=UDim2.new(1,-8,0,28),Position=UDim2.fromOffset(4,4),BackgroundColor3=t.Surface,PlaceholderText="Search...",Text="",TextColor3=t.Text,PlaceholderColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=11,ZIndex=32},sc);C(search,7)
                local y=35
                for _,x in ipairs(vals)do
                    local ob=N("TextButton",{Position=UDim2.fromOffset(4,y),Size=UDim2.new(1,-8,0,27),BackgroundTransparency=1,Text=tostring(x),TextColor3=t.Text,Font=Enum.Font.Gotham,TextSize=11,ZIndex=32},sc)
                    ob.MouseButton1Click:Connect(function()selected=x;right.Text=tostring(x);close();if o.Callback then task.spawn(o.Callback,x)end end);y+=29
                end
                sc.CanvasSize=UDim2.fromOffset(0,y+5)
                search:GetPropertyChangedSignal("Text"):Connect(function()
                    local q=search.Text:lower()
                    for _,ob in ipairs(sc:GetChildren())do if ob:IsA("TextButton")then ob.Visible=q=="" or ob.Text:lower():find(q,1,true)~=nil end end
                end)
            else
                for _,x in ipairs(vals)do
                    local ob=N("TextButton",{Size=UDim2.new(1,-8,0,27),BackgroundTransparency=1,Text=tostring(x),TextColor3=t.Text,Font=Enum.Font.Gotham,TextSize=11,ZIndex=32},sc)
                    ob.MouseButton1Click:Connect(function()selected=x;right.Text=tostring(x);close();if o.Callback then task.spawn(o.Callback,x)end end)
                end
                sc.CanvasSize=UDim2.fromOffset(0,#vals*29+5)
            end
        end
        b.MouseButton1Click:Connect(function()if pop then close()else open()end end)
        self.Get=function()return selected end;self.Set=function(_,v2)selected=v2;right.Text=tostring(v2)end
    elseif kind=="MultiDropdown" then
        local vals=o.Values or {};local chosen={}
        local b=N("TextButton",{Size=UDim2.new(1,-10,1,-10),Position=UDim2.fromOffset(5,5),BackgroundTransparency=1,Text="",AutoButtonColor=false},f)
        label(b,name,t.Text,12);local right=label(b,"0 selected",t.Accent,11);right.Size=UDim2.new(.5,-5,1,0);right.Position=UDim2.new(.5,0,0,0);right.TextXAlignment=Enum.TextXAlignment.Right
        local pop
        b.MouseButton1Click:Connect(function()
            if pop then pop:Destroy();pop=nil;return end
            pop=N("Frame",{Position=UDim2.new(0,5,1,3),Size=UDim2.new(1,-10,0,math.min(#vals*30+8,190)),BackgroundColor3=t.Surface2,ZIndex=30,BorderSizePixel=0},f);C(pop,9)
            for i,x in ipairs(vals)do
                local ob=N("TextButton",{Position=UDim2.fromOffset(4,4+(i-1)*29),Size=UDim2.new(1,-8,0,26),BackgroundTransparency=1,Text=tostring(x),TextColor3=t.Text,Font=Enum.Font.Gotham,TextSize=11,ZIndex=31},pop)
                ob.MouseButton1Click:Connect(function()if chosen[x] then chosen[x]=nil else chosen[x]=true end;local n=0;for _ in pairs(chosen)do n+=1 end;right.Text=n.." selected";if o.Callback then task.spawn(o.Callback,chosen)end end)
            end
        end)
        self.Get=function()return chosen end;self.Clear=function()chosen={};right.Text="0 selected"end
    elseif kind=="Keybind" then
        local key=o.Default or Enum.KeyCode.RightShift;label(f,name,t.Text,12)
        local b=N("TextButton",{AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-10,.5,0),Size=UDim2.fromOffset(105,30),BackgroundColor3=t.Surface2,Text=key.Name,TextColor3=t.Text,Font=Enum.Font.Gotham,TextSize=10},f);C(b,8)
        local listening=false;b.MouseButton1Click:Connect(function()listening=true;b.Text="Press key..."end)
        UIS.InputBegan:Connect(function(i,gp)
            if listening and i.UserInputType==Enum.UserInputType.Keyboard then key=i.KeyCode;listening=false;b.Text=key.Name;if o.Changed then task.spawn(o.Changed,key)end
            elseif not gp and i.KeyCode==key and o.Callback then task.spawn(o.Callback)end end)
        self.Get=function()return key end;self.Set=function(_,v)key=v;b.Text=v.Name end
    elseif kind=="ColorPicker" then
        local color=o.Default or t.Accent;label(f,name,t.Text,12)
        local b=N("TextButton",{AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-10,.5,0),Size=UDim2.fromOffset(65,30),BackgroundColor3=color,Text="",AutoButtonColor=false},f);C(b,8)
        local palette=o.Palette or {t.Accent,Color3.fromRGB(255,70,100),Color3.fromRGB(70,220,150),Color3.fromRGB(70,170,255),Color3.fromRGB(255,200,60),Color3.new(1,1,1),Color3.new(0,0,0)}
        local i=1;b.MouseButton1Click:Connect(function()i=i%#palette+1;color=palette[i];b.BackgroundColor3=color;if o.Callback then task.spawn(o.Callback,color)end end)
        self.Get=function()return color end;self.Set=function(_,v)color=v;b.BackgroundColor3=v;if o.Callback then task.spawn(o.Callback,v)end end
    elseif kind=="GradientPicker" then
        label(f,name,t.Text,12);local b=N("TextButton",{AnchorPoint=Vector2.new(1,.5),Position=UDim2.new(1,-10,.5,0),Size=UDim2.fromOffset(90,30),BackgroundColor3=t.Accent,Text="Gradient",TextColor3=Color3.new(1,1,1),Font=Enum.Font.GothamBold,TextSize=10},f);C(b,8)
        local grad=N("UIGradient",{Color=ColorSequence.new(t.Accent,Color3.new(1,1,1)),Rotation=0},b)
        b.MouseButton1Click:Connect(function()grad.Rotation=(grad.Rotation+45)%360;if o.Callback then task.spawn(o.Callback,grad)end end)
        self.Get=function()return grad end
    elseif kind=="RadioGroup" then
        f.Size=UDim2.new(1,-8,0,math.max(50,#(o.Values or {})*30+20));label(f,name,t.Text,12).Size=UDim2.new(1,0,0,22)
        local selected=o.Default or (o.Values or {})[1]
        for i,v in ipairs(o.Values or {})do
            local b=N("TextButton",{Position=UDim2.fromOffset(10,24+(i-1)*28),Size=UDim2.new(1,-20,0,24),BackgroundTransparency=1,Text="○  "..tostring(v),TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left},f)
            b.MouseButton1Click:Connect(function()selected=v;for _,x in ipairs(f:GetChildren())do if x:IsA("TextButton")then x.Text="○  "..x.Text:gsub("^○  ",""):gsub("^●  ","")end end;b.Text="●  "..tostring(v);if o.Callback then task.spawn(o.Callback,v)end end)
        end
        self.Get=function()return selected end;self.Set=function(_,v)selected=v end
    elseif kind=="ToggleGroup" or kind=="ButtonGroup" then
        local vals=o.Values or {};f.Size=UDim2.new(1,-8,0,math.max(50,#vals*34+20));label(f,name,t.Text,12)
        for i,v in ipairs(vals)do
            local b=N("TextButton",{Position=UDim2.fromOffset(10,23+(i-1)*31),Size=UDim2.new(1,-20,0,27),BackgroundColor3=t.Surface2,Text=tostring(v),TextColor3=t.Text,Font=Enum.Font.Gotham,TextSize=10},f);C(b,7)
            b.MouseButton1Click:Connect(function()if o.Callback then task.spawn(o.Callback,v)end end)
        end
    elseif kind=="Stepper" then
        local value=o.Default or 0;label(f,name,t.Text,12);local out=label(f,tostring(value),t.Accent,12);out.Size=UDim2.fromOffset(60,40);out.Position=UDim2.new(1,-115,0,5);out.TextXAlignment=Enum.TextXAlignment.Center
        local minus=N("TextButton",{Position=UDim2.new(1,-145,0,9),Size=UDim2.fromOffset(28,28),BackgroundColor3=t.Surface2,Text="−",TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=15},f);C(minus,7)
        local plus=N("TextButton",{Position=UDim2.new(1,-40,0,9),Size=UDim2.fromOffset(28,28),BackgroundColor3=t.Surface2,Text="+",TextColor3=t.Text,Font=Enum.Font.GothamBold,TextSize=15},f);C(plus,7)
        local step=o.Step or 1;local function set(v)value=v;out.Text=tostring(value);if o.Callback then task.spawn(o.Callback,value)end end
        minus.MouseButton1Click:Connect(function()set(value-step)end);plus.MouseButton1Click:Connect(function()set(value+step)end);self.Get=function()return value end;self.Set=function(_,v)set(v)end
    elseif kind=="Progress" or kind=="LoadingBar" then
        local value=math.clamp(o.Default or 0,0,100);label(f,name,t.Text,11)
        local v=label(f,tostring(value).."%",t.Accent,10);v.Size=UDim2.fromOffset(55,20);v.Position=UDim2.new(1,-65,0,0);v.TextXAlignment=Enum.TextXAlignment.Right
        local bar=N("Frame",{Position=UDim2.fromOffset(10,29),Size=UDim2.new(1,-20,0,8),BackgroundColor3=t.Surface2,BorderSizePixel=0},f);C(bar,99)
        local fill=N("Frame",{Size=UDim2.new(value/100,0,1,0),BackgroundColor3=t.Accent,BorderSizePixel=0},bar);C(fill,99)
        local function set(x)value=math.clamp(x,0,100);fill.Size=UDim2.new(value/100,0,1,0);v.Text=math.floor(value).."%";if o.Callback then task.spawn(o.Callback,value)end end
        self.Get=function()return value end;self.Set=function(_,x)set(x)end
        if kind=="LoadingBar" and o.Animate then task.spawn(function()while f.Parent do set((os.clock()*20)%101);RunService.RenderStepped:Wait()end end)end
    elseif kind=="StatCard" or kind=="Counter" or kind=="Status" then
        local value=o.Value or o.Default or "0";local a=label(f,name,t.Muted,10);a.Position=UDim2.fromOffset(10,5)
        local b=label(f,tostring(value),kind=="Status" and t.Good or t.Text,16);b.Position=UDim2.fromOffset(10,20);b.Font=Enum.Font.GothamBold
        self.Get=function()return value end;self.Set=function(_,v)value=v;b.Text=tostring(v)end
    elseif kind=="Timer" then
        local value=o.Duration or 0;label(f,name,t.Muted,10);local b=label(f,"00:00",t.Text,16);b.Position=UDim2.fromOffset(10,20);b.Font=Enum.Font.GothamBold
        task.spawn(function()while f.Parent and value>0 do local m=math.floor(value/60);local s=value%60;b.Text=string.format("%02d:%02d",m,s);value-=1;task.wait(1)end end)
        self.Get=function()return value end
    elseif kind=="FPS" then
        label(f,name,t.Muted,10);local b=label(f,"FPS: --",t.Text,15);b.Position=UDim2.fromOffset(10,20);b.Font=Enum.Font.GothamBold
        task.spawn(function()local frames=0;local start=os.clock();RunService.RenderStepped:Connect(function()frames+=1;if os.clock()-start>=1 then b.Text="FPS: "..frames;frames=0;start=os.clock()end end)end)
    elseif kind=="Ping" then
        label(f,name,t.Muted,10);local b=label(f,"Ping: --",t.Text,15);b.Position=UDim2.fromOffset(10,20);b.Font=Enum.Font.GothamBold
        task.spawn(function()local stats=game:GetService("Stats");while f.Parent do local p=stats.Network.ServerStatsItem["Data Ping"]:GetValue();b.Text="Ping: "..math.floor(p).." ms";task.wait(1)end end)
    elseif kind=="Table" then
        f.Size=UDim2.new(1,-8,0,o.Height or 160);label(f,name,t.Text,12).Size=UDim2.new(1,0,0,24)
        local sc=N("ScrollingFrame",{Position=UDim2.fromOffset(8,28),Size=UDim2.new(1,-16,1,-36),BackgroundColor3=t.Surface2,BorderSizePixel=0,ScrollBarThickness=2},f);C(sc,8)
        for i,row in ipairs(o.Rows or {})do local text=type(row)=="table" and table.concat(row,"  |  ") or tostring(row);N("TextLabel",{Position=UDim2.fromOffset(8,(i-1)*25),Size=UDim2.new(1,-16,0,22),BackgroundTransparency=1,Text=text,TextColor3=t.Text,Font=Enum.Font.Code,TextSize=10,TextXAlignment=Enum.TextXAlignment.Left},sc)end
        sc.CanvasSize=UDim2.fromOffset(0,#(o.Rows or {})*25)
    elseif kind=="Activity" then
        f.Size=UDim2.new(1,-8,0,o.Height or 130);label(f,name,t.Text,12).Size=UDim2.new(1,0,0,24)
        for i,item in ipairs(o.Items or {})do local tx=type(item)=="table" and (item.Title or "").." — "..(item.Content or "") or tostring(item);N("TextLabel",{Position=UDim2.fromOffset(10,24+(i-1)*24),Size=UDim2.new(1,-20,0,20),BackgroundTransparency=1,Text=tx,TextColor3=t.Muted,Font=Enum.Font.Gotham,TextSize=10,TextXAlignment=Enum.TextXAlignment.Left},f)end
    elseif kind=="Graph" then
        f.Size=UDim2.new(1,-8,0,o.Height or 160);label(f,name,t.Text,12)
        local graph=N("Frame",{Position=UDim2.fromOffset(10,28),Size=UDim2.new(1,-20,1,-38),BackgroundColor3=t.Surface2,BorderSizePixel=0},f);C(graph,8)
        local vals=o.Values or {10,30,20,50,40,70,55}
        local max=math.max(table.unpack(vals));local w=graph.AbsoluteSize.X/#vals
        for i,v in ipairs(vals)do local x=N("Frame",{AnchorPoint=Vector2.new(.5,1),Position=UDim2.new((i-.5)/#vals,0,1,0),Size=UDim2.new(1/#vals*.65,0,v/max,0),BackgroundColor3=t.Accent,BorderSizePixel=0},graph);C(x,4)end
    end

    function self:Set(v)
        if self.Set then return self:Set(v) end
        self.Value=v
    end
    function self:Get()
        return self.Value
    end
    function self:SetCallback(fn)
        self.Changed:Connect(fn)
        return self
    end
    function self:Bind(state)
        if state and state.Connect then state:Connect(function(v)self:Set(v)end) end
        return self
    end
    function self:BindVisibility(target)
        self.Changed:Connect(function(v)if target and target.Instance then target.Instance.Visible=not not v elseif typeof(target)=="Instance" then target.Visible=not not v end end)
        return self
    end
    function self:SetVisible(v)self.Instance.Visible=not not v;return self end
    function self:SetEnabled(v)
        for _,x in ipairs(self.Instance:GetDescendants())do if x:IsA("TextButton") or x:IsA("TextBox") then x.Active=not not v;x.AutoButtonColor=not not v end end
        return self
    end
    function self:Destroy()if self.Instance then self.Instance:Destroy()end end
    return self
end

return Component
]=]
__ARIO_SOURCES['Core.Library'] = [=[local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

local Signal = __ARIO_LOAD("Core.Signal")
local Cleanup = __ARIO_LOAD("Core.Cleanup")
local Animation = __ARIO_LOAD("Core.Animation")
local ThemeData = __ARIO_LOAD("Themes.Default")

local Library = {
    Name = "ARIO UI",
    Version = "2.0.0",
    Build = "ARIO-2.0-PRO",
    Themes = ThemeData,
    Components = {},
    Plugins = {},
    Debug = false,
    PerformanceMode = false
}

local function N(class, props, parent)
    local o = Instance.new(class)
    for k,v in pairs(props or {}) do o[k] = v end
    o.Parent = parent
    return o
end

local function corner(o, r)
    local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0,r or 10); c.Parent=o; return c
end

local function stroke(o, color, trans, thickness)
    local s = Instance.new("UIStroke"); s.Color=color; s.Transparency=trans or .5; s.Thickness=thickness or 1; s.Parent=o; return s
end

local function clone(t)
    local n={}; for k,v in pairs(t) do n[k]=type(v)=="table" and clone(v) or v end; return n
end

local function fmt(v)
    if type(v) ~= "number" then return tostring(v) end
    if math.abs(v) >= 1000000 then return string.format("%.1fm",v/1000000) end
    if math.abs(v) >= 1000 then return string.format("%.1fk",v/1000) end
    return tostring(math.floor(v*100)/100)
end

function Library:CreateState(default)
    local state={Value=default,Changed=Signal.new()}
    function state:Get() return self.Value end
    function state:Set(v) self.Value=v; self.Changed:Fire(v) end
    function state:Connect(fn) return self.Changed:Connect(fn) end
    return state
end

function Library:RegisterTheme(name, theme)
    assert(type(name)=="string" and type(theme)=="table")
    self.Themes[name]=theme
end

function Library:GetTheme(name)
    return clone(self.Themes[name or "ARIO"] or self.Themes.ARIO)
end

function Library:GetThemes()
    local t={}; for n in pairs(self.Themes) do table.insert(t,n) end; table.sort(t); return t
end

function Library:RegisterComponent(name, factory)
    assert(type(name)=="string" and type(factory)=="function")
    self.Components[name]=factory
end

function Library:FormatNumber(n) return fmt(n) end

function Library:IsMobile()
    return UIS.TouchEnabled and not UIS.KeyboardEnabled
end

function Library:GetFPS()
    return math.floor(1 / math.max(RunService.RenderStepped:Wait(), 1/240))
end

function Library:CreateWindow(options)
    options=options or {}
    local theme=clone(self.Themes[options.Theme or "ARIO"] or self.Themes.ARIO)
    local window=setmetatable({
        Library=self,Theme=theme,Options=options,Tabs={},Cleanup=Cleanup.new(),
        Animation=Animation.new(),Components={},Visible=true,
        Changed=Signal.new()
    },{__index=__ARIO_LOAD("Core.Window")})
    window:Build()
    return window
end

function Library:SetDebug(v) self.Debug=not not v end
function Library:SetPerformanceMode(v) self.PerformanceMode=not not v end

function Library:Tween(obj, props, options)
    return Animation.new():Play(obj,props,options)
end

function Library:CreateGradient(parent, colorSequence, rotation)
    local g=Instance.new("UIGradient");g.Color=colorSequence;g.Rotation=rotation or 0;g.Parent=parent;return g
end

function Library:CreateRipple(button, color)
    local p=button.AbsolutePosition;local m=UIS:GetMouseLocation()
    local r=Instance.new("Frame");r.AnchorPoint=Vector2.new(.5,.5)
    r.Position=UDim2.fromOffset(m.X-p.X,m.Y-p.Y);r.Size=UDim2.fromOffset(0,0)
    r.BackgroundColor3=color or Color3.new(1,1,1);r.BackgroundTransparency=.65;r.BorderSizePixel=0;r.Parent=button;corner(r,999)
    TweenService:Create(r,TweenInfo.new(.45),{Size=UDim2.fromOffset(math.max(button.AbsoluteSize.X,button.AbsoluteSize.Y)*2,math.max(button.AbsoluteSize.X,button.AbsoluteSize.Y)*2),BackgroundTransparency=1}):Play()
    task.delay(.5,function()if r.Parent then r:Destroy()end end)
end

function Library:CreateGlow(parent, color)
    local s=stroke(parent,color or self:GetTheme().Accent,.25,2)
    return s
end

function Library:CreateSpring(obj,props,duration)
    return Animation.new():Spring(obj,props,duration)
end

function Library:Unload()
    local gui=CoreGui:FindFirstChild("ARIO_UI")
    if gui then gui:Destroy() end
    local lighting=game:GetService("Lighting")
    for _,v in ipairs(lighting:GetChildren()) do
        if v.Name:sub(1,9)=="ARIOBlur_" then v:Destroy() end
    end
end

return Library
]=]
__ARIO_SOURCES['Core.Signal'] = [=[local Signal = {}
Signal.__index = Signal

function Signal.new()
    return setmetatable({Listeners = {}}, Signal)
end

function Signal:Connect(fn)
    assert(type(fn) == "function", "Signal listener must be a function")
    local item = {fn = fn, connected = true}
    table.insert(self.Listeners, item)
    return {
        Disconnect = function()
            if not item.connected then return end
            item.connected = false
            for i, x in ipairs(self.Listeners) do
                if x == item then table.remove(self.Listeners, i) break end
            end
        end
    }
end

function Signal:Fire(...)
    local args = table.pack(...)
    for _, item in ipairs(self.Listeners) do
        if item.connected then task.spawn(item.fn, table.unpack(args, 1, args.n)) end
    end
end

function Signal:Destroy()
    table.clear(self.Listeners)
end

return Signal
]=]
__ARIO_SOURCES['Core.Tab'] = [=[local Component = __ARIO_LOAD("Core.Component")

local Tab={}
Tab.__index=Tab

function Tab:CreateSection(o)
    o=o or {};return Component.new(self,"Section",o)
end
function Tab:CreateLabel(o)return Component.new(self,"Label",type(o)=="string" and {Text=o} or (o or {}))end
function Tab:CreateParagraph(o)return Component.new(self,"Paragraph",o or {})end
function Tab:CreateButton(o)return Component.new(self,"Button",o or {})end
function Tab:CreateToggle(o)return Component.new(self,"Toggle",o or {})end
function Tab:CreateCheckbox(o)return Component.new(self,"Checkbox",o or {})end
function Tab:CreateSlider(o)return Component.new(self,"Slider",o or {})end
function Tab:CreateNumberInput(o)return Component.new(self,"NumberInput",o or {})end
function Tab:CreateDropdown(o)return Component.new(self,"Dropdown",o or {})end
function Tab:CreateMultiDropdown(o)return Component.new(self,"MultiDropdown",o or {})end
function Tab:CreateSearchDropdown(o)return Component.new(self,"SearchDropdown",o or {})end
function Tab:CreateInput(o)return Component.new(self,"Input",o or {})end
function Tab:CreateTextArea(o)return Component.new(self,"TextArea",o or {})end
function Tab:CreateKeybind(o)return Component.new(self,"Keybind",o or {})end
function Tab:CreateColorPicker(o)return Component.new(self,"ColorPicker",o or {})end
function Tab:CreateGradientPicker(o)return Component.new(self,"GradientPicker",o or {})end
function Tab:CreateRadioGroup(o)return Component.new(self,"RadioGroup",o or {})end
function Tab:CreateToggleGroup(o)return Component.new(self,"ToggleGroup",o or {})end
function Tab:CreateButtonGroup(o)return Component.new(self,"ButtonGroup",o or {})end
function Tab:CreateStepper(o)return Component.new(self,"Stepper",o or {})end
function Tab:CreateProgress(o)return Component.new(self,"Progress",o or {})end
function Tab:CreateLoadingBar(o)return Component.new(self,"LoadingBar",o or {})end
function Tab:CreateStatCard(o)return Component.new(self,"StatCard",o or {})end
function Tab:CreateCounter(o)return Component.new(self,"Counter",o or {})end
function Tab:CreateStatus(o)return Component.new(self,"Status",o or {})end
function Tab:CreateTimer(o)return Component.new(self,"Timer",o or {})end
function Tab:CreateFPS(o)return Component.new(self,"FPS",o or {})end
function Tab:CreatePing(o)return Component.new(self,"Ping",o or {})end
function Tab:CreateDivider(o)return Component.new(self,"Divider",o or {})end
function Tab:CreateCodeEditor(o)return Component.new(self,"CodeEditor",o or {})end
function Tab:CreateTable(o)return Component.new(self,"Table",o or {})end
function Tab:CreateActivity(o)return Component.new(self,"Activity",o or {})end
function Tab:CreateGraph(o)return Component.new(self,"Graph",o or {})end

return Tab
]=]
__ARIO_SOURCES['Core.Window'] = [=[local UIS = game:GetService("UserInputService")
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
    return setmetatable(tab,{__index=__ARIO_LOAD("Core.Tab")})
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
]=]
__ARIO_SOURCES['Effects.Aurora'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Aurora",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Background'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Background",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Glow'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Glow",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.GradientBorder'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="GradientBorder",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Grid'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Grid",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Noise'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Noise",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Particles'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Particles",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Pulse'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Pulse",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Scanlines'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Scanlines",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Shimmer'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Shimmer",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Stars'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Stars",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Effects.Waves'] = [=[local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Waves",Root=root,Options=options,Destroy=function() end}
end
return M
]=]
__ARIO_SOURCES['Themes.Default'] = [=[return {
    Midnight = {Background=Color3.fromRGB(10,11,16),Surface=Color3.fromRGB(17,18,25),Surface2=Color3.fromRGB(24,25,34),Text=Color3.fromRGB(245,245,250),Muted=Color3.fromRGB(145,148,160),Border=Color3.fromRGB(48,50,64),Accent=Color3.fromRGB(110,90,255),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Dark = {Background=Color3.fromRGB(14,14,16),Surface=Color3.fromRGB(22,22,25),Surface2=Color3.fromRGB(30,30,35),Text=Color3.fromRGB(245,245,245),Muted=Color3.fromRGB(150,150,155),Border=Color3.fromRGB(55,55,60),Accent=Color3.fromRGB(140,140,255),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    AMOLED = {Background=Color3.fromRGB(0,0,0),Surface=Color3.fromRGB(7,7,7),Surface2=Color3.fromRGB(15,15,15),Text=Color3.fromRGB(255,255,255),Muted=Color3.fromRGB(145,145,145),Border=Color3.fromRGB(35,35,35),Accent=Color3.fromRGB(155,100,255),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Purple = {Background=Color3.fromRGB(14,9,22),Surface=Color3.fromRGB(24,15,38),Surface2=Color3.fromRGB(35,22,55),Text=Color3.fromRGB(250,245,255),Muted=Color3.fromRGB(165,145,185),Border=Color3.fromRGB(70,45,95),Accent=Color3.fromRGB(175,90,255),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Ocean = {Background=Color3.fromRGB(7,15,24),Surface=Color3.fromRGB(12,25,38),Surface2=Color3.fromRGB(18,37,54),Text=Color3.fromRGB(235,247,255),Muted=Color3.fromRGB(130,165,190),Border=Color3.fromRGB(35,70,95),Accent=Color3.fromRGB(45,170,255),Good=Color3.fromRGB(70,220,150),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Crimson = {Background=Color3.fromRGB(18,9,12),Surface=Color3.fromRGB(29,13,18),Surface2=Color3.fromRGB(42,18,25),Text=Color3.fromRGB(255,242,245),Muted=Color3.fromRGB(175,135,145),Border=Color3.fromRGB(75,35,45),Accent=Color3.fromRGB(235,65,95),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Emerald = {Background=Color3.fromRGB(7,16,13),Surface=Color3.fromRGB(11,28,21),Surface2=Color3.fromRGB(17,42,31),Text=Color3.fromRGB(235,255,245),Muted=Color3.fromRGB(130,170,150),Border=Color3.fromRGB(35,75,58),Accent=Color3.fromRGB(45,210,135),Good=Color3.fromRGB(70,220,150),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Rose = {Background=Color3.fromRGB(18,10,17),Surface=Color3.fromRGB(30,15,28),Surface2=Color3.fromRGB(44,21,40),Text=Color3.fromRGB(255,242,250),Muted=Color3.fromRGB(180,140,165),Border=Color3.fromRGB(80,40,70),Accent=Color3.fromRGB(245,90,170),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Cyberpunk = {Background=Color3.fromRGB(8,5,18),Surface=Color3.fromRGB(17,10,32),Surface2=Color3.fromRGB(27,15,48),Text=Color3.fromRGB(245,240,255),Muted=Color3.fromRGB(165,145,190),Border=Color3.fromRGB(70,30,100),Accent=Color3.fromRGB(255,35,210),Good=Color3.fromRGB(60,255,190),Bad=Color3.fromRGB(255,70,100),Warn=Color3.fromRGB(255,205,60)},
    Matrix = {Background=Color3.fromRGB(2,8,4),Surface=Color3.fromRGB(5,16,8),Surface2=Color3.fromRGB(8,25,13),Text=Color3.fromRGB(215,255,225),Muted=Color3.fromRGB(110,165,125),Border=Color3.fromRGB(20,75,35),Accent=Color3.fromRGB(50,255,100),Good=Color3.fromRGB(50,255,100),Bad=Color3.fromRGB(255,70,90),Warn=Color3.fromRGB(220,220,60)},
    Dracula = {Background=Color3.fromRGB(25,24,38),Surface=Color3.fromRGB(40,39,58),Surface2=Color3.fromRGB(52,51,72),Text=Color3.fromRGB(248,248,242),Muted=Color3.fromRGB(170,170,180),Border=Color3.fromRGB(75,73,100),Accent=Color3.fromRGB(189,147,249),Good=Color3.fromRGB(80,250,123),Bad=Color3.fromRGB(255,85,85),Warn=Color3.fromRGB(255,184,108)},
    Nord = {Background=Color3.fromRGB(46,52,64),Surface=Color3.fromRGB(59,66,82),Surface2=Color3.fromRGB(67,76,94),Text=Color3.fromRGB(236,239,244),Muted=Color3.fromRGB(170,180,195),Border=Color3.fromRGB(85,95,112),Accent=Color3.fromRGB(136,192,208),Good=Color3.fromRGB(163,190,140),Bad=Color3.fromRGB(191,97,106),Warn=Color3.fromRGB(235,203,139)},
    ["Tokyo Night"] = {Background=Color3.fromRGB(15,17,26),Surface=Color3.fromRGB(26,29,45),Surface2=Color3.fromRGB(35,39,58),Text=Color3.fromRGB(220,223,250),Muted=Color3.fromRGB(125,135,165),Border=Color3.fromRGB(50,56,85),Accent=Color3.fromRGB(122,162,247),Good=Color3.fromRGB(158,206,106),Bad=Color3.fromRGB(247,118,142),Warn=Color3.fromRGB(224,175,104)},
    Monokai = {Background=Color3.fromRGB(25,25,20),Surface=Color3.fromRGB(39,40,34),Surface2=Color3.fromRGB(52,53,45),Text=Color3.fromRGB(248,248,242),Muted=Color3.fromRGB(170,170,155),Border=Color3.fromRGB(80,80,65),Accent=Color3.fromRGB(249,38,114),Good=Color3.fromRGB(166,226,46),Bad=Color3.fromRGB(249,38,114),Warn=Color3.fromRGB(253,151,31)},
    Synthwave = {Background=Color3.fromRGB(17,7,25),Surface=Color3.fromRGB(30,12,45),Surface2=Color3.fromRGB(46,17,65),Text=Color3.fromRGB(255,235,255),Muted=Color3.fromRGB(185,130,190),Border=Color3.fromRGB(85,35,105),Accent=Color3.fromRGB(255,80,210),Good=Color3.fromRGB(70,255,170),Bad=Color3.fromRGB(255,70,100),Warn=Color3.fromRGB(255,205,80)},
    Sunset = {Background=Color3.fromRGB(22,10,8),Surface=Color3.fromRGB(38,17,12),Surface2=Color3.fromRGB(58,25,17),Text=Color3.fromRGB(255,245,235),Muted=Color3.fromRGB(190,145,125),Border=Color3.fromRGB(95,45,30),Accent=Color3.fromRGB(255,125,60),Good=Color3.fromRGB(100,220,120),Bad=Color3.fromRGB(255,80,70),Warn=Color3.fromRGB(255,200,70)},
    Ice = {Background=Color3.fromRGB(9,15,20),Surface=Color3.fromRGB(16,25,32),Surface2=Color3.fromRGB(25,37,47),Text=Color3.fromRGB(240,250,255),Muted=Color3.fromRGB(145,170,185),Border=Color3.fromRGB(50,75,90),Accent=Color3.fromRGB(100,205,255),Good=Color3.fromRGB(70,220,150),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Gold = {Background=Color3.fromRGB(17,14,8),Surface=Color3.fromRGB(29,24,12),Surface2=Color3.fromRGB(43,35,17),Text=Color3.fromRGB(255,250,230),Muted=Color3.fromRGB(175,160,120),Border=Color3.fromRGB(78,64,30),Accent=Color3.fromRGB(245,190,65),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    White = {Background=Color3.fromRGB(238,240,244),Surface=Color3.fromRGB(250,250,252),Surface2=Color3.fromRGB(228,231,237),Text=Color3.fromRGB(25,26,30),Muted=Color3.fromRGB(95,98,105),Border=Color3.fromRGB(200,204,212),Accent=Color3.fromRGB(80,95,230),Good=Color3.fromRGB(35,165,100),Bad=Color3.fromRGB(210,55,70),Warn=Color3.fromRGB(205,140,30)},
    Gray = {Background=Color3.fromRGB(24,25,27),Surface=Color3.fromRGB(34,35,38),Surface2=Color3.fromRGB(45,46,50),Text=Color3.fromRGB(240,240,240),Muted=Color3.fromRGB(155,155,160),Border=Color3.fromRGB(70,70,75),Accent=Color3.fromRGB(170,170,180),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Void = {Background=Color3.fromRGB(3,3,7),Surface=Color3.fromRGB(8,8,15),Surface2=Color3.fromRGB(15,15,26),Text=Color3.fromRGB(240,240,255),Muted=Color3.fromRGB(120,120,145),Border=Color3.fromRGB(30,30,50),Accent=Color3.fromRGB(100,80,255),Good=Color3.fromRGB(70,220,150),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)},
    Neon = {Background=Color3.fromRGB(3,10,12),Surface=Color3.fromRGB(5,20,22),Surface2=Color3.fromRGB(8,32,35),Text=Color3.fromRGB(225,255,255),Muted=Color3.fromRGB(105,170,175),Border=Color3.fromRGB(20,90,95),Accent=Color3.fromRGB(0,255,220),Good=Color3.fromRGB(60,255,150),Bad=Color3.fromRGB(255,60,100),Warn=Color3.fromRGB(255,220,60)},
    ["Blood Moon"] = {Background=Color3.fromRGB(13,4,6),Surface=Color3.fromRGB(25,7,10),Surface2=Color3.fromRGB(39,10,15),Text=Color3.fromRGB(255,235,238),Muted=Color3.fromRGB(175,115,125),Border=Color3.fromRGB(75,25,32),Accent=Color3.fromRGB(220,25,45),Good=Color3.fromRGB(70,210,135),Bad=Color3.fromRGB(255,50,65),Warn=Color3.fromRGB(245,180,70)},
    Terminal = {Background=Color3.fromRGB(3,7,4),Surface=Color3.fromRGB(7,14,8),Surface2=Color3.fromRGB(10,22,12),Text=Color3.fromRGB(195,255,205),Muted=Color3.fromRGB(100,170,110),Border=Color3.fromRGB(25,75,35),Accent=Color3.fromRGB(75,255,100),Good=Color3.fromRGB(75,255,100),Bad=Color3.fromRGB(255,70,70),Warn=Color3.fromRGB(235,220,60)},
    ARIO = {Background=Color3.fromRGB(7,12,22),Surface=Color3.fromRGB(12,20,34),Surface2=Color3.fromRGB(19,29,48),Text=Color3.fromRGB(240,247,255),Muted=Color3.fromRGB(135,155,180),Border=Color3.fromRGB(35,60,95),Accent=Color3.fromRGB(70,150,255),Good=Color3.fromRGB(70,220,150),Bad=Color3.fromRGB(240,80,95),Warn=Color3.fromRGB(245,180,70)}
}
]=]
__ARIO_SOURCES['Utilities.Clipboard'] = [=[local Clipboard={}
function Clipboard.Set(text)
    if setclipboard then setclipboard(tostring(text));return true end
    if toclipboard then toclipboard(tostring(text));return true end
    return false
end
function Clipboard.Get()
    if getclipboard then return getclipboard() end
    return nil
end
return Clipboard
]=]
__ARIO_SOURCES['Utilities.Config'] = [=[local HttpService=game:GetService("HttpService")
local Config={}
function Config.Save(name,data)
    if not writefile then return false,"writefile unavailable" end
    writefile("ARIO_"..tostring(name)..".json",HttpService:JSONEncode(data))
    return true
end
function Config.Load(name)
    if not readfile or not isfile or not isfile("ARIO_"..tostring(name)..".json") then return nil,"config not found" end
    local ok,v=pcall(HttpService.JSONDecode,HttpService,readfile("ARIO_"..tostring(name)..".json"))
    return ok and v or nil,"invalid config"
end
function Config.Delete(name)
    if delfile and isfile and isfile("ARIO_"..tostring(name)..".json") then delfile("ARIO_"..tostring(name)..".json");return true end
    return false
end
return Config
]=]
__ARIO_SOURCES['init'] = [=[-- ARIO UI Framework
-- Public single-file loader target can be generated from this framework.
-- Development entry point.
local Library = __ARIO_LOAD("Core.Library")
return Library
]=]

local function __ARIO_LOAD(name)
    if __ARIO_CACHE[name] ~= nil then return __ARIO_CACHE[name] end
    local source = __ARIO_SOURCES[name]
    if not source then error('[ARIO UI] Missing module: ' .. tostring(name), 2) end
    local chunk, err = loadstring(source, '@ARIO/' .. name .. '.lua')
    if not chunk then error(err, 2) end
    local result = chunk()
    __ARIO_CACHE[name] = result
    return result
end

local Library = __ARIO_LOAD('Core.Library')
return Library