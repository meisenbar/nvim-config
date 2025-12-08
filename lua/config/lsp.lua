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

local tsserver_filetypes = { 'typescript', 'vue' }

local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vue_language_server_path,
	languages = { 'vue' },
	configNamespace = 'typescript',
	enableForWorkspaceTypeScriptVersions = true,
}

local vtsls_config = {
	settings = {
		typescript = {
			preferences = {
				includePackageJsonAutoImports = 'off',
			},
			tsserver = {
				maxTsServerMemory = 12288,
			}
		},
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

vim.lsp.config('vtsls', vtsls_config)
vim.lsp.enable({ 'vtsls', 'vue_ls', 'csharp_ls' })
