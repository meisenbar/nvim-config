return {
	{
		'nvim-telescope/telescope.nvim', branch = 'master',
		dependencies = { 'nvim-lua/plenary.nvim' }
  },
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make'
	},
	{'nvim-telescope/telescope-ui-select.nvim' },
}
