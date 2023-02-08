local status, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status then
  vim.notify("Failed to load treesitter.")
  return
end

treesitter_configs.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true
  }
}
