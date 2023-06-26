-- Appearance
vim.opt.guicursor = ""
vim.opt.termguicolors = true

-- Line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indentation
vim.opt.smartindent = true

-- Wrapping
vim.opt.wrap = false

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Scrolling and sign column
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Filename characters
vim.opt.isfname:append("@-@")

-- CursorHold autocmd event
vim.opt.updatetime = 50
