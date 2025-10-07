require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "ruby", "vim", "javascript", "bash", "java", "json", "css", "scss", "typescript", "python", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}