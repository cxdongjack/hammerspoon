local function pressFn(mods, key)
	if key == nil then
		key = mods
		mods = {}
	end

	return function() hs.eventtap.keyStroke(mods, key, 1000) end
end

local function remap(mods, key, pressFn)
    hs.hotkey.bind(mods, key, pressFn, nil, pressFn)
end

remap({'ctrl'}, 'b', pressFn('left'))
remap({'ctrl'}, 'n', pressFn('down'))
remap({'ctrl'}, 'p', pressFn('up'))
remap({'ctrl'}, 'f', pressFn('right'))

remap({'ctrl', 'shift'}, 'b', pressFn({'shift'}, 'left'))
remap({'ctrl', 'shift'}, 'n', pressFn({'shift'}, 'down'))
remap({'ctrl', 'shift'}, 'p', pressFn({'shift'}, 'up'))
remap({'ctrl', 'shift'}, 'f', pressFn({'shift'}, 'right'))

remap({'ctrl', 'cmd'}, 'b', pressFn({'cmd'}, 'left'))
remap({'ctrl', 'cmd'}, 'n', pressFn({'cmd'}, 'down'))
remap({'ctrl', 'cmd'}, 'p', pressFn({'cmd'}, 'up'))
remap({'ctrl', 'cmd'}, 'f', pressFn({'cmd'}, 'right'))

remap({'ctrl', 'alt'}, 'b', pressFn({'alt'}, 'left'))
remap({'ctrl', 'alt'}, 'n', pressFn({'alt'}, 'down'))
remap({'ctrl', 'alt'}, 'p', pressFn({'alt'}, 'up'))
remap({'ctrl', 'alt'}, 'f', pressFn({'alt'}, 'right'))

remap({'ctrl', 'shift', 'cmd'}, 'b', pressFn({'shift', 'cmd'}, 'left'))
remap({'ctrl', 'shift', 'cmd'}, 'n', pressFn({'shift', 'cmd'}, 'down'))
remap({'ctrl', 'shift', 'cmd'}, 'p', pressFn({'shift', 'cmd'}, 'up'))
remap({'ctrl', 'shift', 'cmd'}, 'f', pressFn({'shift', 'cmd'}, 'right'))

remap({'ctrl', 'shift', 'alt'}, 'b', pressFn({'shift', 'alt'}, 'left'))
remap({'ctrl', 'shift', 'alt'}, 'n', pressFn({'shift', 'alt'}, 'down'))
remap({'ctrl', 'shift', 'alt'}, 'p', pressFn({'shift', 'alt'}, 'up'))
remap({'ctrl', 'shift', 'alt'}, 'f', pressFn({'shift', 'alt'}, 'right'))

remap({'ctrl', 'cmd', 'alt'}, 'b', pressFn({'cmd', 'alt'}, 'left'))
remap({'ctrl', 'cmd', 'alt'}, 'n', pressFn({'cmd', 'alt'}, 'down'))
remap({'ctrl', 'cmd', 'alt'}, 'p', pressFn({'cmd', 'alt'}, 'up'))
remap({'ctrl', 'cmd', 'alt'}, 'f', pressFn({'cmd', 'alt'}, 'right'))

remap({'ctrl', 'cmd', 'alt', 'shift'}, 'b', pressFn({'cmd', 'alt', 'shift'}, 'left'))
remap({'ctrl', 'cmd', 'alt', 'shift'}, 'n', pressFn({'cmd', 'alt', 'shift'}, 'down'))
remap({'ctrl', 'cmd', 'alt', 'shift'}, 'p', pressFn({'cmd', 'alt', 'shift'}, 'up'))
remap({'ctrl', 'cmd', 'alt', 'shift'}, 'f', pressFn({'cmd', 'alt', 'shift'}, 'right'))

-- others
remap({'ctrl', 'shift'}, 'a', pressFn({'cmd', 'shift'}, 'left'))
remap({'ctrl', 'shift'}, 'e', pressFn({'cmd', 'shift'}, 'right'))


