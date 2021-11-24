-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})

-- fast saving with <leader> and s
map('n', '<C-s>', ':write<CR>', default_opts)

-- fast saving quit <leader> and q
map('n', '<C-q>', ':quit<CR>', default_opts)

-- fast saving quit <leader> and q
map('n', '<C-Up>', ':m .-2<CR>', default_opts)
map('n', '<C-Down>', ':m .+1<CR>', default_opts)

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
