---@module 'snacks'

-- Vendored in from:
-- https://github.com/LazyVim/LazyVim/blob/25abbf546d564dc484cf903804661ba12de45507/lua/lazyvim/plugins/extras/util/chezmoi.lua#L1
local pick_chezmoi = function()
  if LazyVim.pick.picker.name == "telescope" then
    require("telescope").extensions.chezmoi.find_files()
  elseif LazyVim.pick.picker.name == "fzf" then
    local fzf_lua = require("fzf-lua")
    local actions = {
      ["enter"] = function(selected)
        fzf_lua.actions.vimcmd_entry("ChezmoiEdit", selected, { cwd = os.getenv("HOME") })
      end,
    }
    fzf_lua.files({ cmd = "chezmoi managed --include=files,symlinks", actions = actions })
  elseif LazyVim.pick.picker.name == "snacks" then
    local results = require("chezmoi.commands").list({
      args = {
        "--path-style",
        "absolute",
        "--include",
        "files",
        "--exclude",
        "externals",
      },
    })
    local items = {}

    for _, czFile in ipairs(results) do
      table.insert(items, {
        text = czFile,
        file = czFile,
      })
    end

    ---@type snacks.picker.Config
    local opts = {
      items = items,
      confirm = function(picker, item)
        picker:close()
        require("chezmoi.commands").edit({
          targets = { item.text },
          args = { "--watch" },
        })
      end,
    }
    Snacks.picker.pick(opts)
  end
end

return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    keys = {
      {
        "<leader>uH", -- u=UI, H=home
        function()
          Snacks.dashboard()
        end,
        desc = "Open Snacks dashboard",
      },
    },
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "p",
              desc = "Projects",
              action = "<leader>sP",
            },
            {
              icon = " ",
              key = "c",
              desc = "Nvim Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = '~/.config/nvim'})",
            },
            {
              icon = " ",
              key = "C",
              desc = "~/.config Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = '~/.config'})",
            },
            {
              icon = " ",
              key = "z",
              desc = "Chezmoi Config",
              action = pick_chezmoi,
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
        sections = {
          { section = "header" },
          { section = "keys", padding = 2 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
