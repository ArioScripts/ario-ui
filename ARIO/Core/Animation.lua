local TweenService = game:GetService("TweenService")

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
