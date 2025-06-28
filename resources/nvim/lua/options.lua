-------------------------
-- 1. Global Settings
-------------------------

vim.g.have_nerd_font = true  -- Поддержка Nerd шрифтов

-------------------------
-- 2. Editor Behavior
-------------------------

-- File handling
vim.opt.encoding = "UTF-8"
vim.opt.autowrite = true   -- Автоматически сохраняет файл при переключении буферов
vim.opt.swapfile = false   -- Отключает создание swap-файлов
vim.opt.backup = false     -- Отключает создание резервных копий
vim.opt.undofile = true    -- Включает сохранение истории отмены действий
vim.opt.undolevels = 10000 -- Устанавливает максимальное количество шагов отмены (undo), которые Neovim запоминает в текущей сессии
vim.opt.undoreload = 10000 -- Определяет, сколько строк файла сохраняется для восстановления undo-истории

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-------------------------
-- 3. Display & UI
-------------------------

-- Appearance
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.laststatus = 0
vim.opt.ruler = false
vim.opt.cmdheight = 0
vim.opt.showtabline = 0

-------------------------
-- 4. Text Editing
-------------------------

-- Indentation
vim.opt.shiftround = true
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.shiftwidth = 4      -- Количество пробелов для автоматических отступов (>>, <<)
vim.opt.tabstop = 4         -- 1 таб = 2 пробела (визуальное отображение)
vim.opt.smartindent = false -- "Умные" отступы (автоматически добавляет отступы в новых строках)

-- Wrapping
vim.opt.wrap = true        -- Включает перенос длинных строк (не обрезает их)
vim.opt.linebreak = true   -- Переносит только по границам слов (не рвёт слова)
vim.opt.breakindent = true -- Сохраняет отступ для перенесённых строк

-- Completion
vim.opt.completeopt = "menu,menuone,noselect" -- Поведение меню дополнения
vim.opt.pumheight = 10                        -- Максимум 10 элементов в меню
vim.opt.pumblend = 10                         -- 10% прозрачности меню дополнения

-------------------------
-- 5. Navigation & Search
-------------------------

vim.opt.scrolloff = 4              -- Минимальное количество строк сверху/снизу при скроллинге
vim.opt.sidescrolloff = 8          -- Минимальное количество колонок слева/справа при горизонтальном скроллинге
vim.opt.mouse = "a"                -- Включение мыши во всех режимах (a = all)
vim.opt.ignorecase = true          -- Игнорировать регистр при поиске
vim.opt.smartcase = true           -- Учитывать регистр, если в запросе есть заглавные буквы
vim.opt.grepformat = "%f:%l:%c:%m" -- Формат вывода (файл:строка:колонка:сообщение)
vim.opt.grepprg = "rg --vimgrep"   -- Использование ripgrep вместо стандартного grep


-------------------------
-- 6. Advanced Features
-------------------------
---
-- Performance
vim.opt.updatetime = 200 -- Частота автосохранения (мс)
vim.opt.timeoutlen = 300 -- Задержка для комбинаций клавиш (мс)

-------------------------
-- 8. Custom Commands
-------------------------

vim.cmd([[
  cnoreabbrev Wq wq
  cnoreabbrev wQ wq
  cnoreabbrev WQ wq
  cnoreabbrev W w
  cnoreabbrev Q q
]])
