return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_c = {
        LazyVim.lualine.root_dir(),
        {
          "diagnostics",
          symbols = {
            error = LazyVim.config.icons.diagnostics.Error,
            warn = LazyVim.config.icons.diagnostics.Warn,
            info = LazyVim.config.icons.diagnostics.Info,
            hint = LazyVim.config.icons.diagnostics.Hint,
          },
        },
        {
          "filetype",
          icon_only = false,
        },
        {
          function()
            return vim.b.completion == false and "" or "💡"
          end,
          color = { fg = "#ff6b6b" },
        },
        { LazyVim.lualine.pretty_path() },
      },
    },
  },
}
