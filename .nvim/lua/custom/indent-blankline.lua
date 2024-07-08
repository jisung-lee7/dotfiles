local M = {
	"lukas-reineke/indent-blankline.nvim",
}

M.config = function()
	local ibl = require("ibl")
	local setup = {
		-- scope = { show_start = true, show_end = true },
	}

	ibl.setup(setup)
end

return M
