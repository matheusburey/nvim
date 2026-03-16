require("plugins.packer")
--PLUGINS--

local plugins = { "nvim-tree", "nvim-ts-autotag", "gitsigns", "bufferline", "Comment", "lsp_signature", "ufo", "codeium",
  "mason", "ibl", "plugins.configs.lspconfig"}

for _, plu in pairs(plugins) do
  local present, plugin = pcall(require, plu)
  if present then
    plugin.setup()
  end
end

require("plugins.configs.autopairs")
require("plugins.configs.dashboard")
require("plugins.configs.statusline")
require("plugins.configs.cmp")
require("plugins.configs.treesitter")
require("plugins.configs.mason-lspconfig")
