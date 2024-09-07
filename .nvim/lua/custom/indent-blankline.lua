local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
}

M.config = function()
  local indent_blank_line = require("ibl")
  local setup = {
    scope = {
      -- I don't care about scope. I just want to see the indent lines
      enabled = false,
    },
  }

  indent_blank_line.setup(setup)
end

return M
