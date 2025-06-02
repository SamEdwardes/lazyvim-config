-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete some defaults from LazyVim
-- Delete explorer defaults
vim.keymap.del("n", "<leader>e")
vim.keymap.del("n", "<leader>E")

-- Moving up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, desc = "Remap page down to move cursor to middle" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, desc = "Remap page up to move cursor to middle" })

-- Searching
vim.keymap.set("n", "n", "nzzzv", { noremap = true, desc = "When searching move selection to middle" })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, desc = "When searching move selection to middle" })

-- Tabs
vim.keymap.set("n", "<leader><tab>L", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader><tab>s", "<cmd>FzfLua tabs<cr>", { desc = "Tabs Picker" })
vim.keymap.set("n", "<leader>f<tab>", "<cmd>FzfLua tabs<cr>", { desc = "Tabs Picker" })

-- Windows
vim.keymap.set("n", "<leader>wr", "<C-W>r", { desc = "Rotate Window" })

-- Coding/LSP
vim.keymap.set("n", "<leader>ci", "<cmd>PyrightIgnore<cr>", { desc = "Add pyright ignore comment" })
