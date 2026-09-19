local M={}
function M.Apply(root, options)
    options=options or {}
    -- Effect hook. Expensive effects should be disabled in PerformanceMode.
    if options.Enabled == false then return nil end
    return {Name="Aurora",Root=root,Options=options,Destroy=function() end}
end
return M
