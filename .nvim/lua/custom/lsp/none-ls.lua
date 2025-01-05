local M = {
	"nvimtools/none-ls.nvim",
}

M.config = function()
	local null_ls = require("null-ls")
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
	local formatting = null_ls.builtins.formatting
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
	local setup = {
		debug = false,
		sources = {
			formatting.stylua,
			formatting.prettier,
		},
		on_attach = function(client, bufnr)
			if not bufnr then
				return
			end

			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ async = false })
					end,
				})
			end
		end,
	}

	-- https://github.com/prettier-solidity/prettier-plugin-solidity
	-- npm install --save-dev prettier prettier-plugin-solidity
	null_ls.setup(setup)
end

return M
