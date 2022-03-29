require("plugins.packer")
--PLUGINS--
require("telescope")

require("nvim-tree").setup()
require("nvim-ts-autotag").setup()
require('gitsigns').setup()

require("plugins.dashboard")
require("plugins.treesitter")
require("plugins.feline")
require("plugins.signature")
require("plugins.lspconfig") -- Install server: pip install pynvim
require("plugins.cmp")
require("plugins.autopairs")
require("plugins.bufferline")
