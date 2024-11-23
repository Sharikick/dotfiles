return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local lsp_config = require("plugins.lsp.opts")

		lspconfig.pyright.setup({
			capabilities = lsp_config.capabilities,
			on_attach = lsp_config.on_attach,
			settings = {},
		})

		lspconfig.omnisharp.setup({
			cmd = { "dotnet", "/home/tsyden/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },
			capabilities = lsp_config.capabilities,
			enable_import_completion = true,
			organize_imports_on_format = true,
			enable_roslyn_analyzers = true,
			root_dir = function()
				return vim.loop.cwd() -- current working directory
			end,
		})

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		lspconfig.intelephense.setup({
			capabilities = lsp_config.capabilities,
			filetypes = { "php" },
			on_attach = lsp_config.on_attach,
			root_dir = function()
				return vim.loop.cwd()
			end,
			settings = {
				intelephense = {
					files = {
						maxSize = 5000000,
					},
				},
			},
			on_init = function(client)
				client.server_capabilities.documentFormattingProvider = false
			end,
		})

		lspconfig.gopls.setup({
			cmd = { "gopls", "serve" },
			on_attach = lsp_config.on_attach,
			capabilities = lsp_config.capabilities,
			filetypes = { "go", "go.mod" },
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
						shadow = true,
					},
					staticcheck = true,
				},
			},
		})
	end,
}
