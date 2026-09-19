# ARIO Plugins

Register a component with:

```lua
Library:RegisterComponent("MyComponent", function(tab, options)
    -- return a component object
end)
```

Plugin code should keep cleanup handles and avoid expensive RenderStepped/Heartbeat loops.
