require("plugins.packer")
--PLUGINS--
require('telescope')

require('plugins.nvim-tree')
require('plugins.dashboard')
require('plugins.treesitter')
require('plugins.feline')
require("plugins.signature")
require("plugins.lspconfig") -- Install server: pip install pynvim
require("plugins.cmp")

require('nvim-autopairs').setup({disable_filetype = { "TelescopePrompt" , "vim" }})
require('nvim-ts-autotag').setup()
require("bufferline").setup()
