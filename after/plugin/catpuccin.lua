require("catppuccin").setup({
	color_overrides = {
		all = {
			base = "#f2fcf6",
		},
	},
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin-latte")
