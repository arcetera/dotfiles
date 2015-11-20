--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "Tewi normal 9"
theme.fg   = "#f2f0ec"
theme.bg   = "#2d2d2d"

-- Genaral colours
theme.success_fg = "#0f0"
theme.loaded_fg  = "#33AADD"
theme.error_fg = "#FFF"
theme.error_bg = "#F00"

-- Warning colours
theme.warning_fg = "#F00"
theme.warning_bg = "#FFF"

-- Notification colours
theme.notif_fg = "#444"
theme.notif_bg = "#FFF"

-- Menu colours
theme.menu_fg                   = "#f2f0ec"
theme.menu_bg                   = "#2d2d2d"
theme.menu_selected_fg          = "#f2f0ec"
theme.menu_selected_bg          = "#515151"
theme.menu_title_bg             = "#2d2d2d"
theme.menu_primary_title_fg     = "#f00"
theme.menu_secondary_title_fg   = "#666"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#f2f0ec"
theme.sbar_bg         = "#2d2d2d"

-- Downloadbar specific
theme.dbar_fg         = "#f2f0ec"
theme.dbar_bg         = "#000"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#f2f0ec"
theme.ibar_bg           = "#2d2d2d"

-- Tab label
theme.tab_fg            = "#f2f0ec"
theme.tab_bg            = "#747369"
theme.tab_ntheme        = "#ddd"
theme.selected_fg       = "#f2f0ec"
theme.selected_bg       = "#2d2d2d"
theme.selected_ntheme   = "#ddd"
theme.loading_fg        = "#6699cc"
theme.loading_bg        = "#000"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#99cc99"
theme.notrust_fg        = "#F00"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
