local conform  = require("conform")

conform.setup({
  formatters_by_ft = {
    vue = { "eslint_d", "prettierd" },
    typescript = { "eslint_d", "prettierd" },
  },
})

local function format ()
	conform.format({ lsp_fallback=true, async=true })
end


vim.keymap.set('i', '<C-z>', format, { noremap = true, silent = true })
vim.keymap.set('n', '<C-z>', format, { noremap = true, silent = true })
