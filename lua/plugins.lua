require("plugins.packer")
--PLUGINS--

local plugins = { "nvim-tree", "nvim-ts-autotag", "gitsigns", "bufferline", "Comment", "lsp_signature", "plugins.lspconfig" }

for _, plu in pairs(plugins) do
  local present, plugin = pcall(require, plu)
  if present then
    plugin.setup()
  end
end

require("plugins.toggleterm")
require("plugins.autopairs")
require("plugins.dashboard")
require("plugins.feline")
require("plugins.lsp-installer")
require("plugins.cmp")
require("plugins.treesitter")
require("plugins.null-ls")
