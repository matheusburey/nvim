local status_ok, db = pcall(require, "dashboard")
if not status_ok then
  return
end

local home = os.getenv('HOME')
vim.g.dashboard_default_executive = "telescope"
db.preview_command = 'cat | lolcat -F 0.3'
db.preview_file_path = home .. '/.config/nvim/neovim.cat'
db.preview_file_height = 10
db.preview_file_width = 55

db.custom_center = {
  { icon = '  ', desc = 'Recents                   ', shortcut = 'SPC f o', action = 'Telescope oldfiles' },
  { icon = '  ', desc = 'Find File                 ', shortcut = 'SPC f f', action = 'Telescope find_files' },
  { icon = '  ', desc = 'Find Word                 ', shortcut = 'SPC f w', action = 'Telescope live_grep' },
  { icon = '  ', desc = 'New File                  ', shortcut = 'SPC f n', action = 'DashboardNewFile' },
}
