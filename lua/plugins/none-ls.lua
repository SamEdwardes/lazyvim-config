return {
  "nvimtools/none-ls.nvim",
  -- No longer needed. If you want to use must enabled the related extra.
  -- Instead nvim-lspconfig and conform are used.
  enabled = false,
  opts = function(_, opts)
    local nls = require("null-ls")

    -- pyright
    local pyright_ignore_action = {
      method = nls.methods.CODE_ACTION,
      filetypes = { "python" },
      generator = {
        fn = function()
          return {
            {
              title = "Add Pyright Ignore Comment",
              action = function()
                vim.cmd("PyrightIgnore")
              end,
            },
          }
        end,
      },
    }
    nls.register(pyright_ignore_action)

    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.diagnostics.markdownlint_cli2,
    })
  end,
}
