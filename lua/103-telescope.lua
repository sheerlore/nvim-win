local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

telescope.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules\\",
      "package-lock.json",
      ".git\\",
    },
    mappings = {
      n = {},
      i = {
        ['<esc>'] =  actions.close
      }
    },
  },
  extensions = {
    file_browser = {
      -- theme = "dropdown",
      theme = "ivy",
      hijack_netrw = true,
      mappings = {
        ["i"] = {},
        ["n"] = {},
      }
    }
  }
}

telescope.load_extension("file_browser")
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>bb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>hh', builtin.help_tags, opts)

vim.api.nvim_set_keymap(
  'n',
  '<leader>fb',
  '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", select_buffer = true, pwd = telescope_buffer_dir()})<CR>',
  { noremap = true }
)
