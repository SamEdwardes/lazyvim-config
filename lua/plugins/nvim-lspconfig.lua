return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    inlay_hints = { enabled = false },
    servers = {
      -- Django Template LSP: https://github.com/fourdigits/django-template-lsp
      djlsp = {},
    },
    -- you can do any additional lsp server setup here
    -- return true if you don't want this server to be setup with lspconfig
    ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
    setup = {
      djslp = function(_, opts)
        require("lspconfig").djlsp.setup({
          cmd = { "djlsp" },
        })
      end,
      -- Specify * to use this function as a fallback for any server
      -- ["*"] = function(server, opts) end,
    },
  },
}
