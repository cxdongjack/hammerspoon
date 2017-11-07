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
hs.hints.hintChars = utils.strToTable('ABCDEFBCDEFGHIJKLMNOPQRSTUVWXYZ1234567890')
prefix.bind('', 'w', function() hs.hints.windowHints() end)

-- 依次找重音，避免重复
local hintDict = {
    -- 快捷键入口
    ['com.sublimetext.3'] = 'S',
    -- 日历
    ['com.apple.iCal'] = 'L'
}

function hs.hints.addWindow(dict, win) 
  local hintChars = utils.strToTable('ABCDEFBCDEFGHIJKLMNOPQRSTUVWXYZ')
  local hintInts = utils.strToTable('1234567890')

  function findChar(win, dict, chars, backupChars) 
    if hintDict[win:application():bundleID()] then
      return hintDict[win:application():bundleID()]
    end
    local char = winToChar(win)
    if dict[char] == nil then
      return char
    end
    return findNilChar(dict, backupChars)
  end

  function winToChar(win)
    -- i.e. com.sublimetext.sublime
    local id = win:application():bundleID()
    -- .sublime
    local match = string.match(id, '[.][^.]+$')
    if match then
      -- s
      return string.sub(match, 2, 2):upper()
    end
  end

  function findNilChar(dict, chars)
    for i = 1, #chars do
      if dict[chars[i]] == nil then
        return chars[i]
      end
    end
    -- protect: in case more then max size
    return chars[0]
  end


  local char = findChar(win, dict, hintChars, hintInts)
  dict[char] = win

end

function showHints()
  local wins = hs.window.allWindows()
  table.sort(wins, function(a, b) return a:id() < b:id() end)
  hs.hints.windowHints(wins)
end

hs.hotkey.bind({'alt'}, 'j', showHints, nil, nil)
