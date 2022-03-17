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
map("i", "kk", "<Esc>", {noremap = true})

-- fast saving with <leader> and s
map("n", "<C-s>", ":write<CR>", default_opts)

-- fast saving quit <leader> and q
map("n", "<C-q>", ":quit<CR>", default_opts)

-- Move text up and down
map("n", "<M-k>", ":m .-2<CR>", default_opts)
map("n", "<M-j>", ":m .+1<CR>", default_opts)
-- Visual Block --
map("x", "<M-k>", ":m '<-2<CR>gv-gv", default_opts)
map("x", "<M-j>", ":m '>+1<CR>gv-gv", default_opts)

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", default_opts)       -- open/close

-- Navigate buffers
map("n", "<M-l>", ":bnext<CR>", default_opts)
map("n", "<M-h>", ":bprevious<CR>", default_opts)
map("n", "<M-c>", ":bdelet<CR>", default_opts)

