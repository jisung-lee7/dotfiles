vim.cmd [[
  augroup _markdown
    autocmd!
    autocmd FileType markdown nmap <buffer> <Space> :VimwikiToggleListItem<CR>
    autocmd FileType markdown vmap <buffer> <Space> :VimwikiToggleListItem<CR>
  augroup end
]]
