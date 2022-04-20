local wezterm = require("wezterm")

return {
	color_scheme = "nord",
	initial_rows = 1000,
	initial_cols = 1000,
	font = wezterm.font("JetBrains Mono"),
	font_size = 11,
	disable_default_key_bindings = true,
	default_prog = { "/home/hugo/miniconda3/bin/fish", "-l" },
	window_background_opacity = 0.7,
	enable_tab_bar = false,
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},
	keys = {
		{ key = "c", mods = "CTRL|SHIFT", action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = "v", mods = "CTRL|SHIFT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
		{ key = "F11", mods = "", action = "ToggleFullScreen" },
		{ key = "-", mods = "CTRL|SHIFT", action = "DecreaseFontSize" },
		{ key = "=", mods = "CTRL", action = "IncreaseFontSize" },
		{ key = "0", mods = "CTRL|SHIFT", action = "ResetFontSize" },
		{ key = "t", mods = "CTRL|SHIFT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
		{ key = "LeftArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivateTabRelative = -1 }) },
		{ key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivateTabRelative = 1 }) },
		{
			key = "s",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
		},
	},
}
