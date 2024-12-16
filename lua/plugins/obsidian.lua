return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", desc = "Open Quick Switch" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Open Search" },
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "Create New Note" },
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>", desc = "Follow Link" },
    { "<leader>ob", "<cmd>ObsidianBackLinks<cr>", desc = "Backlinks Picker" },
    { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Instert a Template" },
    { "<leader>oc", "<cmd>ObsidianTOC<cr>", desc = "Table of Contents Picker" },
    { "<leader>od", "<cmd>ObsidianToggleCheckbox<cr>", desc = "Toggle Checkbox" },
  },
  opts = {
    workspaces = {
      {
        name = "iCloud Vault",
        path = "/Users/samedwardes/Library/Mobile Documents/iCloud~md~obsidian/Documents/iCloud Vault",
      },
    },
    new_notes_location = "01 Inbox",
    templates = {
      folder = "Templates",
    },
  },
}
