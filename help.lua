-- https://github.com/ashfinal/awesome-hammerspoon/blob/master/modes/cheatsheet.lua
function generateHtml()
  return [[<pre>  Cheatsheets

  !!!prefix + ? to exist

  Tmux style hotkeys
  This configuration heavily uses Tmux style hotkey binding, i.e., using a prefix to activate hotkeys.
  The default prefix is `ctrl+v`, e.g., `prefix - w` = press and release `ctrl+v` first, then press `w`.

  - `prefix - ?`: help.
  - `prefix - g`: show a 3x3 grid for resizing window.
  - `prefix - w`: switcher for windows(while system switcher for application).
  - `prefix - c`: toggle caffeinate (disable sleep).
  - `prefix - s`: sleep.
  - `prefix - n`: toggle night shift.
  - `prefix - r`: reload Hammerspoon config.
  - `prefix - d`: toggle Hammerspoon console for debug.
  - `prefix - m`: enter mouse mode, then you can use `hjkl` to move the mouse, use `cmd+hjkl` to move slowly, use `shift+hjkl` to scroll, use `u`, `i`, `o` to perform left, right, middle button click.

# Normal Keymaps
  The option key is used for inputing special characters, may mapping option key be a better offer.

  - `option [ + shift ] + tab`: switch windows.
  - `option + npfb`: arrow keys.
  - `option + ctrl + npfb`: option + arrow keys (move faster).
  - `option + a`: home.
  - `option + e`: end.
  - `option + u`: page_up.
  - `option + d`: page_down.
  - `option + [/]`: cmd [+ shift] + tab (switch tabs).
  - `option + q`: esc.
  - `option + m` / `option + 1`: play.
  - `option + <` / `option + 2`: previous track.
  - `option + >` / `option + 3`: next track.
  - `option + /` / `option + f1`: mute.
  - `option + ,` / `option + f2`: volume down.
  - `option + .` / `option + f3`: volume up.
  - `press ctrl twice`: escape
  - `press cmd Q twice`: quit app, in order to prevent accidentally quitting an app when pressing `cmd+q`.

#  Desktop Client enhancements
  - Switching to IM(Wechat, QQ) window automatically opens IM's "find" dialog
</pre>
]]
end



myView = nil

function showCheatsheet()
    local point = hs.geometry.point(
        hs.screen.mainScreen():frame().center.x - 400,
        hs.screen.mainScreen():frame().center.y - 300
    )
    local frame = hs.geometry.rect(point, "800*600")
    if not myView then
        myView = hs.webview.new(frame)
        :windowStyle("utility")
        :closeOnEscape(true)
        :html(generateHtml())
        -- :url('http://github.com/cxdongjack/hammerspoon/blob/master/README.md')
        :allowGestures(true)
        :allowNewWindows(false)
        :windowTitle("CheatSheets")
        :level(hs.drawing.windowLevels.modalPanel)
        :show()
    else
        myView:hide()
        myView = nil
    end
end
require('prefix').bind('shift', '/', showCheatsheet)