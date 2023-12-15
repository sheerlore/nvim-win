vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  -- color theme
  use "folke/tokyonight.nvim"
  -- icon
  use "nvim-tree/nvim-web-devicons"
  -- status line
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }
  -- tabline
  use {
    "akinsho/bufferline.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }
  -- fuzzy finder
  use {
    "nvim-telescope/telescope.nvim",
    requires = {"nvim-lua/plenary.nvim"}
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
end)
