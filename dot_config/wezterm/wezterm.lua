local wezterm = require("wezterm")
local mux = wezterm.mux

-- Manimize on startup
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Tab title
wezterm.on(
  "format-tab-title",
  function(tab, tabs, panes, config, hover, max_width)
    local pane = tab.active_pane

    local dir_name = pane.current_working_dir
    dir_name = (dir_name:find(wezterm.home_dir .. "/?$") and {"~"} or {dir_name:gsub(".*[/\\]([^/\\]+)[/\\]?", "%1")})[1]

    local ps_name = pane.foreground_process_name:gsub("(.*[/\\])(.*)", "%2")

    local title = dir_name .. " : " .. ps_name

    return {
      { Text = title }
    }
  end
)

-- This table will hold the configuration.
local config = {}

-- Set color scheme
config.color_scheme = "OneHalfDark"
local color_scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]

-- Don't check for updates
config.check_for_updates = false


-- Set the font
config.font = wezterm.font_with_fallback({
  "Fira Code",
  { family = "Symbols Nerd Font Mono" },
  { family = "JoyPixels", assume_emoji_presentation = true },
})
config.font_size = 12.0

-- Stylize the tab bar
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.window_frame = {
  font = wezterm.font_with_fallback({
    { family = "Roboto", weight = "Bold" },
    { family = "JoyPixels", assume_emoji_presentation = true },
  }),
  font_size = 12.0,
  active_titlebar_bg = color_scheme.background,
  inactive_titlebar_bg = color_scheme.background
}
config.colors = {
  tab_bar = {
    inactive_tab_edge = wezterm.color.parse(color_scheme.background):lighten(0.05),
    active_tab = {
      bg_color = wezterm.color.parse(color_scheme.background):lighten(0.1),
      fg_color = color_scheme.foreground,
    },
    inactive_tab = {
      bg_color = wezterm.color.parse(color_scheme.background):lighten(0.05),
      fg_color = color_scheme.foreground,
    },
    inactive_tab_hover = {
      bg_color = wezterm.color.parse(color_scheme.background):lighten(0.08),
      fg_color = color_scheme.foreground,
    },
    new_tab = {
      bg_color = color_scheme.background,
      fg_color = color_scheme.foreground,
    },
    new_tab_hover = {
      bg_color = color_scheme.background,
      fg_color = color_scheme.ansi[3],
    }
  }
}

return config
