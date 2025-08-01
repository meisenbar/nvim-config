-- Buffer Navigation
vim.keymap.set('n', '<C-Left>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':bnext<CR>', { noremap = true, silent = true })


-- Split Navigation
vim.keymap.set('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })


-- Diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, { noremap = true, silent = true })


-- LSP
vim.keymap.set('n', '<Leader>a', vim.lsp.buf.code_action, { noremap = true, silent = true })

vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { noremap = true, silent = true })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { noremap = true, silent = true })

-- Auto close {(["'
-- vim.keymap.set('i', '{<TAB>', '{  }<LEFT><LEFT>', { noremap = true, silent = true })
-- vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O<TAB>', { noremap = true, silent = true })
--
-- vim.keymap.set('i', '(<TAB>', '(  )<LEFT><LEFT>', { noremap = true, silent = true })
-- vim.keymap.set('i', '[<TAB>', '[  ]<LEFT><LEFT>', { noremap = true, silent = true })
-- vim.keymap.set('i', '[<CR>', '[<CR>]<ESC>O<TAB>', { noremap = true, silent = true })
--
-- vim.keymap.set('i', '"<TAB>', '""<LEFT>', { noremap = true, silent = true })
-- vim.keymap.set('i', '\'<TAB>', '\'\'<LEFT>', { noremap = true, silent = true })
