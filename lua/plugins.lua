require("plugins.packer")
--PLUGINS--

local plugins = { "nvim-tree", "nvim-ts-autotag", "gitsigns", "bufferline", "Comment", "lsp_signature", "ufo", "codeium",
  "mason", "ibl", "plugins.lspconfig"}

for _, plu in pairs(plugins) do
  local present, plugin = pcall(require, plu)
  if present then
    plugin.setup()
  end
end

require("plugins.autopairs")
require("plugins.dashboard")
require("plugins.statusline")
require("plugins.cmp")
require("plugins.treesitter")
require("plugins.mason-lspconfig")
