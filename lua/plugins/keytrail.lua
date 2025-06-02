return {
  "jfryy/keytrail.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("keytrail").setup()
  end,
  keys = {
    {
      "<leader>sK",
      "<cmd>KeyTrailJump<cr>",
      desc = "Search YAML/JSON keys with keytrail",
    },
  },
}
