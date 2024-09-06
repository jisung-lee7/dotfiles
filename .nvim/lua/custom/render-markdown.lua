local M = {
	"MeanderingProgrammer/render-markdown.nvim",
	opts = {},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}

M.config = function()
	local render_markdown = require("render-markdown")
	local setup = {
		file_types = { "markdown" },
		render_modes = { "n", "v", "i", "c" },
		indent = {
			enabled = false,
			per_level = 0,
		},
		heading = {
			position = "inline",
		},
		checkbox = {
			unchecked = { icon = "🌑", highlight = "RenderMarkdownUnchecked" },
			checked = { icon = "🌕", highlight = "RenderMarkdownChecked" },
			custom = {
				inprogress_1 = { raw = "[.]", rendered = "🌘", highlight = "RenderMarkdownTodo" },
				inprogress_2 = { raw = "[o]", rendered = "🌗", highlight = "RenderMarkdownTodo" },
				inprogress_3 = { raw = "[O]", rendered = "🌖", highlight = "RenderMarkdownTodo" },
			},
		},
	}

	render_markdown.setup(setup)

	vim.treesitter.language.register("markdown", "vimwiki")
end

return M
