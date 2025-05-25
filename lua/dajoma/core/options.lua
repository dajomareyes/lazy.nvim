local opt = vim.opt -- for conciseness

-- remove the banner for the file explorer 
vim.cmd("let g:netrw_banner = 0")

-- line numbers
opt.relativenumber = true
opt.number = true

-- spacing and what not
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.colorcolumn = "80"

opt.wrap = false
opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

opt.incsearch = true
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true

opt.backspace = {"start", "eol", "indent"}

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false 
opt.backup = false
opt.undofile = true

opt.updatetime = 60
opt.hlsearch = true

opt.mouse = "a"
vim.g.editorconfig = true

opt.clipboard:append("unnamedplus")

