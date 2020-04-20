local application = require('hs.application')
local config = require('config')
local prefix = require('prefix')

-- hs.keycodes.map(http://www.hammerspoon.org/docs/hs.keycodes.html#map)
local key2app = config.app
print(config.key2app)

-- for key, app in pairs(key2app) do
--     prefix.bind('', key, function()
--         toggle_application(app)
--     end)
-- end

local function remap(mods, key, pressFn)
    hs.hotkey.bind(mods, key, pressFn, nil, pressFn)
end

for key, app in pairs(key2app) do
    remap({'ctrl', 'cmd'}, key, function()
        print('current app name', hs.application.frontmostApplication():name())
        toggle_application(app)
    end)
end

-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app)
    -- Finds running applications
    local app = application.find(_app)

    if not app then
        --application.launchOrFocus(_app)
        application.open(_app)
        return
    end

    -- application is running, toggle hide/unhide
    local mainwin = app:mainWindow()
    if mainwin then
        if true == app:isFrontmost() then
            mainwin:application():hide()
        else
            mainwin:application():activate(true)
            mainwin:application():unhide()
            mainwin:focus()
        end
    else
        application.launchOrFocus(_app)
    end
end