local status_ok, mason = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

mason.setup({
  ensure_installed = {
    "ruff",
    "ts_ls",
    "jsonls",
    "biome",
    "rust_analyzer",
    "lua_ls",
    "lemminx",
    "sqlls",
    "volar",
    "html",
    "tailwindcss",
    "eslint",
    "bashls",
    "cssls",
    "gopls",
    "html",
    "ast_grep",
    "yamlls",
    "dockerls"
  },
  automatic_installation = true
})

mason.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end
})
