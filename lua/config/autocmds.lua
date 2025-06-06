-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- ============================================================================
-- Disable spell check on markdown by default
-- ============================================================================
-- https://github.com/LazyVim/LazyVim/discussions/392
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    if vim.g.vscode then
      vim.opt_local.spell = false
    else
      vim.opt_local.spell = true
    end
  end,
})

-- ============================================================================
-- Ignore current line for basedpyright
-- ============================================================================
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Check if it's basedpyright
    if client and client.name == "basedpyright" then
      -- Create a custom code action
      vim.api.nvim_buf_create_user_command(args.buf, "PyrightIgnore", function()
        local row = vim.api.nvim_win_get_cursor(0)[1] - 1
        local diagnostics = vim.diagnostic.get(0, { lnum = row })

        if #diagnostics == 0 then
          vim.notify("No diagnostics on current line", vim.log.levels.INFO)
          return
        end

        -- Collect all error codes
        local codes = {}
        for _, diagnostic in ipairs(diagnostics) do
          if diagnostic.code then
            table.insert(codes, diagnostic.code)
          end
        end

        if #codes == 0 then
          vim.notify("No diagnostic codes found", vim.log.levels.INFO)
          return
        end

        -- Get current line
        local line = vim.api.nvim_buf_get_lines(0, row, row + 1, false)[1]

        -- Create the ignore comment
        local ignore_comment = "  # pyright: ignore[" .. table.concat(codes, ", ") .. "]"

        -- Check if line already has a pyright ignore comment
        if line:match("# pyright: ignore") then
          -- Replace existing comment
          line = line:gsub("# pyright: ignore%[?[^%]]*%]?", ignore_comment:match("^%s*(.*)"))
        else
          -- Append to line
          line = line .. ignore_comment
        end

        -- Set the modified line
        vim.api.nvim_buf_set_lines(0, row, row + 1, false, { line })
      end, { desc = "Add pyright ignore comment for current line" })
    end
  end,
})

-- ============================================================================
-- Print variable under cursor
-- ============================================================================
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.api.nvim_buf_create_user_command(args.buf, "PrintVariableUnderCursor", function() end, { desc = "" })
  end,
})
