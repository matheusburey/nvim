-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'kyazdani42/nvim-web-devicons'

  use 'glepnir/dashboard-nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  use {
      "famiu/feline.nvim",
      after = "nvim-web-devicons",
   }

  use "NvChad/nvim-base16.lua"

end)
