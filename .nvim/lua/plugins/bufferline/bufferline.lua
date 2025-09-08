local M = {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

M.config = function()
  local bufferline = require "bufferline"

  local setup = {
    options = {
      mode = "buffers",
      numbers = "ordinal",
      indicator = {
        icon = "▎",
        style = "underline",
      },
      diagnostics = "nvim_lsp",
    },
  }
  bufferline.setup(setup)
end

return M
