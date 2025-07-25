local conform  = require("conform")

conform.setup({
  formatters_by_ft = {
    vue = { "eslint_d", "prettierd" },
    typescript = { "eslint_d" },
  },
})

vim.keymap.set('n', '<C-z>', conform.format, { noremap = true, silent = true })
