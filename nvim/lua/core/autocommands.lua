vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.cmd([[
            keeppatterns %s/\s\+$//e
        ]])
	end,
	group = vim.api.nvim_create_augroup("TrimWhitespace", { clear = true }),
})

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
	callback = function()
		vim.opt.relativenumber = false
		vim.opt.cursorline = false
	end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	callback = function()
		vim.opt.relativenumber = true
		vim.opt.cursorline = true
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
	end,
})
