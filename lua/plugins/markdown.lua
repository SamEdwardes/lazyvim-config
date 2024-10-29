return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = true,
    opts = {
      -- Don't render by default
      enabled = false,
      win_options = { conceallevel = { default = 0, rendered = 3 } },
      code = {
        enabled = true,
      },
      link = {
        enabled = false,
      },
    },
  },
}
