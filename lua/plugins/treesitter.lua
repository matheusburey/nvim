local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  matchup = { enable = true },
  ensure_installed = {
    "lua", "html", "javascript", "python", "tsx", "typescript", "bash", "rust", "markdown", "sql", "java", "yaml",
    "json", "toml", "dockerfile", "gitignore", "go", "regex", "scss", "vue"
  },
  highlight = {
    enable = true,       -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = "<!-- %s -->",
    },
  },
})
