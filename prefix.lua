-- Tmux style hotkey binding: prefix + hotkey

local module = {}
local config = require("config")

local modal = hs.hotkey.modal.new(config.prefixMod, config.prefixKey)

local TIMEOUT = 5

local label = require("labels").new('Prefix Mode(? for help)')

function modal:entered()
    label:show()
end

function modal:exited()
    label:hide()
end

function module.exit()
    modal:exit()
end

function module.bind(mod, key, fn)
    modal:bind(mod, key, nil, function() fn(); module.exit() end)
    if mod == '' then
        modal:bind('ctrl', key, nil, function() fn(); module.exit() end)
    end
end

function module.bindMultiple(mod, key, pressedFn, releasedFn, repeatFn)
    modal:bind(mod, key, pressedFn, releasedFn, repeatFn)
end

module.bind('', 'escape', module.exit)

module.bind('', 'd', hs.toggleConsole)
module.bind('', 'r', hs.reload)

return module
