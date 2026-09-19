-- ARIO Keybind component facade.
-- The production component implementation lives in Core/Component.lua
-- so the public API stays consistent while the source remains modular.
return function(tab, options)
    return require(script.Parent.Parent.Core.Component).new(tab, "Keybind", options or {})
end
