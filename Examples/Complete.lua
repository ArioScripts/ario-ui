local ARIO = loadstring(game:HttpGet("YOUR_RAW_GITHUB_URL"))()

local Window = ARIO:CreateWindow({
    Title = "ARIO HUB",
    Subtitle = "Premium UI Framework",
    Author = "ARIO SCRIPTS",
    Logo = "A",
    Theme = "ARIO",
    Animation = "Spring",
    ToggleKey = Enum.KeyCode.RightShift,
    Size = UDim2.fromOffset(760, 560),
    Blur = true,
    LoadingScreen = true,
    CornerRadius = 14
})

local Main = Window:CreateTab({Name="Main",Icon="◆",Badge="NEW"})
local Settings = Window:CreateTab({Name="Settings",Icon="⚙"})
local Stats = Window:CreateTab({Name="Stats",Icon="◈"})

Main:CreateSection({Name="Core Controls",Collapsible=true,Description="Main framework controls."})

local toggle = Main:CreateToggle({
    Name="Enabled",
    Default=true,
    Callback=function(v) print("Enabled:",v) end
})

Main:CreateSlider({
    Name="Power",
    Min=0,Max=100,Default=50,
    Callback=function(v) print("Power:",v) end
})

Main:CreateDropdown({
    Name="Mode",
    Values={"Legit","Normal","Extreme"},
    Default="Normal",
    Callback=function(v) print("Mode:",v) end
})

Main:CreateSearchDropdown({
    Name="Search Target",
    Values={"Alpha","Bravo","Charlie","Delta"},
    Callback=function(v) print("Target:",v) end
})

Main:CreateColorPicker({
    Name="Accent",
    Default=Window.Theme.Accent,
    Callback=function(c) Window:SetAccent(c) end
})

Main:CreateButton({
    Name="Show Notification",
    Callback=function()
        Window:Notify({
            Title="ARIO",
            Content="Everything is working.",
            Type="Success",
            Duration=3
        })
    end
})

Main:CreateButton({
    Name="Confirm Dialog",
    Callback=function()
        Window:Confirm({
            Title="Continue?",
            Content="This is the ARIO modal system.",
            Callback=function()
                Window:Notify({Title="Confirmed",Content="Action accepted.",Type="Success"})
            end
        })
    end
})

Settings:CreateSection({Name="Appearance"})
Settings:CreateDropdown({
    Name="Theme",
    Values=ARIO:GetThemes(),
    Default="ARIO",
    Callback=function(v) Window:SetTheme(v) end
})

Settings:CreateToggle({
    Name="Performance Mode",
    Callback=function(v) ARIO:SetPerformanceMode(v) end
})

Settings:CreateKeybind({
    Name="Window Key",
    Default=Enum.KeyCode.RightShift,
    Callback=function() Window:Toggle() end
})

Settings:CreateCodeEditor({
    Name="Lua Code",
    Default='print("Hello from ARIO")',
    WordWrap=false
})

Stats:CreateStatCard({Name="Framework",Value=ARIO.Version})
Stats:CreateFPS({Name="Performance"})
Stats:CreatePing({Name="Network"})
Stats:CreateProgress({Name="Loading",Default=72})

local state = ARIO:CreateState(false)
toggle:Bind(state)
state:Set(true)
