return {
  "saghen/blink.cmp",
  keys = {
    {
      "<leader>uB",
      function()
        -- At startup, it will be nil
        if vim.b.completion == nil then
          vim.b.completion = true
        end
        -- Toggle the current value
        vim.b.completion = not vim.b.completion
        -- Sent notification
        if vim.b.completion then
          vim.notify("Blink completions toggled on.")
        else
          vim.notify("Blink completions toggled off.")
        end
      end,
      desc = "Toggle blink completions",
    },
  },
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
