return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  opts = {
    multiplexer_integration = "wezterm",
  },
  -- keys = {
  --   { "<C-h>", "<cmd>SmartCursorMoveLeft<cr>", desc = "Move to the left pane", mode = "n" },
  --   { "<C-j>", "<cmd>SmartCursorMoveDown<cr>", desc = "Move to the down pane", mode = "n" },
  --   { "<C-k>", "<cmd>SmartCursorMoveUp<cr>", desc = "Move to the up pane", mode = "n" },
  --   { "<C-h>", "<cmd>SmartCursorMoveRight<cr>", desc = "Move to the right pane", mode = "n" },
  -- },
  -- config = function()
  --   vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
  --   vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
  --   vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
  --   vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
  --
  --   vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
  --   vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
  --   vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
  --   vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
  -- end,
}
