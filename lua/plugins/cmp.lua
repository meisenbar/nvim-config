return {
	{
		'hrsh7th/nvim-cmp',
		opts = {
			performance = {
				debounce = 0, -- default is 60ms
				throttle = 0, -- default is 30ms
			},
		}
	},
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/cmp-vsnip' },
	{ 'hrsh7th/vim-vsnip' },
}
