# ARIO UI Framework — PRO

A custom modular Roblox Lua UI framework designed to feel like a real modern framework rather than a basic GUI script.

## What is included

### Design system
- Dark/light capable theme architecture
- Custom accent colors
- 25+ built-in themes
- Transparency
- Rounded/square-ready surfaces
- Gradients
- Blur
- Borders and outline thickness
- Glow hooks
- Animation engine
- Custom branding
- UI scaling-ready layout

### Window
- Dragging
- Touch dragging
- Minimize
- Maximize
- Close
- Reopen/toggle
- Animated transitions
- Mobile-aware input
- Loading screen
- Command center
- Runtime theme changes

### Components
- Button
- Toggle
- Checkbox
- Slider
- Dropdown
- Searchable dropdown
- Multi dropdown
- Input
- Number input
- Text area
- Keybind
- Color picker
- Gradient picker
- Radio group
- Toggle group
- Button group
- Stepper
- Progress bar
- Loading bar
- Label
- Paragraph
- Section
- Divider
- Code editor
- Stat card
- Counter
- Status
- Timer
- FPS
- Ping
- Table
- Activity list
- Graph

### Developer systems
- Component objects
- `:Set()`
- `:Get()`
- `:SetCallback()`
- `:Bind()`
- `:BindVisibility()`
- `:SetVisible()`
- `:SetEnabled()`
- `:Destroy()`
- Shared state
- Signals
- Cleanup manager
- Animation manager
- Plugin registration
- Debug mode
- Performance mode
- Config utility
- Clipboard utility
- FPS helper
- Number formatting

### Effects architecture
Effect modules are included for:
- Glow
- Pulse
- Particles
- Background
- Scanlines
- Shimmer
- Gradient borders
- Aurora
- Grid
- Stars
- Waves
- Noise

These are intentionally modular so expensive effects can be disabled instead of running constantly.

---

# Installation

The framework source is organized for development:

```text
ARIO/
├── Core/
│   ├── Library.lua
│   ├── Window.lua
│   ├── Tab.lua
│   ├── Component.lua
│   ├── Signal.lua
│   ├── Cleanup.lua
│   └── Animation.lua
├── Components/
├── Themes/
├── Effects/
├── Utilities/
└── Plugins/
```

For a public release, the recommended user experience is one remote loader:

```lua
local ARIO = loadstring(game:HttpGet("YOUR_RAW_GITHUB_URL"))()
```

The development tree is intentionally modular; your release/build step can combine it into a single public file.

---

# Window example

```lua
local Window = ARIO:CreateWindow({
    Title = "ARIO HUB",
    Subtitle = "Premium UI Framework",
    Author = "ARIO SCRIPTS",
    Logo = "A",
    Theme = "ARIO",
    Size = UDim2.fromOffset(760, 560),
    ToggleKey = Enum.KeyCode.RightShift,
    Blur = true,
    LoadingScreen = true,
    CornerRadius = 14
})
```

## Window methods

```lua
Window:Toggle()
Window:SetTheme("Midnight")
Window:SetAccent(Color3.fromRGB(120, 80, 255))
Window:SetPulse(true)
Window:Notify({...})
Window:Confirm({...})
Window:Destroy()
```

---

# Tabs

```lua
local Tab = Window:CreateTab({
    Name = "Combat",
    Icon = "⚔",
    Badge = "NEW"
})
```

Select manually:

```lua
Tab:Select()
```

---

# Sections

```lua
Tab:CreateSection({
    Name = "Aimbot",
    Icon = "◆",
    Description = "Aimbot controls.",
    Collapsible = true
})
```

---

# Button

```lua
local Button = Tab:CreateButton({
    Name = "Execute",
    Callback = function()
        print("clicked")
    end
})

Button:SetCallback(function()
    print("clicked")
end)

Button:SetVisible(true)
Button:SetEnabled(false)
Button:Destroy()
```

---

# Toggle

```lua
local Toggle = Tab:CreateToggle({
    Name = "Enabled",
    Default = false,
    Callback = function(value)
        print(value)
    end
})

Toggle:Set(true)
print(Toggle:Get())
Toggle:SetCallback(function(value)
    print("changed", value)
end)
```

Checkbox uses the same state API:

```lua
local Check = Tab:CreateCheckbox({
    Name = "Remember",
    Default = true
})
```

---

# Slider

```lua
local Slider = Tab:CreateSlider({
    Name = "Power",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print(value)
    end
})

Slider:Set(75)
print(Slider:Get())
```

---

# Dropdown

```lua
local Dropdown = Tab:CreateDropdown({
    Name = "Mode",
    Values = {"Legit", "Normal", "Extreme"},
    Default = "Normal",
    Callback = function(value)
        print(value)
    end
})
```

