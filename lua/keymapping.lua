-- Buffer Navigation
vim.api.nvim_set_keymap('n', '<C-Left>', ':bprevious<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Right>', ':bnext<CR>', { noremap = true, silent = true })

-- Split Navigation
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
