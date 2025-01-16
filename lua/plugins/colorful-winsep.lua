-- stylua: ignore
if true then return {} end

return {
  "nvim-zh/colorful-winsep.nvim",
  config = true,
  event = { "WinLeave" },
  opts = {
    only_line_seq = false,
  },
}
