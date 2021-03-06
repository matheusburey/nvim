local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
-- npm install --save-dev prettier prettier-plugin-solidity
null_ls.setup {
  debug = false,
  sources = {
    formatting.eslint.with { extra_filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" }},
    diagnostics.eslint.with { extra_filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact", "vue" }},
    formatting.black.with { extra_filetypes = { "python" }, extra_args = { "--fast" } },
		diagnostics.flake8.with { extra_filetypes = { "python" }}
  }
}
