----------------------Neovim settings----------------------
-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local opt = vim.opt         		-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = "a"               -- enable mouse support
opt.clipboard = "unnamedplus" -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.showmode = false          -- we don't need to see things like -- INSERT -- anymore
opt.cmdheight = 2             -- more space in the neovim command line for displaying messages
opt.fileencoding = "utf-8"    -- the encoding written to a file
opt.pumheight = 10            -- pop up menu height
opt.splitbelow = true         -- force all horizontal splits to go below current window
opt.splitright = true         -- force all vertical splits to go to the right of current window
opt.undofile = true           -- enable persistent undo
opt.updatetime = 300          -- faster completion (4000ms default)
opt.numberwidth = 2           -- define a largura da coluna do número para 2 {padrão 4}

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
pcall(vim.cmd, "colorscheme " .. "dracula")

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 2 spaces when tab
opt.tabstop = 2           -- 1 tab == 2 spaces
opt.smartindent = true    -- autoindent new lines
opt.wrap = false          -- exibe as linhas como uma linha longa
opt.colorcolumn = "120"
opt.showtabline = 2       -- always show tabs
