-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- tabs
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnext<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

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

  -- Code actions ================================================================
  vim.keymap.set({ "n" }, "<leader>cs", function()
    vscode.action("outline.toggleVisibility")
  end)

  vim.keymap.set({ "n" }, "<leader>cr", function()
    vscode.action("editor.action.rename")
  end)

  -- File pane ================================================================
  -- Open VSCode file picker for recent files
  -- vim.keymap.set({ "n" }, "<leader>,", function()
  --   vscode.with_insert(function()
  --     vscode.action("workbench.action.showAllEditors")
  --   end)
  -- end)
end
