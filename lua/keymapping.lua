-- Buffer Navigation
vim.api.nvim_set_keymap('n', '<C-Left>', ':bprevious<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Right>', ':bnext<CR>', { noremap = true, silent = true })

-- Split Navigation
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })

-- Diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_next, { noremap = true, silent = true })

vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, { noremap = true, silent = true })

-- LSP
vim.api.nvim_set_keymap('n', '<C-z>', ':LspEslintFixAll<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<Leader>a', vim.lsp.buf.code_action, { noremap = true, silent = true })

-- Auto close {(["'
vim.keymap.set('i', '{<TAB>', '{  }<LEFT><LEFT>', { noremap = true, silent = true })
vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O<TAB>', { noremap = true, silent = true })

vim.keymap.set('i', '(<TAB>', '(  )<LEFT><LEFT>', { noremap = true, silent = true })
vim.keymap.set('i', '[<TAB>', '[  ]<LEFT><LEFT>', { noremap = true, silent = true })
vim.keymap.set('i', '[<CR>', '[<CR>]<ESC>O<TAB>', { noremap = true, silent = true })

vim.keymap.set('i', '"<TAB>', '""<LEFT>', { noremap = true, silent = true })
vim.keymap.set('i', '\'<TAB>', '\'\'<LEFT>', { noremap = true, silent = true })
