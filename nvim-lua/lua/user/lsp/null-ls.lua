local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.gofmt.with({ extra_args = {} }),
		formatting.goimports.with({ extra_args = {} }),
		diagnostics.golangci_lint,

		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.rustywind.with({ extra_args = {} }),

		formatting.stylua.with({ extra_args = { "--indent-type", "Spaces", "--indent-width", "2" } }),
	},
})
