return  {
	"goolord/alpha-nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
	    local startify = require("alpha.themes.startify")
	-- available: devicons, mini, default is mini
	-- if provider not loaded and enabled is true, it will try to use another provider
	startify.file_icons.provider = "devicons"

	vim.api.nvim_create_autocmd("User", {
            pattern = "AlphaReady",
            callback = function()
                vim.opt.showtabline = 0
            end,
        })

        vim.api.nvim_create_autocmd("BufUnload", {
            buffer = 0,
            callback = function()
                vim.opt.showtabline = 2
            end,
        })

	require("alpha").setup(
		startify.config
	)
	end
}
