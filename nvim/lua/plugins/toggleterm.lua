return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			-- Для открытия и закрытия терминала
			open_mapping = [[<C-\>]],

			-- Открыть терминал в режиме вставки
			insert_mappings = false,

			-- Тип терминала
			direction = "float",

			-- Настроки терминала для типа: Float
			float_opts = {
				-- Граница терминала
				border = "rounded",

				-- Ширина терминала
				width = 120,

				-- Высота терминала
				height = 30,

				--
				title_pos = "center",
			},
		})
	end,
}
