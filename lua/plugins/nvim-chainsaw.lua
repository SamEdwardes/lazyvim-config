return {
  "chrisgrieser/nvim-chainsaw",
  event = "VeryLazy",
  opts = {}, -- required even if left empty
  keys = {
    {
      "<leader>cp",
      function()
        require("chainsaw").variableLog()
      end,
      desc = "Chainsaw variableLog",
    },
    {
      "<leader>cP",
      function()
        require("chainsaw").messageLog()
      end,
      desc = "Chainsaw messageLog",
    },
  },
}
