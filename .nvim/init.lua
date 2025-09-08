-- this should be called first so we can use spec func
require "custom.launch"

require "custom.keymaps"
require "custom.options"
require "custom.autocommands"

spec "custom.colorscheme"

-- lsp
spec "plugins.lsp.mason"
spec "plugins.lsp.none-ls"
spec "plugins.lsp.lsp-signature"

spec "plugins.codesnap"
spec "plugins.whichkey"
spec "plugins.notify"
spec "plugins.typescript"
spec "plugins.comment"
spec "plugins.vimwiki"
spec "plugins.highlightyark"
spec "plugins.snacks"
spec "plugins.treesitter"
spec "plugins.nvim-tree"
spec "plugins.telescope"
spec "plugins.lualine"
-- spec "plugins.bufferline"
spec "plugins.gitsigns"
spec "plugins.floaterm"
spec "plugins.cmp"
spec "plugins.autopairs" -- this should be after cmp
spec "plugins.autotag"
spec "plugins.test"
spec "plugins.markdown.render-markdown"
spec "plugins.markdown.markdown-preview"
spec "plugins.bookmarks"
spec "plugins.nvim-scrollbar"
spec "plugins.ccc"

-- vim extra combinations start
spec "plugins.subversive"
spec "plugins.surround"

-- search and replace text
spec "plugins.spectre"

require "custom.lazy" -- this should be the last
