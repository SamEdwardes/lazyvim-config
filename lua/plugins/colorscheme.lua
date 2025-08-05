return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "eldritch-theme/eldritch.nvim",
    enabled = false,
    name = "eldritch",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    enabled = true,
    name = "tokyonight",
    opts = {
      dim_inactive = true,
    },
  },
  {
    "catppuccin/nvim",
    enabled = false,
    name = "catppuccin",
    opts = {
      transparent_background = true,
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
    },
  },
}
