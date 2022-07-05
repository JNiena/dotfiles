local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
  vim.notify("Failed to load autopairs.")
  return
end

autopairs.setup()
