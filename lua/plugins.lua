require("plugins.packer")

--PLUGINS--
require("nvim-tree").setup()
require("nvim-ts-autotag").setup()
require("gitsigns").setup()
require("bufferline").setup()

require("plugins.autopairs")
require("plugins.dashboard")
require("plugins.feline")
require("plugins.signature")
require("plugins.lspconfig") -- Install server: pip install pynvim
require("plugins.cmp")
require("plugins.treesitter")
