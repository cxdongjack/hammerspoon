-- jumping between windows

local prefix = require('prefix')
local utils = require("utils")

----------------
-- hjkl
----------------
local fw = hs.window.focusedWindow
hs.fnutils.each({"h", "l", "k", "j"}, function(arrow)
  prefix.bind('', arrow, function()
      if arrow == "h" then fw().filter.defaultCurrentSpace:focusWindowWest(nil, true, true) end
      if arrow == "l" then fw().filter.defaultCurrentSpace:focusWindowEast(nil, true, true) end
      if arrow == "j" then fw().filter.defaultCurrentSpace:focusWindowSouth(nil, true, true) end
      if arrow == "k" then fw().filter.defaultCurrentSpace:focusWindowNorth(nil, true, true) end
  end)
end)

----------------
-- hints
----------------
hs.hints.hintChars = utils.strToTable('ASDFGQWERTZXCVB12345')
prefix.bind('', 'w', function() hs.hints.windowHints() end)

hs.hotkey.bind({'ctrl'}, 'v', function() hs.hints.windowHints() end, nil, nil)




