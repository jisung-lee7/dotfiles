local M = {
  "iamcco/markdown-preview.nvim",
  version = "*",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}

M.config = function()
  vim.cmd([[
    let g:mkdp_preview_options = {
      \ 'maid': { 'theme': 'light' }
    \ }
  ]])
end

return M
