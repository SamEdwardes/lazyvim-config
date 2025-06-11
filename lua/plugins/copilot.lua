return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        auto_trigger = false,
        -- Note this doesn't really work well when I have ghost text disabled in blink
        keymap = {
          next = "<C-0>",
          prev = "<C-9>",
        },
      },
    },
    keys = {
      {

        "<leader>as",
        function()
          vim.cmd("Copilot enable")
          vim.notify("Copilot suggestions enabled", vim.log.levels.INFO)
        end,
        desc = "Enable Copilot suggestions (Copilot)",
      },
      {
        "<leader>aS",
        function()
          vim.cmd("Copilot disable")
          vim.notify("Copilot suggestions disabled", vim.log.levels.INFO)
        end,
        desc = "Disable Copilot suggestions (Copilot)",
      },
      {
        "<leader>a_",
        function()
          require("copilot.panel").toggle()
        end,
        desc = "Toggle Copilot panel (Copilot)",
      },
      {
        "<C-.>",
        function()
          require("copilot.panel").toggle()
        end,
        mode = { "i", "n", "v" },
        desc = "Toggle Copilot panel from insert mode (Copilot)",
      },
    },
  },
}
