local M = {}

M.setup = function()
  local icons = {
    Error = "",
    Warning = "",
    Information = "",
    Question = "",
    Hint = ""
  }
  local signs = {
    { name = "DiagnosticSignError", text = icons.Error },
    { name = "DiagnosticSignWarn",  text = icons.Warning },
    { name = "DiagnosticSignHint",  text = icons.Hint },
    { name = "DiagnosticSignInfo",  text = icons.Information },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  local cfg = { border = "rounded" }

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, cfg)

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, cfg)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M
