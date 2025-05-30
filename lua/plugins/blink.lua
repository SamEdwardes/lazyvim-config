return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  opts = {
    cmdline = {
      enabled = false,
    },
    completion = {
      menu = {
        draw = {
          columns = { { "kind_icon" }, { "label", "label_description", "source_name", gap = 1 } },
        },
      },
    },
  },
}
