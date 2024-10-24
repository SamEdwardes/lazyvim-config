-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set some VS Code only keymaps
if vim.g.vscode then
  -- VSCode extension
  local vscode = require("vscode")

  -- Open VSCode file explorer
  vim.keymap.set({ "n" }, "<leader>e", function()
    vscode.action("workbench.view.explorer")
  end)

  -- Open VSCode file picker
  vim.keymap.set({ "n" }, "<leader>ff", function()
    vscode.action("workbench.action.quickOpen")
  end)

  -- Open VSCode file picker for recent files
  vim.keymap.set({ "n" }, "<leader>,", function()
    vscode.action("workbench.action.showAllEditors")
  end)

  -- Find in files
  vim.keymap.set({ "n" }, "<leader>sg", function()
    vscode.action("workbench.action.findInFiles")
  end)

  -- File pane ================================================================
  -- Open VSCode file picker for recent files
  -- vim.keymap.set({ "n" }, "<leader>,", function()
  --   vscode.with_insert(function()
  --     vscode.action("workbench.action.showAllEditors")
  --   end)
  -- end)
end
