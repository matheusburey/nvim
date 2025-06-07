local status_ok, mason = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

mason.setup({
  ensure_installed = {
    "ruff",  -- python
    "ts_ls", -- typescript
    "biome", --js ts json
    "rust_analyzer", --rust
    "lua_ls", --lua
    "sqlls",
    "vue_ls",
    "html",
    "tailwindcss",
    "bashls",
    "cssls",
    "gopls",
    "ast_grep",
    "yamlls",
    "dockerls"
  },
  automatic_installation = true
})

