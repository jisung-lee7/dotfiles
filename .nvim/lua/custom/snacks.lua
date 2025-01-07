local M = {
	"folke/snacks.nvim",
	version = "*",
}
M.config = function()
	local snacks = require("snacks")
	local setup = {
		indent = {
			priority = 1,
			enabled = true,
			char = "│",
			only_scope = false, -- only show indent guides of the scope
			only_current = false, -- only show indent guides in the current window
			hl = "SnacksIndent", ---@type string|string[] hl groups for indent guides
			animate = {
				enabled = false,
			},
		},
		input = {},
		-- notifier = {},
	}
	snacks.setup(setup)
end
return M
