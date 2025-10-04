-- if os is windows return empty table
-- else return config that installs nil_ls and mason.nvim
--
if vim.fn.has("win32") == 1 then
  return {}
else
  return {
    -- "mason-org/mason.nvim",
    -- opts = function(_, opts)
    --   if type(opts.ensure_installed) == "table" then
    --     table.insert(opts.ensure_installed, "nil")
    --   else
    --     opts.ensure_installed = { "nil" }
    --   end
    -- end,
  }
end
