require('nvim-treesitter.configs').setup {
    ensure_installed = {
      "lua", "html", "javascript", "python", "css", "php", "tsx", "typescript"
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
   indent = {
    enable = true
  }
}
