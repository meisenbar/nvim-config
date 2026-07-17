local neotest = require('neotest');

vim.keymap.set('n', '<leader>tr', neotest.run.run, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tf', function() neotest.run.run(vim.fn.expand("%")) end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ts', neotest.run.stop, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ta', neotest.run.attach, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tp', neotest.summary.toggle, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>to', neotest.output_panel.toggle, { noremap = true, silent = true })

vim.api.nvim_set_keymap(
	"n",
	"<leader>twr",
	"<cmd>lua require('neotest').run.run({ vitestCommand = 'npx vitest --watch' })<cr>",
	{ desc = "Run Watch" }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>twf",
	"<cmd>lua require('neotest').run.run({ vim.fn.expand('%'), vitestCommand = 'npx vitest --watch' })<cr>",
	{ desc = "Run Watch File" }
)
