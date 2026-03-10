return {
  { "akinsho/bufferline.nvim", enabled = false }, -- show buffers in tab bar??
  { "catppuccin", enabled = false }, -- colorscheme
  { "folke/flash.nvim", enabled = false }, -- search labels
  { "folke/todo-comments.nvim", enabled = false }, -- finds TODO comments
  {
    "folke/noice.nvim",
    opts = {
      cmdline = { enabled = false, view = "cmdline", },
      messages = { enabled = false },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",

      dim_inactive = true,
      on_colors = function(colors)
        colors.bg = "#181818"
        colors.bg_dark = "#101010"
      end,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
      notifier = { enabled = false },
      scroll = { enabled = false },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      preset = "modern",
    },
  },
  {
    "inkarkat/vim-visualrepeat"
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "ada-language-server",
        "perlnavigator",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ada_ls = {},
        clojure_lsp = {},
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "all" },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      cmdline = { enabled = false },
    },
  },
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<CMD>Oil<CR>", desc = "Open parent directory" }
    },
    opts = {},
  },
}
