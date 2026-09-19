local Clipboard={}
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
