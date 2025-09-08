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
-- # No use recording
keymap("n", "q", "<Nop>", opts)

-- # Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- # Fast vertical move
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- # Fast vertical move
keymap("n", "<C-d>", "20j", opts)
keymap("n", "<C-u>", "20k", opts)

-- # Navigate tab
keymap("n", "J", ":tabprevious<CR>", opts)
keymap("n", "K", ":tabnext<CR>", opts)
keymap("n", "<<", ":-tabmove<CR>", opts)
keymap("n", ">>", ":+tabmove<CR>", opts)

-- # Clear search hl
keymap("n", "<escape>", ":nohlsearch<CR>", opts)

-- # Previous end of word
keymap("n", "B", "ge", opts)

-- ####### Visual mode
-- Stay in indent mode
keymap("i", "<S-Tab>", "<C-D>", opts)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- ####### Visual Block mode
-- # Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- ####### vim.cmd
vim.cmd [[
  " copy current file path to clipboard
  nnoremap <silent> <Leader>cp :let @+ = expand("%")<CR>

  " console log
  nnoremap <silent> <Leader>cl :put=['console.log(<C-r><C-w>);']<CR>-2==+
  xnoremap <silent> <Leader>cl y:<C-u> put=['console.log(<C-r>");']<CR>-2==+
  " nnoremap <silent> <Leader>cl :put=['console.log(`c.log ## <C-r><C-w> ##`, <C-r><C-w>);']<CR>-2==+
  " xnoremap <silent> <Leader>cl y:<C-u> put=['console.log(`c.log ## <C-r>" ##`, <C-r>");']<CR>-2==+

  " CodeSnap
  xnoremap <silent> <Leader>cc :CodeSnap<CR>
  xnoremap <silent> <Leader>cs :CodeSnapSave<CR>

  " Ccc
  nnoremap <silent> <Leader>cc :CccHighlighterToggle<CR>
  nnoremap <silent> <Leader>ccp :CccPick<CR>

  " replace
  nnoremap <Leader>rp :%s/<C-r><C-w>//g<Left><Left>
  nnoremap <Leader>rc :%s/<C-r><C-w>//gc<Left><Left><Left>
  xnoremap <Leader>rp y:%s/\V<C-r>=escape(@", '/\')<CR>//g<Left><Left>
  xnoremap <Leader>rc y:'<,'>%s/\V<C-r>=escape(@", '/\')<CR>//gc<Left><Left><Left>

  " vimwiki
  nnoremap <silent> <Leader>wt :tabedit /Users/jisunglee/jisung-lee-wiki/vimwiki/index.md<CR>

  " refresh
  nnoremap <Leader>rr :e<CR>:echo "Refresh"<CR>
]]
