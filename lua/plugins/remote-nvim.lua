return {
  "amitds1997/remote-nvim.nvim",
  -- version = "0.3.11", -- Pin to GitHub releases
  branch = "main",
  dependencies = {
    "nvim-lua/plenary.nvim", -- For standard functions
    "MunifTanjim/nui.nvim", -- To build the plugin UI
    "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
  },
  config = true,
}
