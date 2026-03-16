-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

--Remap space as leader key
map("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- map Esc to kk
map("i", "kk", "<Esc>", { noremap = true })

-- fast saving with ctrl  and s
map("n", "<C-s>", ":write<CR>", default_opts)

-- fast saving quit ctrl and q
map("n", "<C-q>", ":quit<CR>", default_opts)

-- paste does not change clipboard
map("v", "p", '"_dP', { silent = true })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", default_opts)
map("n", "<A-k>", "<cmd>m .-2<cr>==", default_opts)
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", default_opts)
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", default_opts)
map("v", "<A-j>", ":m '>+1<cr>gv=gv", default_opts)
map("v", "<A-k>", ":m '<-2<cr>gv=gv", default_opts)

-- Better window navigation
map("n", "<C-H>", "<C-w>h", default_opts)
map("n", "<C-J>", "<C-w>j", default_opts)
map("n", "<C-K>", "<C-w>k", default_opts)
map("n", "<C-L>", "<C-w>l", default_opts)

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
map("n", "<F1>", ":Telescope<CR>", default_opts)
map("n", "<F2>", "<cmd>Telescope git_status<CR>", default_opts)

-- Gitsigns
map("n", "<M-d>", "<cmd>Gitsigns diffthis<CR>", default_opts)

-- LSP Diagnostics
-- diagnostic
map("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", default_opts)
map("n", "<leader>n", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', default_opts)
map("n", "<leader>b", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', default_opts)
map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", default_opts)

-- Buffer local mappings.
map('n', '<C-K>', "<cmd>vim.lsp.buf.declaration()<CR>", default_opts)
map("n", "<C-k>", "<cmd>lua vim.lsp.buf.definition()<CR>", default_opts)
map("n", "<C-Space>", "<cmd>lua vim.lsp.buf.hover()<CR>", default_opts)
map("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", default_opts)
map("n", "<leader>k", "<cmd>lua vim.lsp.buf.signature_help()<CR>", default_opts)
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", default_opts)
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.references()<CR>", default_opts)
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", default_opts)
map("n", "<C-f>", "<cmd>lua vim.lsp.buf.format({async=true})<CR>", default_opts)


-- Add undo break-points
map("i", ",", ",<c-g>u", default_opts)
map("i", ".", ".<c-g>u", default_opts)
map("i", ";", ";<c-g>u", default_opts)
