-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end


local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- provides framework for easy foldtext customization
  use "kevinhwang91/nvim-ufo"
  use "kevinhwang91/promise-async"

  -- Packer devicons
  use "nvim-tree/nvim-web-devicons"

  -- Packer dashboard
  use "goolord/alpha-nvim"

  -- Packer file explorer
  use "kyazdani42/nvim-tree.lua"

  -- Packer terminal
  use "akinsho/toggleterm.nvim"

  -- Packer smart commenting
  use "numToStr/Comment.nvim"

  -- Packer statusline
  use "feline-nvim/feline.nvim"

  -- Packer theme dracula
  use "Mofiqul/dracula.nvim"

  -- Packer autopairs
  use "windwp/nvim-autopairs"

  -- Packer git decorations
  use "lewis6991/gitsigns.nvim"

  -- Packer configurations and abstraction layer for Neovim
  use "nvim-treesitter/nvim-treesitter"
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"

  -- Packer autoclose and autorename html tag
  use "windwp/nvim-ts-autotag"

  -- Packer telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-lua/plenary.nvim"

  -- Packer bufferline
  use "akinsho/bufferline.nvim"

  -- Packer nvim-cmp
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"

  -- LSP plugins
  use "neovim/nvim-lspconfig" -- Packer lspconf
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Packer Show function signature when you type
  use "ray-x/lsp_signature.nvim"

  -- Packer Neovim Lua plugin providing access to the SchemaStore catalog.
  use "b0o/SchemaStore.nvim"

  -- ultrafast Copilot alternative for Vim and Neovim
  use "jcdickinson/codeium.nvim" 
end)
