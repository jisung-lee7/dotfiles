local M = {
  "lewis6991/gitsigns.nvim",
  version = "*",
}

M.config = function()
  local gitsigns = require "gitsigns"
  local setup = {
    signs = {
      add = { text = "|" },
      change = { text = "|" },
      delete = { text = "-" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
    },
    signcolumn = true,
    numhl = true,
    linehl = false,
    word_diff = false,
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    attach_to_untracked = true,
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 250,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,
    max_file_length = 40000,
    preview_config = {
      -- Options passed to nvim_open_win
      border = "single",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  }

  gitsigns.setup(setup)

  vim.api.nvim_set_hl(0, "GitSignsAdd", { link = "DiffAdd" })
  vim.api.nvim_set_hl(0, "GitSignsChange", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { link = "DiffDelete" })
  vim.api.nvim_set_hl(0, "GitSignsChangedelete", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "GitSignsTopdelete", { link = "DiffDelete" })
  vim.api.nvim_set_hl(0, "GitSignsAddLn", { link = "DiffAdd" })
  vim.api.nvim_set_hl(0, "GitSignsChangeLn", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { link = "DiffDelete" })
  vim.api.nvim_set_hl(0, "GitSignsChangedeleteLn", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "GitSignsTopdeleteLn", { link = "DiffDelete" })
  vim.api.nvim_set_hl(0, "GitSignsAddNr", { link = "DiffAdd" })
  vim.api.nvim_set_hl(0, "GitSignsChangeNr", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { link = "DiffDelete" })
  vim.api.nvim_set_hl(0, "GitSignsChangedeleteNr", { link = "DiffChange" })
  vim.api.nvim_set_hl(0, "GitSignsTopdeleteNr", { link = "DiffDelete" })
end

return M
