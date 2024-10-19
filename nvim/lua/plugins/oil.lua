return {
	'stevearc/oil.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	cmd = { 'Oil' },
	keys = { { '<leader>e', '<cmd>Oil<cr>', desc = 'Open Oil' } },
	opts = {
		view_options = { show_hidden = true },
		default_file_explorer = false,
		use_default_keymaps = false,
		keymaps = {
			['?'] = 'actions.show_help',
			['q'] = 'actions.close',
			['-'] = 'actions.parent',
			['_'] = 'actions.open_cwd',
			['<cr>'] = 'actions.select',
		},
	},
}
