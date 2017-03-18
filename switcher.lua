local utils = require("utils")

----------------
-- Switch
----------------
local switcher = hs.window.switcher.new(nil, {
    showTitles = false,
    highlightColor = { white = 0.2, alpha = 0.5 },
    backgroundColor = { white = 0.95, alpha = 0.5 },
    showThumbnails = false,
    showSelectedThumbnail = false,
})

local function nextWindow()
    switcher:next()
end

local function previousWindow()
    switcher:previous()
end

hs.hotkey.bind('alt', 'tab', nextWindow, nil, nextWindow)
hs.hotkey.bind('alt-shift', 'tab', previousWindow, nil, previousWindow)
