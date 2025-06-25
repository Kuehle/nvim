return { 
	'folke/tokyonight.nvim', 
	config = function()
		vim.cmd.colorscheme "tokyonight-night"
		vim.o.background = "dark"
	end
}
