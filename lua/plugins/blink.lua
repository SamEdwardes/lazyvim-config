return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      providers = {
        lsp = {
          fallbacks = { "buffer" },
        },
      },
    },
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
        ["<C-space>"] = { "show", "fallback" },
        ["<C-e>"] = { "hide", "fallback" },
      },
    },
    completion = {
      ghost_text = {
        enabled = true,
        show_with_menu = false,
      },
      menu = {
        auto_show = true,
        draw = {
          columns = { { "kind_icon" }, { "label", "label_description", "source_name", gap = 1 } },
        },
      },
    },
  },
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
        -- Send notification
        if vim.b.completion then
          vim.notify("Blink completions toggled on.", vim.log.levels.INFO)
        else
          vim.notify("Blink completions toggled off.", vim.log.levels.INFO)
        end
      end,
      desc = "Toggle blink completions",
    },
  },
}
