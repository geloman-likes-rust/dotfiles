return {
	'lukas-reineke/indent-blankline.nvim',
	event = 'BufReadPost',
	lazy = vim.fn.argc(-1) == 0,
	main = 'ibl',
	opts = {
		indent = { char = '┊' },
		scope = { show_start = false, show_end = false, char = '│' },
		exclude = {
			filetypes = {
				'lazy',
				'trouble',
				'toggleterm',
			},
		},
	},
}