Searchable dropdown:

```lua
Tab:CreateSearchDropdown({
    Name = "Target",
    Values = {"Alpha", "Bravo", "Charlie"},
    Callback = function(value)
        print(value)
    end
})
```

Multi dropdown:

```lua
local Multi = Tab:CreateMultiDropdown({
    Name = "Targets",
    Values = {"Players", "NPCs", "Bosses"},
    Callback = function(values)
        for name, enabled in pairs(values) do
            print(name, enabled)
        end
    end
})

Multi:Clear()
```

---

# Inputs

```lua
local Input = Tab:CreateInput({
    Name = "Username",
    Placeholder = "Enter username..."
})

Input:Set("ARIO")
print(Input:Get())
```

Number input:

```lua
Tab:CreateNumberInput({
    Name = "Amount",
    Default = 10,
    Callback = function(number)
        print(number)
    end
})
```

Text area:

```lua
Tab:CreateTextArea({
    Name = "Notes",
    Height = 150,
    Default = "Hello..."
})
```

---

# Keybind

```lua
local Keybind = Tab:CreateKeybind({
    Name = "Toggle UI",
    Default = Enum.KeyCode.RightShift,
    Callback = function()
        Window:Toggle()
    end,
    Changed = function(key)
        print("Changed:", key.Name)
    end
})

Keybind:Set(Enum.KeyCode.Insert)
```

---

# Color picker

```lua
local Picker = Tab:CreateColorPicker({
    Name = "Accent",
    Default = Color3.fromRGB(110, 90, 255),
    Callback = function(color)
        Window:SetAccent(color)
    end
})
```

The component is structured so a full HSV/HEX editor can be plugged into the same API without changing user code.

---

# Gradient picker

```lua
Tab:CreateGradientPicker({
    Name = "Gradient"
})
```

---

# Radio / toggle / button groups

```lua
Tab:CreateRadioGroup({
    Name = "Mode",
    Values = {"A", "B", "C"},
    Default = "A",
    Callback = function(value)
        print(value)
    end
})
```

```lua
Tab:CreateToggleGroup({
    Name = "Features",
    Values = {"ESP", "UI", "Sound"}
})
```

```lua
Tab:CreateButtonGroup({
    Name = "Actions",
    Values = {"Load", "Save", "Reset"},
    Callback = function(value)
        print(value)
    end
})
```

---

# Stepper

```lua
local Stepper = Tab:CreateStepper({
    Name = "Amount",
    Default = 5,
    Step = 1
})

Stepper:Set(10)
```

---

# Progress / loading

```lua
local Progress = Tab:CreateProgress({
    Name = "Progress",
    Default = 50
})

Progress:Set(100)
```

```lua
Tab:CreateLoadingBar({
    Name = "Loading",
    Default = 25,
    Animate = true
})
```

---

# Data components

```lua
Tab:CreateStatCard({
    Name = "Players",
    Value = 24
})

Tab:CreateCounter({
    Name = "Kills",
    Value = 12
})

Tab:CreateStatus({
    Name = "Status",
    Value = "ONLINE"
})
```

---

# FPS / Ping

```lua
Tab:CreateFPS({
    Name = "Performance"
})

Tab:CreatePing({
    Name = "Network"
})
```

---

# Timer

```lua
Tab:CreateTimer({
    Name = "Session",
    Duration = 120
})
```

---

# Code editor

```lua
local Editor = Tab:CreateCodeEditor({
    Name = "Lua",
    Height = 220,
    Default = 'print("Hello")',
    WordWrap = false
})

print(Editor:Get())
Editor:Set('print("Updated")')
```

---

# Table

```lua
Tab:CreateTable({
    Name = "Players",
    Rows = {
        {"Name", "Score"},
        {"ARIO", "100"},
        {"Player2", "80"}
    }
})
```

---

# Activity

```lua
Tab:CreateActivity({
    Name = "Activity",
    Items = {
        {Title="Login", Content="Just now"},
        {Title="Config", Content="Loaded"}
    }
})
```

---

# Graph

```lua
Tab:CreateGraph({
    Name = "Performance",
    Values = {10, 30, 20, 60, 45, 80, 65}
})
```

---

# Notifications

```lua
Window:Notify({
    Title = "Success",
    Content = "Configuration loaded!",
    Type = "Success",
    Duration = 4
})
```

Types:

```text
Info
Success
Warning
Error
```

---

# Confirm dialog

```lua
Window:Confirm({
    Title = "Reset settings?",
    Content = "This action cannot be undone.",
    Callback = function()
        print("confirmed")
    end
})
```

---

# Command Center

The built-in command center can be opened with:

```text
F2
```

