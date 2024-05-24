local M = {
  "rcarriga/nvim-notify"
}

M.config = function()
  local notify = require("notify")

  local setup = {
    background_colour = "#000000",
  }

  vim.notify = require("notify")
  notify.setup(setup)
end

return M
