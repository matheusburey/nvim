return {
  -- provides framework for easy foldtext customization
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require("ufo").setup()
    end,
  },

  -- lazy devicons
  { "nvim-tree/nvim-web-devicons" },

  -- dashboard
  {
    "goolord/alpha-nvim",
    config = function()
      require("plugins.configs.dashboard")
    end,
  },

  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- smart commenting
  { "numToStr/Comment.nvim" },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.configs.statusline")
    end,
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },

  -- git decorations
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- configurations and abstraction layer for Neovim
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("plugins.configs.treesitter")
    end,
  },

  -- autoclose and autorename html tag
  { "windwp/nvim-ts-autotag" },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("bufferline").setup()
    end,
  },

  -- nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("plugins.configs.cmp")
    end,
  },

  -- LSP plugins
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("plugins.configs.lspconfig").setup()
      require("plugins.configs.mason-lspconfig")
    end,
  },
  -- Show function signature when you type
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("plugins.configs.signature")
    end,
  },

  -- Neovim Lua plugin providing access to the SchemaStore catalog.
  { "b0o/SchemaStore.nvim" },

  -- plugin adds indentation guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end
  },

}
