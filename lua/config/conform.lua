require("conform").setup({
  formatters_by_ft = {
    vue = { "eslint_d" },
    typescript = { "eslint_d" },
  },
})

vim.api.nvim_set_keymap('n', '<C-z>', vim.lsp.buf.format(), { noremap = true, silent = true })
