require('nvim-treesitter.configs').setup {
    ensure_installed = {
      "lua", "html", "javascript", "python", "css", "php",
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
}

