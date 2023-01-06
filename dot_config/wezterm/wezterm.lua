local wezterm = require("wezterm")
local mux = wezterm.mux

-- Manimize on startup
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Obtain current color scheme
local color_scheme_name = "OneHalfDark"
local color_scheme = wezterm.color.get_builtin_schemes()[color_scheme_name]

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

return {
  -- Don't check for updates
  check_for_updates = false,
  -- Set the font
  font = wezterm.font_with_fallback({
    "Fira Code",
    { family = "JoyPixels", assume_emoji_presentation = true },
  }),
  font_size = 12.0,
  -- Set the color scheme
  color_scheme = color_scheme_name,
  -- Stylize the tab bar
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  tab_bar_at_bottom = true,
  window_frame = {
    font = wezterm.font_with_fallback({
      { family = "Roboto", weight = "Bold" },
      { family = "JoyPixels", assume_emoji_presentation = true },
    }),
    font_size = 12.0,
    active_titlebar_bg = color_scheme.background,
    inactive_titlebar_bg = color_scheme.background
  },
  colors = {
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
  },
}
