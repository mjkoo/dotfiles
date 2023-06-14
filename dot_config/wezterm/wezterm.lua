local wezterm = require 'wezterm'

local config = {}

config.font = wezterm.font "JetBrainsMono Nerd Font"
config.color_scheme = "Dracula (Official)"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.font_size = 10.0

return config
