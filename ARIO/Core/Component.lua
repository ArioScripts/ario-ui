local UIS=game:GetService("UserInputService")
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
    local self=setmetatable({Instance=f,Tab=tab,Type=kind,Value=o.Default,Changed=require(script.Parent.Signal).new()},Component)
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
