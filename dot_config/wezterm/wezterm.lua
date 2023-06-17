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

config.disable_default_key_bindings = true
config.keys = {
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("Clipboard"),
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "Insert",
		mods = "SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnWindow,
	},
	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DecreaseFontSize,
	},
	{
		key = "=",
		mods = "CTRL",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "0",
		mods = "CTRL",
		action = wezterm.action.ResetFontSize,
	},
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "PageDown",
		mods = "CTRL|SHIFT",
		action = wezterm.action.MoveTabRelative(1),
	},
	{
		key = "PageUp",
		mods = "CTRL|SHIFT",
		action = wezterm.action.MoveTabRelative(-1),
	},
	{
		key = "PageUp",
		mods = "SHIFT",
		action = wezterm.action.ScrollByPage(-1),
	},
	{
		key = "PageDown",
		mods = "SHIFT",
		action = wezterm.action.ScrollByPage(1),
	},
	{
		key = "R",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ClearScrollback("ScrollbackOnly"),
	},
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCommandPalette,
	},
	{
		key = "F",
		mods = "CTRL|SHIFT",
		action = wezterm.action.Search({ CaseSensitiveString = "" }),
	},
	{
		key = "Escape",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCopyMode,
	},
	{
		key = "_",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key = "Z",
		mods = "CTRL|SHIFT",
		action = wezterm.action.TogglePaneZoomState,
	},
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
