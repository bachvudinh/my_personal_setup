local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Appearance
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" })
config.font_size = 14.0
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.initial_cols = 220
config.initial_rows = 50

-- Tab bar
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- Remove bell
config.audible_bell = "Disabled"

-- Keys — make Cmd work like a Mac app
config.keys = {
  -- Cmd+T = new tab
  { key = "t", mods = "CMD", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
  -- Cmd+W = close tab
  { key = "w", mods = "CMD", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
  -- Cmd+[ / Cmd+] = switch tabs
  { key = "[", mods = "CMD", action = wezterm.action.ActivateTabRelative(-1) },
  { key = "]", mods = "CMD", action = wezterm.action.ActivateTabRelative(1) },
  -- Cmd+D = vertical split, Cmd+Shift+D = horizontal split
  { key = "d", mods = "CMD", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "d", mods = "CMD|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
  -- Cmd+Enter = fullscreen
  { key = "Enter", mods = "CMD", action = wezterm.action.ToggleFullScreen },
  -- Cmd+number = jump to tab
  { key = "1", mods = "CMD", action = wezterm.action.ActivateTab(0) },
  { key = "2", mods = "CMD", action = wezterm.action.ActivateTab(1) },
  { key = "3", mods = "CMD", action = wezterm.action.ActivateTab(2) },
  { key = "4", mods = "CMD", action = wezterm.action.ActivateTab(3) },
  { key = "5", mods = "CMD", action = wezterm.action.ActivateTab(4) },
  -- Cmd+hjkl = move between panes (forwarded as Ctrl+hjkl to smart-splits in nvim)
  { key = "h", mods = "CMD", action = wezterm.action.SendKey({ key = "h", mods = "CTRL" }) },
  { key = "j", mods = "CMD", action = wezterm.action.SendKey({ key = "j", mods = "CTRL" }) },
  { key = "k", mods = "CMD", action = wezterm.action.SendKey({ key = "k", mods = "CTRL" }) },
  { key = "l", mods = "CMD", action = wezterm.action.SendKey({ key = "l", mods = "CTRL" }) },
}

return config
