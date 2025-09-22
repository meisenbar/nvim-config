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

local vue_language_server_path = vim.fn.expand '$MASON/packages' ..
		'/vue-language-server' .. '/node_modules/@vue/language-server'

local tsserver_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }

local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vue_language_server_path,
	languages = { 'vue' },
	configNamespace = 'typescript',
}

local vtsls_config = {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
			},
		},
	},
	filetypes = tsserver_filetypes,
}

local vue_ls_config = {}

vim.lsp.config('vtsls', vtsls_config)
vim.lsp.config('vue_ls', vue_ls_config)
vim.lsp.enable({ 'vtsls', 'vue_ls' })
