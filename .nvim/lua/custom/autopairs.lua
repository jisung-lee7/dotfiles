local M = {
	"windwp/nvim-autopairs",
}

M.config = function()
	local cmp = require("cmp")
	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
	local autopairs = require("nvim-autopairs")
	local handlers = require("nvim-autopairs.completion.handlers")
	local setup = {
		check_ts = true,
		ts_config = {
			lua = { "string", "source" },
			javascript = { "string", "template_string" },
			java = false,
		},
		disable_filetype = { "TelescopePrompt", "spectre_panel" },
		fast_wrap = {
			map = "<M-e>",
			chars = { "{", "[", "(", '"', "'" },
			pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
			offset = 0, -- Offset from pattern match
			end_key = "$",
			keys = "qwertyuiopzxcvbnmasdfghjkl",
			check_comma = true,
			highlight = "PmenuSel",
			highlight_grey = "LineNr",
		},
	}

	autopairs.setup(setup)

	-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))

	cmp.event:on(
		"confirm_done",
		cmp_autopairs.on_confirm_done({
			filetypes = {
				["*"] = {
					["("] = {
						kind = {
							cmp.lsp.CompletionItemKind.Function,
							cmp.lsp.CompletionItemKind.Method,
						},
						---@param char string
						---@param item table item completion
						---@param bufnr number buffer number
						---@param rules table
						---@param commit_character table<string>
						handler = function(char, item, bufnr, rules, commit_character)
							-- Check if item.label contains a JSX.Element.
							if item.detail and string.match(item.detail, "JSX.Element") then
								-- Functions that return JSX.Element do not automatically create parentheses.
								return
							end
							-- Call the default handler.
							handlers["*"](char, item, bufnr, rules, commit_character)
						end,
					},
				},
			},
		})
	)
end

return M
