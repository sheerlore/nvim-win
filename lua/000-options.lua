-- lua/options.lua

-- file
vim.opt.fileencoding = "utf-8"
vim.opt.swapfile = false
vim.opt.hidden = true

-- menu & command
vim.opt.wildmenu = true
vim.opt.cmdheight = 2
vim.opt.laststatus = 2
vim.opt.showcmd = true

-- colorscheme
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- indent
vim.opt.shiftwidth = 0
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- display
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.showtabline = 2
vim.opt.showmatch = true
vim.opt.list = true
vim.opt.listchars = "tab:>-,trail:."

-- interface
vim.opt.winblend = 20
vim.opt.pumblend = 20
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"

-- search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- others
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.updatetime = 300
vim.opt.encoding = "utf-8"
vim.opt.shell = "pwsh.exe"
