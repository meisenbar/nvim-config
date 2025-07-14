-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
  -- sort = {
  --   sorter = "case_sensitive",
  -- },
  view = {
    width = 30,
    centralize_selection = true
  },

  renderer = {
    group_empty = true,
  },

  filters = {
    dotfiles = true,
  },
})

local api = require('nvim-tree.api')

vim.keymap.set('n', '<C-n>', api.tree.toggle, { desc = 'Toggle nvim-tree' })
