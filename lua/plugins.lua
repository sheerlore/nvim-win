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
    requires = { "nvim-lua/plenary.nvim" }
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  -- LSP & SERVER --
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

  -- CMP
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/cmp-vsnip"
  use "onsails/lspkind.nvim"

  -- others
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
  use {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup {}
    end
  }
end)
