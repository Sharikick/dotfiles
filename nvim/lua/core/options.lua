local options = {
	number = true, -- Пронумеровать строки
	relativenumber = true, -- Пронумеровать строки относительно курсора
	expandtab = true, -- Заменяет таб на пробелы
	tabstop = 4, -- Размер табуляции равен 4 пробелам
	shiftwidth = 4,
	autoindent = true, -- Включает автоматическое отступы при новой строке
	cursorline = true, -- Выделить текущую строку
	laststatus = 0, --
	showcmd = false, --
	ruler = false, --
	showmode = false, -- Убрать надпись режимов
	scrolloff = 15, -- Определяет минимальное количество строк, которое должно оставаться видимым сверху и снизу от текущей строки при прокрутке
	clipboard = "unnamedplus", -- Один буфер обмена с внешним миром
	mouse = "", -- Отключить мышку
	encoding = "UTF-8", -- Кодировка UTF-8
	ignorecase = true, -- Делает поиск без учета регистра
	smartcase = true, -- Если в поиске есть хотя бы одна заглавная буква, то поиск будет учитывать регистр
	swapfile = false, -- Отключает создание swap-файлов
}

if vim.g.neovide == true then
	vim.opt.guifont = "MonaSpiceRn Nerd Font:h16"
	vim.g.neovide_fullscreen = true
end

for name, value in pairs(options) do
	vim.opt[name] = value
end
