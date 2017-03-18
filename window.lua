local prefix = require("prefix")
local utils = require("utils")

hs.window.animationDuration = 0

----------------
-- Grid
----------------
hs.grid.setGrid('3x3', nil, nil)
hs.grid.setMargins({0, 0})
prefix.bind('', 'g', function() hs.grid.show() end)

----------------
-- zoom
----------------
prefix.bind('', 'z', function()
    local win = hs.window.focusedWindow()
    win:move({0, 0, 1, 1})
end)

