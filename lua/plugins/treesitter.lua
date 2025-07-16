return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	ensure_installed = { "vue", "typescript", "scss", "css", "html" },
}
