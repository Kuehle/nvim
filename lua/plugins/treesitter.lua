return {
	"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"
	,
	config = function()
		local config = require('nvim-treesitter.configs')
		config.setup({
			-- ensure_installed = { "rust", "typescript", "javascript", "markdown", "lua", "css", "html" },
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true }
		})
	end
}
