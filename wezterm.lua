local wezterm = require 'wezterm';

local launch_menu = {}

local ssh_config_file = wezterm.home_dir .. "/.ssh/config"
local f = io.open(ssh_config_file)
if f then
    local line = f:read("*l")
    while line do
        if line:find("Host ") == 1 then
            local host = line:gsub("Host ", "")
            table.insert(
                launch_menu,
                {
                    label = "SSH " .. host,
                    args = {"pwsh.exe", "ssh", host}
                }
            )
        end
        line = f:read("*l")
    end
    f:close()
end

function basename(s)
  return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local pane = tab.active_pane
  local dir = basename(pane.current_working_dir)
  local title = dir

  if dir == nil or dir == '' then
    title = basename(pane.foreground_process_name)
  end

  if (dir == basename(wezterm.home_dir)) then
    title = '~'
  end

  return {
    {Text=" [" .. title .. "] "},
  }
end)

return {
  default_prog = {"pwsh.exe"},
  launch_menu = launch_menu,
  enable_scroll_bar = false,

  -- tab bar
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  tab_max_width = 64,
  tab_bar_style = {},
  tab_bar_at_bottom = true,

  -- window
  window_decorations = "NONE",
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = -38,
  },
  initial_cols = 100,
  initial_rows = 20,

  -- font
  font = wezterm.font("Sarasa Mono SC Nerd"),

  -- color
  colors = {
    foreground = "#e6d4a3",
    background = "#1e1e1e",
    cursor_bg = "#ff5555",
    cursor_border = "#ff5555",
    cursor_fg = "#1e1e1e",
    selection_bg = "#e6d4a3",
    selection_fg = "#534a42",

    ansi = {"#1e1e1e","#be0f17","#868715","#cc881a","#377375","#a04b73","#578e57","#978771"},
    brights = {"#7f7061","#f73028","#aab01e","#f7b125","#719586","#c77089","#7db669","#e6d4a3"},

    tab_bar = {
      active_tab = {
        bg_color = "rgba(0, 0, 0, 0)",
        fg_color = "#ff5555",
      },
      inactive_tab_edge = "rgba(0, 0, 0, 0)",
    },
  },
  inactive_pane_hsb = {
    saturation = 0.6,
    brightness = 0.4,
  },

  -- keys
  leader = { key="b", mods="CTRL" },
  keys = {
    {key="b", mods = "LEADER|CTRL", action=wezterm.action{SendString="\x02"}},
    {key="Enter", mods="CTRL", action="ToggleFullScreen"},
    {key="c", mods="ALT", action="Copy"},
    {key="v", mods="ALT", action="Paste"},

    -- tab
    {key="t", mods="CTRL", action=wezterm.action{SpawnCommandInNewTab={cwd=wezterm.home_dir}}},
    {key="w", mods = "ALT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
    {key="1", mods="CTRL", action=wezterm.action{ActivateTab=0}},
    {key="2", mods="CTRL", action=wezterm.action{ActivateTab=1}},
    {key="3", mods="CTRL", action=wezterm.action{ActivateTab=2}},
    {key="4", mods="CTRL", action=wezterm.action{ActivateTab=3}},
    {key="5", mods="CTRL", action=wezterm.action{ActivateTab=4}},
    {key="6", mods="CTRL", action=wezterm.action{ActivateTab=5}},
    {key="7", mods="CTRL", action=wezterm.action{ActivateTab=6}},
    {key="8", mods="CTRL", action=wezterm.action{ActivateTab=7}},
    {key="9", mods="CTRL", action=wezterm.action{ActivateTab=8}},

    -- pane
    {key="\"", mods="LEADER|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="%", mods="LEADER|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="z", mods="LEADER", action="TogglePaneZoomState" },
    {key="x", mods = "LEADER", action=wezterm.action{CloseCurrentPane={confirm=true}}},
    {key="h", mods="LEADER", action=wezterm.action{ActivatePaneDirection="Left"}},
    {key="j", mods="LEADER", action=wezterm.action{ActivatePaneDirection="Down"}},
    {key="k", mods="LEADER", action=wezterm.action{ActivatePaneDirection="Up"}},
    {key="l", mods="LEADER", action=wezterm.action{ActivatePaneDirection="Right"}},
    {key="H", mods="LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
    {key="J", mods="LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
    {key="K", mods="LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
    {key="L", mods="LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
    {key="1", mods="LEADER", action=wezterm.action{ActivatePaneByIndex=0}},
    {key="2", mods="LEADER", action=wezterm.action{ActivatePaneByIndex=1}},
    {key="3", mods="LEADER", action=wezterm.action{ActivatePaneByIndex=2}},
    {key="4", mods="LEADER", action=wezterm.action{ActivatePaneByIndex=3}},
    {key="5", mods="LEADER", action=wezterm.action{ActivatePaneByIndex=4}},

    {key="l", mods="SHIFT|CTRL", action="ShowDebugOverlay"},
  }
}