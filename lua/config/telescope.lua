local telescope = require("telescope")
local actions = require("telescope.actions")

-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
telescope.setup {
	defaults = {
			mappings = {
					i = {
							-- quit telescope on ESC (no normal mode)
							["<esc>"] = actions.close,
					},
			},
	},
  extensions = {
		fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "ignore_case",        -- or "ignore_case" or "respect_case"
																			 -- the default case_mode is "smart_case"
		},
		-- https://github.com/nvim-telescope/telescope-ui-select.nvim/tree/master
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    },
  },
}

telescope.load_extension('fzf')
telescope.load_extension("ui-select")


local builtin  = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
