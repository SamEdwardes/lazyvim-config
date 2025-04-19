return {
  "folke/trouble.nvim",
  keys = {
    { "<leader>xf", "<cmd>Trouble fzf<cr>", desc = "FZF sources (Trouble)" },
  },
  opts = {
    win = {
      position = "right",
    },
    preview = {
      type = "main",
      scratch = false,
    },
  },
}
