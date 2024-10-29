return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = true,
    keys = {
      { "<leader>or", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle Render Markdown" },
    },
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
