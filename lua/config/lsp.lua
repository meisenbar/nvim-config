vim.lsp.config('lua_ls', {
  settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT'
			},

			diagnostics = {
				globals = { "vim" }
			}
		}
  },
})

vim.api.nvim_set_keymap('n', '<C-z>', ':LspEslintFixAll<CR>', { noremap = true, silent = true })
