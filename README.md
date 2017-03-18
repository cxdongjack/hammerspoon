# Hammerspoon
This configuration provide a lot of hotkeys for productivity without change established habits.

# Install
  $ brew cask install hammerspoon
  $ git clone https://github.com/agzam/spacehammer ~/.hammerspoon

# Tmux style hotkeys
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
  - `option + i` / `option + 2`: previous track.
  - `option + o` / `option + 3`: next track.
  - `option + /` / `option + f1`: mute.
  - `option + ,` / `option + f2`: volume down.
  - `option + .` / `option + f3`: volume up.
  - `press ctrl twice`: escape
  - `press cmd Q twice`: quit app, in order to prevent accidentally quitting an app when pressing `cmd+q`.

#  Desktop Client enhancements
  - Switching to IM(Wechat, QQ) window automatically opens IM's "find" dialog

# Thanks to
https://github.com/Hammerspoon/hammerspoon/wiki/Sample-Configurations
https://github.com/raulchen/dotfiles/tree/master/hammerspoon
https://github.com/agzam/spacehammer
https://github.com/SeanXP/dotfiles/tree/master/hammerspoon

