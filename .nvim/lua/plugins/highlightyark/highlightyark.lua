local M = {
  "machakann/vim-highlightedyank",
  version = "*",
}

M.config = function()
  vim.cmd [[
    let g:highlightedyank_highlight_duration = 500
  ]]
end

return M
