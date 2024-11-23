local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

return {
	"nvim-telescope/telescope.nvim",
	config = function()
		keymap("n", "<leader>ff", builtin.find_files, opts)
		keymap("n", "<leader>fg", builtin.live_grep, opts)
	end,
}
