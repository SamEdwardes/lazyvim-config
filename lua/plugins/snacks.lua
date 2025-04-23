return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>ee",
      function()
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>eE",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
  },
}
