return {
  "folke/snacks.nvim",
  dependencies = {
    { 'echasnovski/mini.icons', version = '*' }
  },
  opts = {
    terminal = {
      shell = "bash",
      win = {
        border = "rounded",
        relative = "editor",
        position = "float",
      },
    },

    picker = {
      sources = {
        explorer = {
          auto_close = true,
        }
      }
    },
  },
  keys = {
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Поиск файлов" },
    { "<leader>g", function() Snacks.picker.grep() end, desc = "Искать текст в файлах" },
    { "<leader>h", function() Snacks.picker.command_history() end, desc = "История команд" },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "История уведомлений" },
    { "<leader>e", function() Snacks.explorer() end, desc = "Файловый менеджер" },

    -- Find
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Переключение между открытыми буферами" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Файлы конфигурации" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Поиск файлов" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Поиск файлов, отслеживаемые Git" },

    -- Other
    { "<c-/>", function() Snacks.terminal() end, mode = { "n", "t" }, desc = "Toggle Terminal" },

    -- LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
  }
}
