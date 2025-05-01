-- use `vim.keymap.set` instead
local map = vim.keymap.set

map("i", "<C-d>", function()
  local new_text = vim.fn.input("Replace with?: ")
  local cmd = "normal! *Ncgn" .. new_text
  vim.cmd(cmd)
end, { desc = "replace current word" })
