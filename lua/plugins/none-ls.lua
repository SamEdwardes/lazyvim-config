return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")

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
  end,
}
