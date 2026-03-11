return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    { "<leader>ee", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    { "<leader>eE", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        never_show = {
          ".DS_Store",
        },
      },
    },
  },
}
