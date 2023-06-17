local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 10.0
config.color_scheme = "Dracula (Official)"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.use_fancy_tab_bar = false
config.window_padding = {
	left = "0cell",
	right = "1cell",
	top = "0cell",
	bottom = "0cell",
}

config.keys = {
	{
		key = "t",
		mods = "CTRL",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
