-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

return {
  "neovim/nvim-lspconfig",
  opts = function()
    -- Set up django template LSP: https://github.com/fourdigits/django-template-lsp
    require("lspconfig").djlsp.setup({
      cmd = { "/Users/samedwardes/.local/bin/djlsp" },
      init_options = {
        djlsp = {
          -- django_settings_module = "<your.settings.module>"
          -- docker_compose_file = "docker-compose.yml",
          -- docker_compose_service = "django"
        },
      },
    })
  end,
}