It searches your currently-created tabs and lets the user jump directly to them.

---

# Themes

Built-in themes:

```text
Midnight
Dark
AMOLED
Purple
Ocean
Crimson
Emerald
Rose
Cyberpunk
Matrix
Dracula
Nord
Tokyo Night
Monokai
Synthwave
Sunset
Ice
Gold
White
Gray
Void
Neon
Blood Moon
Terminal
ARIO
```

Use:

```lua
Window:SetTheme("Cyberpunk")
```

Get themes:

```lua
print(table.concat(ARIO:GetThemes(), ", "))
```

---

# Custom theme

```lua
ARIO:RegisterTheme("MyTheme", {
    Background = Color3.fromRGB(8, 8, 12),
    Surface = Color3.fromRGB(15, 15, 22),
    Surface2 = Color3.fromRGB(25, 25, 35),
    Text = Color3.fromRGB(255, 255, 255),
    Muted = Color3.fromRGB(150, 150, 160),
    Border = Color3.fromRGB(50, 50, 65),
    Accent = Color3.fromRGB(255, 0, 255),
    Good = Color3.fromRGB(70, 210, 135),
    Bad = Color3.fromRGB(240, 80, 95),
    Warn = Color3.fromRGB(245, 180, 70)
})

Window:SetTheme("MyTheme")
```

---

# Shared state

```lua
local State = ARIO:CreateState(false)

local ToggleA = Tab:CreateToggle({
    Name = "Master",
    Default = false
})

ToggleA:Bind(State)

State:Connect(function(value)
    print("State:", value)
end)

State:Set(true)
```

---

# Component binding

```lua
Toggle:Bind(State)
Toggle:BindVisibility(SomeComponent)
```

Every component is designed around the common API:

```lua
:Set(...)
:Get()
:SetCallback(...)
:Bind(...)
:BindVisibility(...)
:SetVisible(...)
:SetEnabled(...)
:Destroy()
```

---

# Utility API

```lua
ARIO:FormatNumber(1250000)
ARIO:IsMobile()
ARIO:GetFPS()

ARIO:Tween(object, {
    Position = UDim2.fromOffset(100,100)
}, {
    Duration = .35,
    Easing = "Back"
})

ARIO:CreateGradient(frame, ColorSequence.new(
    Color3.fromRGB(80,80,255),
    Color3.fromRGB(255,80,180)
), 45)

ARIO:CreateGlow(frame)
ARIO:CreateSpring(frame, {Size = UDim2.fromOffset(500,300)}, .35)
```

---

# Performance

Use:

```lua
ARIO:SetPerformanceMode(true)
```

when you want expensive visual effects disabled by your effect layer.

The framework also separates:
- cleanup
- animations
- components
- themes
- effects
- utilities

Avoid unnecessary permanent Heartbeat loops when writing plugins.

---

# Plugin system

Register custom components:

```lua
ARIO:RegisterComponent("MyComponent", function(tab, options)
    -- create and return your component
end)
```

The plugin directory contains a starter README.

---

# Config utility

For environments that expose file APIs:

```lua
local Config = require(...)
Config.Save("MyConfig", {
    Enabled = true,
    Value = 50
})

local data = Config.Load("MyConfig")
Config.Delete("MyConfig")
```

The public UI API is intentionally independent from executor-specific file APIs.

---

# Clipboard utility

The utility tries common clipboard functions when available:

```lua
Clipboard.Set("hello")
local text = Clipboard.Get()
```

---

# Development architecture

```text
ARIO/
├── Core/
│   ├── Library.lua
│   ├── Window.lua
│   ├── Tab.lua
│   ├── Component.lua
│   ├── Signal.lua
│   ├── Cleanup.lua
│   └── Animation.lua
│
├── Components/
│   ├── Button.lua
│   ├── Toggle.lua
│   ├── Slider.lua
│   ├── Dropdown.lua
│   ├── ColorPicker.lua
│   ├── CodeEditor.lua
│   └── ...
│
├── Themes/
│   └── Default.lua
│
├── Effects/
│   ├── Glow.lua
│   ├── Pulse.lua
│   ├── Particles.lua
│   ├── Aurora.lua
│   └── ...
│
├── Utilities/
│   ├── Config.lua
│   └── Clipboard.lua
│
└── Plugins/
```

---

# Release model

For the GitHub release, keep the development repository modular, but expose a single public entry point:

```lua
loadstring(game:HttpGet("YOUR_RAW_GITHUB_URL"))()
```

For a legitimate Roblox project, you can also package the modules directly into `ReplicatedStorage` rather than remotely executing source.

---

# Important

The framework is a UI toolkit. Do not use it to bypass Roblox security, inject into the Roblox client, or interfere with other users' accounts or software.

