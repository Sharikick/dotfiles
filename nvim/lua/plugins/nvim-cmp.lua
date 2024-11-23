return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			mapping = {
				["<C-n>"] = cmp.mapping.select_next_item(), -- Перейти к следующему элементу
				["<C-p>"] = cmp.mapping.select_prev_item(), -- Перейти к предыдущему элементу
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Подтвердить выбор
			},
			sources = {
				{ name = "nvim_lsp" }, -- Источник LSP
				{ name = "buffer" }, -- Источник буфера
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
		})
	end,
}
