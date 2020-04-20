require("auto_reload")

local log = hs.logger.new('Cxd_config','debug')
log.i('Initializing>>>>>>>>>>')

-- help
require('help')

-- 新功能
require("window")
 -- 九宫格选择
require("mouse_key")
 -- 绑定主要APP的快捷键
require("launch")
-- require("jump")
-- require("caffeinate")
-- require("redshift")

-- 映射
-- 全局将fbnp映射成方向键
require("arrowmap")
-- 调节音量大小
require("keymaps")
-- require("switcher")
-- require("double_ctrl")

-- 优化APP体验
-- 优化失败，体验并不好, 暂时关闭
-- require("app_advance")
-- require("url_dispatcher")
-- require("double_cmdq_to_quit")

log.i('Ending<<<<<<<<<<<') -- will print "[mymodule] Initializing" to the console
