return {
  {
    "folke/noice.nvim",
    enabled = true,
    opts = {
      presets = {
        long_message_to_split = true, -- long messages will be sent to a split
      },
      routes = {
        -- {
        --   -- Send long message outputs to split view. In notify
        --   -- they are hard to read because they get cut off.
        --   filter = {
        --     event = "msg_show",
        --     any = {
        --       { min_length = 80 },
        --     },
        --   },
        --   view = "split",
        -- },
      },
      messages = {
        view = "notify",
      },
      cmdline = {
        format = {
          cmdline = { pattern = "^:", icon = ":", lang = "vim" },
        },
      },
    },
  },
}
