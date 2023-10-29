local status_ok, mason = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

mason.setup({
  ensure_installed = {
    "pyright",
    "tsserver",
    "rust_analyzer",
    "lua_ls",
    "sqlls"
  },
  automatic_installation = true
})

mason.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup {}
  end
})

