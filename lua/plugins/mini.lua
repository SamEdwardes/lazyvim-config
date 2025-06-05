return {
  {
    "echasnovski/mini.ai",
    vscode = true,
  },
  {
    "echasnovski/mini.comment",
    vscode = true,
  },
  {
    "echasnovski/mini.move",
    vscode = true,
  },
  {
    "echasnovski/mini.pairs",
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
    "echasnovski/mini.surround",
    vscode = true,
  },
}
