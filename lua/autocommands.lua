vim.api.nvim_create_autocmd({ "CmdlineEnter" }, {
	group = vim.api.nvim_create_augroup("cmd-line-relnum-toggle", { clear = true }),
	callback = function()
		vim.wo.relativenumber = false
		vim.cmd [[ redraw ]]
	end
})
vim.api.nvim_create_autocmd({ "CmdlineLeave" }, {
	callback = function()
		vim.wo.relativenumber = true
		vim.cmd [[ redraw ]]
	end
})
vim.api.nvim_create_autocmd({ "BufWrite" }, {
	callback = function()
		vim.lsp.buf.format()
	end
})
