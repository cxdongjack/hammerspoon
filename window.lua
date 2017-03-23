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
    if win and not undo[win:id()] then
        undo:push()
        -- fullscreen
        win:move({0, 0, 1, 1})
    else
        undo:pop()
    end
end)

-- undo for window operations
undo = {}

function undo:push()
    local win = hs.window.focusedWindow()
  if win and not undo[win:id()] then
    self[win:id()] = win:frame()
  end
end

function undo:pop()
    local win = hs.window.focusedWindow()
  if win and self[win:id()] then
    win:setFrame(self[win:id()])
    self[win:id()] = nil
  end
end
