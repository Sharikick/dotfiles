return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			indent = {
				enable = true,
				disable = {},
			},

			ensure_installed = {
				"bash",
				"dockerfile",
				"go",
				"git_config",
				"git_rebase",
				"gitattributes",
				"gitcommit",
				"gitignore",
				"javascript",
				"json",
				"lua",
				"markdown",
				"toml",
				"typescript",
				"vim",
				"yaml",
				"python",
				"sql",
				"java",
				"xml",
				"c_sharp",
				"php",
				"html",
				"css",
			},

			sync_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			textobjects = {
				select = {
					enable = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",

						["ac"] = "@conditional.outer",
						["ic"] = "@conditional.inner",

						["ap"] = "@parameter.outer",
						["ip"] = "@parameter.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["]f"] = "@function.outer",
					},
					goto_previous_start = {
						["[f"] = "@function.outer",
					},
				},
			},
		})
	end,
}
