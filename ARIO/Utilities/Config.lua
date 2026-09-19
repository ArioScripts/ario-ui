local HttpService=game:GetService("HttpService")
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
