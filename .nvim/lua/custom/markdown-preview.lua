local M = {
  "iamcco/markdown-preview.nvim",
  build = "cd app && yarn install",
}

M.config = function()
  vim.cmd([[
    let g:mkdp_preview_options = {
      \ 'maid': { 'theme': 'light' }
    \ }
  ]])
end

return M
