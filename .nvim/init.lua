-- this should be called first so we can use spec func
require("custom.launch")

require("custom.keymaps")
require("custom.options")
require("custom.autocommands")

-- lsp
spec("custom.lsp.mason")
spec("custom.lsp.none-ls")
spec("custom.lsp.lsp-signature")

spec("custom.codesnap")
spec("custom.whichkey")
spec("custom.notify")
spec("custom.typescript")
spec("custom.colorscheme")
spec("custom.comment")
spec("custom.vimwiki")
spec("custom.highlightyark")
-- spec("custom.indent-blankline")
spec("custom.snacks")
spec("custom.treesitter")
spec("custom.nvim-tree")
spec("custom.telescope")
spec("custom.lualine")
spec("custom.gitsigns")
spec("custom.floaterm")
spec("custom.cmp")
spec("custom.autopairs") -- this should be after cmp
spec("custom.autotag")
spec("custom.test")
spec("custom.markdown-preview")
spec("custom.render-markdown")
spec("custom.bookmarks")
spec("custom.nvim-scrollbar")
-- spec("custom.nvim-colorizer")
spec("custom.ccc")

-- vim extra combinations start
spec("custom.subversive")
spec("custom.surround")

-- search and replace text
spec("custom.spectre")

require("custom.lazy") -- this should be the last
