local M = {
  "svermeulen/vim-subversive",
  version = "*",
}

M.config = function()
  vim.cmd [[
    nmap s <plug>(SubversiveSubstitute)
  ]]
end

return M
