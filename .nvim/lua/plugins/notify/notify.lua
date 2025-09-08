local M = {
  "rcarriga/nvim-notify",
  version = "*",
}

M.config = function()
  local notify = require "notify"

  local setup = {
    background_colour = "#000000",
  }

  -- hide 'No information available'
  local banned_messages = { "No information available" }
  vim.notify = function(msg, ...)
    for _, banned in ipairs(banned_messages) do
      if msg == banned then
        return
      end
    end
    return require "notify" (msg, ...)
  end

  -- vim.notify = require("notify")
  notify.setup(setup)
end

return M
