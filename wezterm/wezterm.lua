local wezterm = require 'wezterm'

local config = wezterm.config_builder()
local session_manager = require("wezterm-session-manager/session-manager")
local act = wezterm.action

wezterm.on("save_session", function(window) session_manager.save_state(window) end)
wezterm.on("load_session", function(window) session_manager.load_state(window) end)
wezterm.on("restore_session", function(window) session_manager.restore_state(window) end)

config.enable_wayland = false
-- Audio_bell
config.audible_bell = "Disabled"

-- Font
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 10.0

-- Tab
config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- Window
config.window_padding = {
  left = 2,
  right = 0,
  top = 2,
  bottom = 0,
}
config.window_background_opacity = 0.80

-- Colorscheme
-- config.color_scheme = 'Bamboo Multiplex'

-- Keybind
config.disable_default_key_bindings = true
config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 3000 }
config.keys = {
  {
      key = "F11",
      action = act.ToggleFullScreen
  },
  {
      key = "+",
      mods = "CTRL|SHIFT",
      action = act.IncreaseFontSize
  },
  {
      key = "-",
      mods = "CTRL",
      action = act.DecreaseFontSize
  },
  {
      key = "C",
      mods = "CTRL|SHIFT",
      action = act.CopyTo 'Clipboard'
  },
  {
      key = "V",
      mods = "CTRL|SHIFT",
      action = act.PasteFrom 'Clipboard'
  },
  {
      key = "U",
      mods = "SHIFT|CTRL",
      action = act.CharSelect { copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' }
  },
  {
      key = "c",
      mods = "LEADER",
      action = act.SpawnTab "CurrentPaneDomain",
  },
  {
      key = "n",
      mods = "LEADER",
      action = act.ActivateTabRelative(1),
  },
  {
      key = "p",
      mods = "LEADER",
      action = act.ActivateTabRelative(-1),
  },
  {
      key    = "\"",
      mods   = "LEADER|SHIFT",
      action = act.SplitVertical { domain = 'CurrentPaneDomain' }
  },
  {
      key    = "%",
      mods   = "LEADER|SHIFT",
      action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }
  },
  {
      key = "[",
      mods = "LEADER",
      action = act.ActivateCopyMode
  },
  {
      key    = "z",
      mods   = "LEADER",
      action = act.TogglePaneZoomState,
  },
  {
      key = "q",
      mods = "LEADER",
      action = act.PaneSelect { alphabet = '1234567890', },
  },
  {
      key = "w",
      mods = "LEADER",
      action = act.ShowTabNavigator,
  },
  {
    key = "s",
    mods = "LEADER",
    action = act.ShowLauncherArgs {
      flags = "WORKSPACES",
    },
  },
  {
    key = "s",
    mods = "LEADER|CTRL",
    action = act { EmitEvent = "save_session" },
  },
  {
    key = "r",
    mods = "LEADER|CTRL",
    action = act { EmitEvent = "restore_session" },
  },
  {
      key = ",",
      mods = "LEADER",
      action = act.PromptInputLine {
          description = "Enter new name for tab",
          action = wezterm.action_callback(function(window, pane, line)
              -- line will be `nil` if they hit escape without entering anything
              -- An empty string if they just hit enter
              -- Or the actual line of text they wrote
              if line then
                  window:active_tab():set_title(line)
              end
          end),
      },
  },
  {
    key = "$",
    mods = "LEADER|SHIFT",
    action = act.PromptInputLine {
      description = wezterm.format {
        { Attribute = { Intensity = 'Bold' } },
        { Foreground = { AnsiColor = 'Fuchsia' } },
        { Text = 'Enter new name for current workspace' },
      },
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          wezterm.mux.rename_workspace(
            wezterm.mux.get_active_workspace(),
            line
          )
        end
      end),
    },
  },
  {
      key = "LeftArrow",
      mods = "LEADER",
      action = act.AdjustPaneSize { "Left", 5 },
  },
  {
      key = "RightArrow",
      mods = "LEADER",
      action = act.AdjustPaneSize { "Right", 5 },
  },
  {
      key = "DownArrow",
      mods = "LEADER",
      action = act.AdjustPaneSize { "Down", 5 },
  },
  {
      key = "UpArrow",
      mods = "LEADER",
      action = act.AdjustPaneSize { "Up", 5 },
  },
}
return config
