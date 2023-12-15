-- init.lua

require('000-options')
require('001-keymaps')

-- plugins
require('plugins')
require('101-lualine')
require('102-bufferline')
require('103-telescope')
require('104-mason')
require('105-lspconfig')
require('106-cmp')

vim.cmd [[colorscheme tokyonight-storm]]
