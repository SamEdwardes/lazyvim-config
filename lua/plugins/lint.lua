local HOME = os.getenv("HOME")

return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters_by_ft = {
      markdown = { "markdownlint-cli2" }, -- Ensure only cli2 is used
    },
    linters = {
      -- markdownlint = false,
      ["markdownlint-cli2"] = {
        args = { "--config", HOME .. "/.markdownlint-cli2.yaml", "--" },
      },
    },
  },
}
