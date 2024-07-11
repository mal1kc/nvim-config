return {
  "anuvyklack/windows.nvim",
  opts = function()
    require("windows").setup()
  end,
  keys = {
    { "<C-w>z", "<cmd>WindowsMaximize<cr>" },
    { "<C-w>_", "<cmd>WindowsMaximizeVertically<cr>" },
    { "<C-w>|", "<cmd>WindowsMaximizeHorizontally<cr>" },
    { "<C-w>=", "<cmd>WindowsEqualize<cr>" },
  },
  dependencies = {
    "anuvyklack/middleclass",
  },
}
