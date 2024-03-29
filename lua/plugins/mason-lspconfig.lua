local status_ok, mason = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

mason.setup({
  ensure_installed = {
    "pyright",
    "ruff_lsp",
    "tsserver",
    "biome",
    "rust_analyzer",
    "lua_ls",
    "sqlls",
    "volar",
    "html"
  },
  automatic_installation = true
})

mason.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end
})
