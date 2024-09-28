local wezterm = require 'wezterm'

local config = wezterm.config_builder()
local act = wezterm.action

config.enable_wayland = true
-- Audio_bell
config.audible_bell = "Disabled"

-- Font
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 10.0

-- Tab
config.enable_tab_bar = false

-- Window
config.window_padding = {
  left = 2,
  right = 0,
  top = 2,
  bottom = 0,
}
config.window_background_opacity = 0.75

-- Colorscheme
-- config.color_scheme = 'Bamboo Multiplex'

-- Keybind
config.disable_default_key_bindings = true
config.keys = {
  { key = "F11", action = act.ToggleFullScreen },
  { key = "+",   mods = "CTRL|SHIFT",          action = act.IncreaseFontSize },
  { key = "-",   mods = "CTRL",                action = act.DecreaseFontSize },
  { key = "C",   mods = "CTRL|SHIFT",          action = act.CopyTo 'Clipboard' },
  { key = "V",   mods = "CTRL|SHIFT",          action = act.PasteFrom 'Clipboard' },
  { key = 'U',   mods = 'SHIFT|CTRL',          action = act.CharSelect { copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' } },
}
return config
