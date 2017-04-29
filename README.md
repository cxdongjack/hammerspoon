# Hammerspoon
This configuration provide a lot of hotkeys for productivity without change established habits.

# Install
  - $ brew cask install hammerspoon
  - $ git clone https://github.com/cxdongjack/hammerspoon.git ~/.hammerspoon

# Improve window hints
Make the window hints to fixed hotkey 

Hotkey generation algorithm as below:
- try to find char in user specific dict, like { ['com.sublimetext.3'] = 'S' }
- parse the bundleID to single char, like com.apple.Terminal -> 'T', bundleID is stable than title
- loop the charhints(i.e ABC..XYZ), find the nil char in 'dict'

![screenshot](https://cloud.githubusercontent.com/assets/5095449/25552880/7b3adc8a-2cd7-11e7-9a09-cc11f3ba25b7.png)

# Emacs style hotkeys
  This configuration heavily uses Emacs style hotkey binding, i.e., using the prefix to activate hotkeys.
  The default prefix is `ctrl+,`, e.g., `prefix - w` = press and release `ctrl+,` first, then press `w`.

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

# Thanks to
https://github.com/Hammerspoon/hammerspoon/wiki/Sample-Configurations
https://github.com/raulchen/dotfiles/tree/master/hammerspoon
https://github.com/agzam/spacehammer
https://github.com/SeanXP/dotfiles/tree/master/hammerspoon

