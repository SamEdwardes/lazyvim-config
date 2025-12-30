return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    terminal = {
      shell = "fish",
    },
  },
  keys = {
    -- Set up a mapping to use JK to enter normal mode when in the terminal.
    -- The challenge is that I'm using fish with vim mode, and so escape
    -- in fish is for vim fish mode.
    { "jk", [[<C-\><C-n>]], mode = "t", desc = "Exit terminal mode" },
  },
}
