local Signal = {}
Signal.__index = Signal

function Signal.new()
    return setmetatable({Listeners = {}}, Signal)
end

function Signal:Connect(fn)
    assert(type(fn) == "function", "Signal listener must be a function")
    local item = {fn = fn, connected = true}
    table.insert(self.Listeners, item)
    return {
        Disconnect = function()
            if not item.connected then return end
            item.connected = false
            for i, x in ipairs(self.Listeners) do
                if x == item then table.remove(self.Listeners, i) break end
            end
        end
    }
end

function Signal:Fire(...)
    local args = table.pack(...)
    for _, item in ipairs(self.Listeners) do
        if item.connected then task.spawn(item.fn, table.unpack(args, 1, args.n)) end
    end
end

function Signal:Destroy()
    table.clear(self.Listeners)
end

return Signal
