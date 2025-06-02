return {
  "saghen/blink.cmp",
  opts = {
    cmdline = {
      enabled = true,
      completion = {
        menu = { auto_show = true },
        list = {
          selection = { preselect = false },
        },
      },
      keymap = {
        preset = "enter",
        ["<C-y>"] = { "show_and_insert" },
        ["<CR>"] = { "accept_and_enter", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
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
