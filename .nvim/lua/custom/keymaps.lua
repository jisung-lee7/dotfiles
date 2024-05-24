local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- ####### Normal mode

-- # Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- # Fast vertical move
keymap("n", "<C-d>", "30j", opts)
keymap("n", "<C-u>", "30k", opts)

-- # Navigate tab
keymap("n", "J", ":tabprevious<CR>", opts)
keymap("n", "K", ":tabnext<CR>", opts)
keymap("n", "<<", ":-tabmove<CR>", opts)
keymap("n", ">>", ":+tabmove<CR>", opts)

-- ####### Visual mode

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- ####### Visual Block mode
-- # Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- ####### Telescope map
keymap("n", "<Leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>rg", ":Telescope live_grep<CR>", opts)
keymap("v", "<Leader>rg", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", opts)

-- ####### vim.cmd
vim.cmd([[
  " copy current file path to clipboard
  nnoremap <Leader>cp :let @+ = expand("%")<CR>

  " console log
  nnoremap <Leader>cl :silent put=['console.log(\"<C-r><C-w>\", <C-r><C-w>);']<CR>-2==+
  xnoremap <Leader>cl y:<C-u>silent put=['console.log(\"<C-r>"\", <C-r>");']<CR>-2==+

  " replace
  nnoremap <Leader>rp :%s/<C-r><C-w>//g<Left><Left>
  nnoremap <Leader>rc :%s/<C-r><C-w>//gc<Left><Left><Left>
  xnoremap <Leader>rp y:%s/\V<C-r>=escape(@", '/\')<CR>//g<Left><Left>
  xnoremap <Leader>rc y:'<,'>%s/\V<C-r>=escape(@", '/\')<CR>//gc<Left><Left><Left>
]])
