local colorscheme = "tokyonight-night"

vim.g.nord_italic = false

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
  vim.notify("Failed to load colorscheme.")
  return
end
