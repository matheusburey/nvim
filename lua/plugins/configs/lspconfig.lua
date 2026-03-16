local M = {}
local diagnostic = vim.diagnostic
local lsp = vim.lsp

M.setup = function()
  local icons = {
    Error = "",
    Warning = "",
    Information = "",
    Question = "",
    Hint = ""
  }

  local config = {
    virtual_text = false,
    signs = {
      text = {
        [diagnostic.severity.ERROR] = icons.Error,
        [diagnostic.severity.WARN] = icons.Warning,
        [diagnostic.severity.HINT] = icons.Hint,
        [diagnostic.severity.INFO] = icons.Information,
      }
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

  diagnostic.config(config)

  local cfg = { border = "rounded" }

  lsp.handlers["textDocument/hover"] = lsp.with(lsp.handlers.hover, cfg)

  lsp.handlers["textDocument/signatureHelp"] = lsp.with(lsp.handlers.signature_help, cfg)
end

local capabilities = lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M
