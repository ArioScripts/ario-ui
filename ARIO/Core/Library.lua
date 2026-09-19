local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

local Signal = require(script.Parent.Signal)
local Cleanup = require(script.Parent.Cleanup)
local Animation = require(script.Parent.Animation)
local ThemeData = require(script.Parent.Parent.Themes.Default)

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
    },{__index=require(script.Parent.Window)})
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
