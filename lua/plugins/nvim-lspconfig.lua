return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      -- Django Template LSP: https://github.com/fourdigits/django-template-lsp
      djlsp = {},
      -- Markdown
      marksman = {},
    },
  },
}
