return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
    },

		opts = {
			ensure_installed = { "lua_ls", "vimls", "vtsls", "vue_ls", "eslint" },
		},
	}
}

