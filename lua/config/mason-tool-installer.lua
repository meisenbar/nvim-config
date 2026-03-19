local installer = require('mason-tool-installer')

installer.setup {
	ensure_installed = {
		{ "prettierd", auto_update = true },
		{ "eslint_d",   auto_update = true },
	}
}
