-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.enable_tab_bar = false
config.leader = { key = 's', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
	{
		key = '"',
		mods = 'LEADER|SHIFT',
		action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }
	},
	{
		key = '%',
		mods = 'LEADER|SHIFT',
		action = act.SplitVertical { domain = 'CurrentPaneDomain' }
	},
	{
		key = 'h',
		mods = 'LEADER',
		action = act.ActivatePaneDirection 'Left'
	},
	{
		key = 'j',
		mods = 'LEADER',
		action = act.ActivatePaneDirection 'Down'
	},
	{
		key = 'k',
		mods = 'LEADER',
		action = act.ActivatePaneDirection 'Up'
	},
	{
		key = 'l',
		mods = 'LEADER',
		action = act.ActivatePaneDirection 'Right'
	},
	{
    		key = 'Backspace', --this section is for linux only
    		mods = 'CTRL',
    		action = wezterm.action.SendKey { key = 'w', mods = 'CTRL' },
  	},
	{
    		key = 'Delete', --this section is for linux only
    		mods = 'CTRL',
    		action = wezterm.action.SendKey { key = 'd', mods = 'ALT' },
  	},
	{ key = 'v', mods = 'LEADER', action = act.ActivateCopyMode },
	{ key = 'UpArrow', mods = 'SHIFT', action = act.ScrollByLine(-1) },
	{ key = 'DownArrow', mods = 'SHIFT', action = act.ScrollByLine(1) },
	{ key = 'k', mods = 'CTRL', action = act.SendKey { key = 'UpArrow' }},
	{ key = 'j', mods = 'CTRL', action = act.SendKey { key = 'DownArrow' }},
}

-- For example, changing the initial geometry for new windows:
--config.initial_cols = 120
--config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 15
--config.color_scheme = 'AdventureTime'
config.color_scheme = 'Wez'
--config.window_background_image = './Downloads/ac_pict.jpg'
-- Finally, return the configuration to wezterm:
return config
