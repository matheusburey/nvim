-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
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

return require("packer").startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Packer devicons
    use "kyazdani42/nvim-web-devicons"

    -- Packer dashboard
    use "glepnir/dashboard-nvim"

    -- Packer file explorer
    use {
        "kyazdani42/nvim-tree.lua"
    }

    -- Packer statusline
    use {
        "famiu/feline.nvim"
    }

    -- Packer theme dracula
    use {
        "Mofiqul/dracula.nvim"
    }	
    -- Packer autopairs
    use {
        "windwp/nvim-autopairs"	
    }

    -- Packer configurations and abstraction layer for Neovim
    use {
        "nvim-treesitter/nvim-treesitter"
    }

    -- Packer autoclose and autorename html tag
    use {
        "windwp/nvim-ts-autotag"
    }

    -- Packer telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- Packer bufferline
    use {
        "akinsho/bufferline.nvim"
    }

    -- LSP plugins
    -- Packer Show function signature when you type
    use {
        "ray-x/lsp_signature.nvim" 
    }


    -- Packer lspconf
    use {
        "neovim/nvim-lspconfig" 
    }

    -- Packer nvim-cmp
    use {
        "hrsh7th/nvim-cmp",
        requires = { { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" } }
    }
end)
