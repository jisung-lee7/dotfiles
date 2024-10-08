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
    highlight CursorLine guifg=NONE guibg=#00334f
    highlight Visual guifg=NONE guibg=#30505f

    " render-markdown highlights
    highlight @markup.heading.1.markdown cterm=bold gui=bold guifg=#ff6800
    highlight @markup.heading.2.markdown cterm=bold gui=bold guifg=#ffd700
    highlight @markup.heading.3.markdown cterm=bold gui=bold guifg=#90ee90
    highlight @markup.heading.4.markdown cterm=bold gui=bold guifg=#87cefa
    highlight @markup.heading.5.markdown cterm=bold gui=bold guifg=#7b68ee
    highlight @markup.heading.6.markdown cterm=bold gui=bold guifg=#d8bfd8
    highlight RenderMarkdownH1Bg guibg=NONE cterm=bold
    highlight RenderMarkdownH2Bg guibg=NONE cterm=bold
    highlight RenderMarkdownH3Bg guibg=NONE cterm=bold
    highlight RenderMarkdownH4Bg guibg=NONE cterm=bold
    highlight RenderMarkdownH5Bg guibg=NONE cterm=bold
    highlight RenderMarkdownH6Bg guibg=NONE cterm=bold
    highlight RenderMarkdownCode guibg=NONE cterm=bold
    highlight RenderMarkdownCodeInline guibg=NONE cterm=bold
    " highlight RenderMarkdownBullet guifg=#ff9e64
    highlight RenderMarkdownLink guifg=#2F9D27
  ]])
end

return M
