local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  }
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <file> | PackerSync
  augroup end
]]

local status, packer = pcall(require, "packer")

if not status then
  vim.notify("Failed to load packer.")
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }
  use "windwp/nvim-autopairs"
  use "nvim-treesitter/nvim-treesitter"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)