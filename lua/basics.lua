-- linenumbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.autoindent = true

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- undo
vim.opt.undofile = true

-- splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- commands
--:set autoread | :set syntax=logtalk | au CursorHold * checktime | call feedkeys("lh")

vim.api.nvim_create_user_command('Logtail',
	function()
		vim.opt.syntax = 'logtalk'

		vim.opt.autoread = true

		vim.api.nvim_create_autocmd("CursorHold", {
			pattern = "*",
			command = "checktime",
		})

		vim.api.nvim_feedkeys("lh", 'm', true)
	end, {})
