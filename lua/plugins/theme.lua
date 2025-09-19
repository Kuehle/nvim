return {
	"folke/tokyonight.nvim",
	config = function()
		vim.cmd.colorscheme("tokyonight-day")
		vim.o.background = "light"
	end,
}
