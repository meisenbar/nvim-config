return {
	"nvim-neotest/neotest",
	dependencies = {
		"marilari88/neotest-vitest",
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-vitest"),
			},
			highlights = {
				adapter_name = "Title",
				border = "VertSplit",
				dir = "Directory",
				expand_marker = "Normal",
				failed = "DiagnosticError",
				file = "Normal",
				focused = "Underline",
				indent = "Normal",
				marked = "Bold",
				namespace = "Title",
				passed = "DiagnosticOK",
				running = "DiagnosticInfo",
				select_win = "Title",
				skipped = "DiagnosticWarn",
				target = "NeotestTarget",
				test = "String",
				unknown = "Normal",
				watching = "DiagnosticWarn",
			},
		})
	end,
}
