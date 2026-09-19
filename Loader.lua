local URL = "https://raw.githubusercontent.com/ArioScripts/ario-ui/main/ARIO.lua"

local success, Library = pcall(function()
    return loadstring(game:HttpGet(URL))()
end)

if not success then
    warn("[ARIO UI] Failed to load: " .. tostring(Library))
    return
end

return Library
