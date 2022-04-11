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

-- fast saving with ctrl  and s
map("n", "<C-s>", ":write<CR>", default_opts)

-- fast saving quit ctrl and q
map("n", "<C-q>", ":quit<CR>", default_opts)

-- paste does not change clipboard
map("v", "p", '"_dP', {silent = true})

-- Move text up and down
map("n", "<M-k>", ":m .-2<CR>", default_opts)
map("n", "<M-j>", ":m .+1<CR>", default_opts)

-- Visual Block --
map("x", "<M-k>", ":m '<-2<CR>gv-gv", default_opts)
map("x", "<M-j>", ":m '>+1<CR>gv-gv", default_opts)

-- Better window navigation
map("n", "<M-H>", "<C-w>h", default_opts)
map("n", "<M-J>", "<C-w>j", default_opts)
map("n", "<M-K>", "<C-w>k", default_opts)
map("n", "<M-L>", "<C-w>l", default_opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", default_opts)
map("n", "<C-Down>", ":resize +2<CR>", default_opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", default_opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", default_opts)

-- nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", default_opts)

-- Navigate buffers
map("n", "<M-l>", ":bnext<CR>", default_opts)
map("n", "<M-h>", ":bprevious<CR>", default_opts)
map("n", "<M-c>", ":bdelet<CR>", default_opts)

-- Open Telescope
map("n", "<M-g>", ":Telescope<CR>", default_opts)

map("n", "<F1>", "<cmd>Telescope git_status<cr>", default_opts)

-- Null-ls format file
map("n", "<C-f>", ":Format<CR>", default_opts)

