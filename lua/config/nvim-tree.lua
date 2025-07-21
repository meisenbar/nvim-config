-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local api = require('nvim-tree.api')

local function on_attach(bufnr)
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "u", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set('n', '=', api.tree.change_root_to_node, opts("Change root to current node'"))
end

require("nvim-tree").setup({
  -- sort = {
  --   sorter = "case_sensitive",
  -- },
	on_attach = on_attach,

	diagnostics = {
		enable = true,

		icons = {
				error = "",
				warning = "",
				hint = "",
				info = "",
		},
		show_on_dirs = true,
	},

  view = {
    width = 30,
    centralize_selection = true,
		signcolumn = 'yes'
  },

  renderer = {
    group_empty = true,
  },

  filters = {
    dotfiles = true,
  },
})


vim.keymap.set('n', '<C-n>', ":NvimTreeFindFileToggle<CR>", { desc = 'Toggle nvim tree' })

