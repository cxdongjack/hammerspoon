-- Auto reload Hammerspoon config

local module = {}

module.reload = function()
  module.configFileWatcher:stop()
  hs.reload()
end

module.configFileWatcher = hs.pathwatcher.new(
    os.getenv("HOME") .. "/.hammerspoon/",
    module.reload
)
module.configFileWatcher:start()

-- notify for reload
hs.notify.new({
    title = "Hammerspoon",
    subTitle = "Config reloaded",
}):send()

return module
