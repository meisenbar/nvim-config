local tsserver_filetypes = { 'typescript', 'vue' }

local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vim.fn.expand '$MASON/packages' ..
			'/vue-language-server' .. '/node_modules/@vue/language-server',
	languages = { 'vue' },
	configNamespace = 'typescript',
	enableForWorkspaceTypeScriptVersions = true,
}

local vtsls_config = {
	settings = {
		typescript = {
			preferences = {
				-- includePackageJsonAutoImports = 'off',
			},
			tsserver = {
				maxTsServerMemory = 12288,
			}
		},
		vtsls = {
			experimental = {
				completion = {
					-- Limit the number of completion items returned by the server
					entriesLimit = 200, -- You can adjust this number as needed
					-- Optional: enable server-side fuzzy matching for performance
					enableServerSideFuzzyMatch = true,
				},
			},
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
			},
		},
	},

	filetypes = tsserver_filetypes,
}

local lua_config = {
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
}

vim.lsp.config('lua_ls', lua_config)
vim.lsp.config('vtsls', vtsls_config)
