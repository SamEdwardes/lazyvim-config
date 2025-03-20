-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable concealing by default
-- https://github.com/LazyVim/LazyVim/discussions/269
vim.wo.conceallevel = 0

-- Custom logic for defining the root dir. Cwd is the directory
-- you open neo vim in. Root dir is determined by this logic.
-- https://github.com/LazyVim/LazyVim/discussions/5519
vim.g.root_spec = { { ".git", "lua" }, "lsp", "cwd" }

-- Custom options when in VS Code
if vim.g.vscode then
  print("I am in VS Code!")
end
