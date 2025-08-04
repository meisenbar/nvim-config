local neotest = require('neotest');

vim.keymap.set('n', '<leader>to', neotest.summary.toggle, { noremap = true, silent = true})
vim.keymap.set('n', '<leader>tr', neotest.run.run, { noremap = true, silent = true})
vim.keymap.set('n', '<leader>ts', neotest.run.stop, { noremap = true, silent = true})
vim.keymap.set('n', '<leader>tf', function() neotest.run.run(vim.fn.expand("%")) end, { noremap = true, silent = true})
vim.keymap.set('n', '<leader>ta', neotest.run.attach, { noremap = true, silent = true})
