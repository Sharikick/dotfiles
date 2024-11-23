return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup({
			-- Каталог, в который устанавливаются пакеты
			install_root_dir = vim.fn.stdpath("data") .. "/mason",

			ui = {
				-- Проверка наличия новых версии при открытии :Mason
				check_outdated_packages_on_open = true,

				-- Граница окна
				border = "rounded",

				-- Ширина окна
				width = 0.8,

				-- Высота окна
				height = 0.8,

				-- Иконки
				icons = {
					-- Иконка для установленных пакетов
					package_installed = "✓",

					-- Иконка для пакетов, которые устанавливаются или находятся в очереди на установку
					package_pending = "➜",

					-- Иконка для неустановленных пакетов
					package_uninstalled = "✗",
				},
			},

			-- Горячие клавиши
			keymaps = {
				-- Для установки пакета под текущей позиции курсора
				install_package = "i",

				-- Для обновления пакета под текущей позиции курсора
				update_package = "u",

				-- Для проверки наличия обновления пакета под текущей позиции курсора
				check_package_version = "c",

				-- Для обновления всех установленных пакетов
				update_all_packages = "U",

				-- Для проверки того, какие установленные пакеты устарели
				check_outdated_packages = "C",

				-- Для удаления пакета
				uninstall_package = "X",
			},
		})
	end,
}
