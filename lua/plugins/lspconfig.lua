local M = {}
local localVim = vim

M.setup = function()
  local icons = {
    Error = "",
    Warning = "",
    Information = "",
    Question = "",
    Hint = ""
  }

  local config = {
    virtual_text = false,
    signs = {
      text = {
       [localVim.diagnostic.severity.ERROR] = icons.Error ,
       [localVim.diagnostic.severity.WARN] = icons.Warning ,
       [localVim.diagnostic.severity.HINT] = icons.Hint ,
       [localVim.diagnostic.severity.INFO] = icons.Information ,
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

  localVim.diagnostic.config(config)

  local cfg = { border = "rounded" }

  localVim.lsp.handlers["textDocument/hover"] = localVim.lsp.with(localVim.lsp.handlers.hover, cfg)

  localVim.lsp.handlers["textDocument/signatureHelp"] = localVim.lsp.with(localVim.lsp.handlers.signature_help, cfg)
end

local capabilities = localVim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

return M
