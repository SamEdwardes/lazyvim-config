return {
  {
    "nvim-mini/mini.ai",
    vscode = true,
  },
  {
    "nvim-mini/mini.comment",
    vscode = true,
  },
  {
    "nvim-mini/mini.move",
    vscode = true,
  },
  {
    "nvim-mini/mini.pairs",
    vscode = true,
    opts = {
      modes = { insert = true, command = true, terminal = true },
      -- skip autopair when next character is one of these
      -- skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      skip_next = false,
      -- skip autopair when the cursor is inside these treesitter nodes
      -- skip_ts = { "string" },
      skip_ts = false,
      -- skip autopair when next character is closing pair
      -- and there are more closing pairs than opening pairs
      skip_unbalanced = true,
      -- better deal with markdown code blocks
      markdown = true,
    },
  },
  {
    "nvim-mini/mini.surround",
    vscode = true,
  },
}
