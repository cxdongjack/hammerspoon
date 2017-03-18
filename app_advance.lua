-- listen key events

local config = require('config')

local wf=hs.window.filter
wf.new(config.IM):subscribe(wf.windowFocused, function(e)
    hs.eventtap.keyStroke('cmd', 'f')
end)
