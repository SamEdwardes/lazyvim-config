return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      htmldjango = {
        "djlint",
        "djhtml",
      },
    },
    formatters = {
      djhtml = {
        command = "uvx",
        args = { "djhtml", "--tabwidth", "2", "$FILENAME" },
        stdin = false,
      },
    },
  },
}
