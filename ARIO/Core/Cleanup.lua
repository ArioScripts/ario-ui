local Cleanup = {}
Cleanup.__index = Cleanup

function Cleanup.new()
    return setmetatable({Items = {}}, Cleanup)
end

function Cleanup:Add(item)
    table.insert(self.Items, item)
    return item
end

function Cleanup:Destroy()
    for i = #self.Items, 1, -1 do
        local item = self.Items[i]
        pcall(function()
            if typeof(item) == "RBXScriptConnection" then
                item:Disconnect()
            elseif type(item) == "function" then
                item()
            elseif item and item.Destroy then
                item:Destroy()
            elseif item and item.Disconnect then
                item:Disconnect()
            end
        end)
        self.Items[i] = nil
    end
end

return Cleanup
