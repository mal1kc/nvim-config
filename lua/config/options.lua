-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  vim.notify("opened in neovide loading specific settings to neovide", vim.log.levels.INFO)
  vim.o.guifont = "Iosevka Term:h14"
end
