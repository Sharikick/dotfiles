local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
	"nvim-telescope/telescope.nvim",
	config = function()
		local builtin = require("telescope.builtin")

		keymap("n", "<leader>ff", builtin.find_files, opts)
		keymap("n", "<leader>fg", builtin.live_grep, opts)
	end,
}
