-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.relativenumber = true
vim.o.scrolloff = 10

if lazyvim_docs then
  vim.g.lazyvim_python_lsp = "basedpyright"
  vim.g.lazyvim_python_ruff = "ruff"
end

if vim.g.neovide then
  vim.notify("opened in neovide loading specific settings to neovide", vim.log.levels.INFO)
  vim.o.guifont = "Iosevka Term:h14"
  vim.g.neovide_opacity = 0.8

  -- Function to update guifont
  local function update_guifont(increment)
    local current_size = tonumber(vim.o.guifont:match("h(%d+)"))
    if current_size then
      local new_size = current_size + increment
      vim.o.guifont = "Iosevka Term:h" .. new_size
    end
  end

  -- Ctrl -
  vim.keymap.set("n", "<C-->", function()
    update_guifont(1)
  end, { noremap = true, silent = false, desc = "Increase font size (by +1)" })

  -- Ctrl =
  vim.keymap.set("n", "<C-=>", function()
    update_guifont(-1)
  end, { noremap = true, silent = false, desc = "Decrease font size (by -1)" })
end

if vim.fn.has("win32") == 1 then
  vim.o.shell = "pwsh"
end
