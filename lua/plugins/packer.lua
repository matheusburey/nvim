-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
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

local use = require('packer').use
return packer.startup(function()
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	-- Packer devicons
	use "kyazdani42/nvim-web-devicons"

	-- Packer dashboard
	use "glepnir/dashboard-nvim"

	-- Packer file explorer
	use "kyazdani42/nvim-tree.lua"

	-- Packer statusline
	use "famiu/feline.nvim"

	-- Packer theme dracula
	use "Mofiqul/dracula.nvim"

	-- Packer autopairs
	use "windwp/nvim-autopairs"

	-- Packer git decorations
	use "lewis6991/gitsigns.nvim"

	-- Packer configurations and abstraction layer for Neovim
	use  "nvim-treesitter/nvim-treesitter"
	use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"

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

	-- Packer Show function signature when you type
	use "ray-x/lsp_signature.nvim"

	-- Packer Neovim Lua plugin providing access to the SchemaStore catalog.
	use "b0o/SchemaStore.nvim"
end)
