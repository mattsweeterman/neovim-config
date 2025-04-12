-- thicc cursor
vim.opt.guicursor = ""

-- line numbers & relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- 4 space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- please be smart about tabs
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

-- PLEASE STOP WRAPPING SHIT
vim.opt.wrap = false

-- backup settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

-- better search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- gotta have those pretty colors
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes:1"
vim.opt.isfname:append("@-@")
vim.opt.showcmd = true

vim.opt.list = true
-- vim.opt.listchars = "eol:.,tab:>-,trail:~,extends:>,precedes:<"

vim.opt.cursorline = false

vim.opt.clipboard = "unnamed"

vim.opt.showmode = true

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
