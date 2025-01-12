return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local format_opts = require("plugins.lsp.format")

		local formatting = null_ls.builtins.formatting -- to setup formatters
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		null_ls.setup({
			on_attach = format_opts.on_attach,
			sources = {
				formatting.stylua,
				formatting.gofumpt,
				formatting.goimports,
				formatting.phpcsfixer,
				formatting.xmllint,
				formatting.black,
				formatting.clang_format,

				diagnostics.cpplint,
				diagnostics.ruff,
				diagnostics.golangci_lint,
			},
		})
	end,
}
