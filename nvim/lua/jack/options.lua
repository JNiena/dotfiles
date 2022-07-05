local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  termguicolors = true,
  swapfile = false,
  timeoutlen = 100,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  relativenumber = false,
  numberwidth = 4,
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
