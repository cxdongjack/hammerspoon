-- Press Cmd+Q twice to quit

local log = hs.logger.new('double_cmdq_to_quit','debug')

local quitModal = hs.hotkey.modal.new('cmd','q')

local alertId = nil
local timer = nil

function quitModal:entered()
    alertId = hs.alert.show("Press Cmd+Q again to quit", 1)
    timer = hs.timer.doAfter(1, function() quitModal:exit() end)
end

local function doQuit()
    hs.application.frontmostApplication():selectMenuItem("^(Quit|退出).*$")
    quitModal:exit()

    if alertId then
        hs.alert.closeSpecific(alertId)
        alertId = nil
    end
    if timer then
        timer:stop()
    end
end

quitModal:bind('cmd', 'q', doQuit)

quitModal:bind('', 'escape', function() quitModal:exit() end)
