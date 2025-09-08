local M = {
  "mistricky/codesnap.nvim",
  version = "*",
  build = "make",
}

M.config = function()
  local codesnap = require "codesnap"
  local setup = {
    mac_window_bar = false,
    save_path = "~/Pictures",
    has_breadcrumbs = true,
    bg_color = "#737373",
    watermark = "",
    has_line_number = true,
  }

  codesnap.setup(setup)
end

return M
