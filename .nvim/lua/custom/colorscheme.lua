local M = {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
}

M.config = function()
  local gruvbox = require("gruvbox")
  local setup = {
    terminal_colors = true,
    transparent_mode = true,
  }

  gruvbox.setup(setup)

  vim.cmd([[
    " set the colorscheme and highlight here
    set background=dark
    colorscheme gruvbox

    " make background transparent
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight NvimTreeNormal guibg=NONE ctermbg=NONE
    highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
    highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
    highlight NvimTreeCursorLine guifg=#ef8d34
    highlight GitSignsCurrentLineBlame guifg=#ffffff
    highlight PmenuSel guibg=gray ctermbg=gray
    highlight CursorLine guifg=NONE guibg=#292e42

    " render-markdown highlights
    highlight @markup.heading.1.markdown cterm=bold gui=bold guifg=#ff6800
    highlight @markup.heading.2.markdown cterm=bold gui=bold guifg=#ffd700
    highlight @markup.heading.3.markdown cterm=bold gui=bold guifg=#90ee90
    highlight @markup.heading.4.markdown cterm=bold gui=bold guifg=#87cefa
    highlight @markup.heading.5.markdown cterm=bold gui=bold guifg=#7b68ee
    highlight @markup.heading.6.markdown cterm=bold gui=bold guifg=#d8bfd8
    highlight RenderMarkdownH1Bg guibg=#361a1a
    highlight RenderMarkdownH2Bg guibg=#362a1a
    highlight RenderMarkdownH3Bg guibg=#36361a
    highlight RenderMarkdownH4Bg guibg=#1a362a
    highlight RenderMarkdownH5Bg guibg=#1a2a36
    highlight RenderMarkdownH6Bg guibg=#2a1a36
    highlight RenderMarkdownBullet guifg=#ff9e64
  ]])
end

return M
