-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Packer devicons
    use "kyazdani42/nvim-web-devicons"

    -- Packer dashboard
    use "glepnir/dashboard-nvim"

    -- Packer file explorer
    use {
        "kyazdani42/nvim-tree.lua",
    }

    -- Packer statusline
    use {
        "famiu/feline.nvim",
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
    use {
        'akinsho/bufferline.nvim', 
    }
end)
