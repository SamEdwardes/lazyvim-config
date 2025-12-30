---@module 'snacks'

return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    keys = {
      -- Remap <leader><space> to smart picker, instead of file picker
      {
        "<leader><space>",
        function()
          Snacks.picker.smart({ root = false })
        end,
        desc = "Find Files (cwd)",
      },
      -- Remap <leader>, to a cleaner view that only shows the file name.
      -- I found that the defult Snacks.picker.buffers showed too much detail
      {
        "<leader>,",
        function()
          Snacks.picker.buffers({ format = "file" })
        end,
        desc = "Buffers",
      },
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      -- Override projects
      {
        "<leader>sP",
        function()
          Snacks.dashboard.pick("projects", { dev = { "~/projects/personal", "~/projects/posit" } })
        end,
        desc = "Find builtin Snacks pickers",
      },
      -- Find all pickers:lua Snacks.dashboard.pick('projects', { dev = { '~/projects/personal', '~/projects/posit' } })
      {
        "<leader>sp",
        function()
          Snacks.picker()
        end,
        desc = "Find builtin Snacks pickers",
      },
    },
    opts = {
      picker = {
        matcher = {
          history_bonus = true,
          frecency = true,
        },
        win = {
          -- input window
          input = {
            keys = {
              -- Remap all of the keys assigned to "Option": <a- > because I use option for
              -- Aerospace on my mac.
              ["<c-D>"] = { "inspect", mode = { "n", "i" } },
              ["<c-F>"] = { "toggle_follow", mode = { "i", "n" } },
              ["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } },
              ["<c-i>"] = { "toggle_ignored", mode = { "i", "n" } },
              ["<c-m>"] = { "toggle_maximize", mode = { "i", "n" } },
              ["<c-P>"] = { "toggle_preview", mode = { "i", "n" } },
              ["<c-w>"] = { "cycle_win", mode = { "i", "n" } },
              -- Here are all the defaults that start with control. May
              -- need to change some to avoid conflicts
              ["<c-a>"] = { "select_all", mode = { "n", "i" } },
              ["<c-b>"] = { "preview_scroll_up", mode = { "i", "n" } },
              ["<c-d>"] = { "list_scroll_down", mode = { "i", "n" } },
              ["<c-f>"] = { "preview_scroll_down", mode = { "i", "n" } },
              ["<c-g>"] = { "toggle_live", mode = { "i", "n" } },
              ["<c-j>"] = { "list_down", mode = { "i", "n" } },
              ["<c-k>"] = { "list_up", mode = { "i", "n" } },
              ["<c-n>"] = { "list_down", mode = { "i", "n" } },
              ["<c-p>"] = { "list_up", mode = { "i", "n" } },
              ["<c-q>"] = { "qflist", mode = { "i", "n" } },
              ["<c-s>"] = { "edit_split", mode = { "i", "n" } },
              ["<c-t>"] = { "tab", mode = { "n", "i" } },
              ["<c-u>"] = { "list_scroll_up", mode = { "i", "n" } },
              ["<c-v>"] = { "edit_vsplit", mode = { "i", "n" } },
            },
          },
        },
        -- result list window
        list = {
          keys = {
            -- Remap all of the keys assigned to "Option": <a- > because I use option for
            -- Aerospace on my mac.
            ["<c-D>"] = "inspect",
            ["<c-F>"] = "toggle_follow",
            ["<c-h>"] = "toggle_hidden",
            ["<c-i>"] = "toggle_ignored",
            ["<c-m>"] = "toggle_maximize",
            ["<c-P>"] = "toggle_preview",
            ["<c-w>"] = "cycle_win",
            -- Here are all the defaults that start with control. May
            -- need to change some to avoid conflicts
            ["<c-a>"] = "select_all",
            ["<c-b>"] = "preview_scroll_up",
            ["<c-d>"] = "list_scroll_down",
            ["<c-f>"] = "preview_scroll_down",
            ["<c-j>"] = "list_down",
            ["<c-k>"] = "list_up",
            ["<c-n>"] = "list_down",
            ["<c-p>"] = "list_up",
            ["<c-q>"] = "qflist",
            ["<c-s>"] = "edit_split",
            ["<c-t>"] = "tab",
            ["<c-u>"] = "list_scroll_up",
            ["<c-v>"] = "edit_vsplit",
            ["<c-w>H"] = "layout_left",
            ["<c-w>J"] = "layout_bottom",
            ["<c-w>K"] = "layout_top",
            ["<c-w>L"] = "layout_right",
            ["?"] = "toggle_help_list",
            ["G"] = "list_bottom",
            ["gg"] = "list_top",
            ["i"] = "focus_input",
            ["j"] = "list_down",
            ["k"] = "list_up",
            ["q"] = "close",
            ["zb"] = "list_scroll_bottom",
            ["zt"] = "list_scroll_top",
            ["zz"] = "list_scroll_center",
          },
        },
      },
    },
  },
}
