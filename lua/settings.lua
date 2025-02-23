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
opt.whichwrap:append "<>[]hl"

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = false          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.showmode = false          -- we don't need to see things like -- INSERT -- anymore
opt.fileencoding = "utf-8"    -- the encoding written to a file
opt.pumheight = 10            -- pop up menu height
opt.splitbelow = true         -- force all horizontal splits to go below current window
opt.splitright = true         -- force all vertical splits to go to the right of current window
opt.undofile = true           -- enable persistent undo
opt.updatetime = 1000          -- faster completion (4000ms default)
opt.numberwidth = 2           -- define a largura da coluna do número para 2 {padrão 4}
opt.foldlevel = 10            -- Using ufo provider need a large value, feel free to decrease the value
opt.timeoutlen = 400
opt.ruler = false
opt.shortmess:append "sI"

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 50         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
vim.cmd 'colorscheme onedark'

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 2 spaces when tab
opt.tabstop = 2           -- 1 tab == 2 spaces
opt.smartindent = true    -- autoindent new lines
opt.wrap = false          -- exibe as linhas como uma linha longa
opt.colorcolumn = "100"
opt.showtabline = 2       -- always show tabs
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.laststatus = 3
