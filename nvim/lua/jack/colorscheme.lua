local colorscheme = "catppuccin"

local req_status, catppuccin = pcall(require, "catppuccin")
local load_status = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not req_status or not load_status then
  vim.notify("Failed to load colorscheme.")
  return
end