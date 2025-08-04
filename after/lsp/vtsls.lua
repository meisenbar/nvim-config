local vue_language_server_path = vim.fn.expand '$MASON/packages' ..
		'/vue-language-server' .. '/node_modules/@vue/language-server'

local vue_plugin = {
	name = '@vue/typescript-plugin',
	location = vue_language_server_path,
	languages = { 'vue' },
	configNamespace = 'typescript',
	enableForWorkspaceTypeScriptVersions = true,
}

return {
	filetypes = { 'javascriptreact', 'typescriptreact', 'vue' },

	settings = {
		typescript = {
			suggest = {
				completeFunctionCalls = true,
			},
		},

		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
			},
		},
	},
}
