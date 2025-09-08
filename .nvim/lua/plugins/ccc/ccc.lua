local M = {
  "uga-rosa/ccc.nvim",
}

M.config = function()
  local ccc = require "ccc"
  local setup = {
    highlighter = {
      -- auto_enable = true,
      -- lsp = false,
    },
  }

  ccc.setup(setup)
end

return M
