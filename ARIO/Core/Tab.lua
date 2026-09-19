local Component = require(script.Parent.Component)

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
