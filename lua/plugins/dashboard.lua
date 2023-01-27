local status_ok, db = pcall(require, "dashboard")
if not status_ok then
  return
end

vim.g.dashboard_default_executive = "telescope"

db.setup({
  theme = 'doom', --  theme is doom and hyper default is hyper
  config = {
    header = {
      "",
      "",
      "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
      "",
      "",
    },
    center = {
      {
        icon = '  ',
        icon_hl = {fg = "#ff0000"},
        desc = 'Recents                   ',
        desc_hl = {fg = "#ff0000"},
        key = 'SPC f o',
        key_hl = {fg = "#ff0000"},
        action = 'Telescope oldfiles'
      },
      {
        icon = '  ',
        icon_hl = {fg = "#ff0000"},
        desc = 'Find File                 ',
        desc_hl = {fg = "#ff0000"},
        key = 'SPC f f',
        key_hl = {fg = "#ff0000"},
        action = 'Telescope find_files'
      },
      {
        icon = '  ',
        icon_hl = {fg = "#ff0000"},
        desc = 'Find Word                 ',
        desc_hl = {fg = "#ff0000"},
        key = 'SPC f w',
        key_hl = {fg = "#ff0000"},
        action = 'Telescope live_grep'
      },
      {
        icon = '  ',
        icon_hl = {fg = "#ff0000"},
        desc = 'New File                  ',
        desc_hl = {fg = "#ff0000"},
        key = 'SPC f n',
        key_hl = {fg = "#ff0000"},
        action = 'DashboardNewFile'
      },
    },
  }
})
