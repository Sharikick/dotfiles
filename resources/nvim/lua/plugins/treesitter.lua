local opts = {
    ensure_installed = { "bash", "c", "lua", "markdown", "vim", "vimdoc", "python", "go", "php", "phpdoc", "html", "css" },
    auto_install = true,
    sync_install = false,
    autotag = {
        enable = true,
    },

    indent = {
      enable = true
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    event = "VeryLazy",
    dependencies = {
        {
            "windwp/nvim-ts-autotag",
            ft = { "javascriptreact", "typescriptreact", "vue" }
        },
        {
            "nvim-treesitter/nvim-treesitter-context",
            opts = {
                enable = true,
                max_lines = 5,
                min_window_height = 0,
                line_numbers = true,
                multiline_threshold = 1,
                trim_scope = "outer",
                mode = "cursor",
                separator = "",
                zindex = 20,
            },
        },
    },
    opts = {
        compilers = { "clang", "gcc" },
    },
    config = function()
      vim.cmd [[highlight TreesitterContextBottom gui=underline guisp=Grey]]

      require("nvim-treesitter.configs").setup(opts)
    end
}
