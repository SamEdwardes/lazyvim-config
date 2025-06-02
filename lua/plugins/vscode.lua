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

  -- Find and replace
  vim.keymap.set({ "n", "v" }, "<leader>sr", function()
    -- Open the search section in the sidebar
    vscode.action("workbench.action.findInFiles", {
      args = {
        query = vim.fn.expand("<cword>"),
        replace = vim.fn.expand("<cword>"),
      },
    })
  end)

  -- Find in files
  vim.keymap.set({ "n" }, "<leader>sg", function()
    -- Open the command pallet with %
    vscode.action("workbench.action.quickTextSearch")
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
else
  -- Disable the built in pane navigtion
  -- Move to window using the <ctrl> hjkl keys
  vim.keymap.del("n", "<C-h>")
  vim.keymap.del("n", "<C-j>")
  vim.keymap.del("n", "<C-k>")
  vim.keymap.del("n", "<C-l>")
  -- Resize window using <ctrl> arrow keys
  vim.keymap.del("n", "<C-Up>")
  vim.keymap.del("n", "<C-Down>")
  vim.keymap.del("n", "<C-Left>")
  vim.keymap.del("n", "<C-Right>")

  -- recommended mappings
  -- resizing splits
  -- these keymaps will also accept a range,
  -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
  vim.keymap.set("n", "<C-Left>", require("smart-splits").resize_left)
  vim.keymap.set("n", "<C-Down>", require("smart-splits").resize_down)
  vim.keymap.set("n", "<C-Up>", require("smart-splits").resize_up)
  vim.keymap.set("n", "<C-Right>", require("smart-splits").resize_right)
  -- moving between splits
  vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
  vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
  vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
  vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
  -- vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous)
  -- swapping buffers between windows
  -- vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
  -- vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
  -- vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
  -- vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
end
