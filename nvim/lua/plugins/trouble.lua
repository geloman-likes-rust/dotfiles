return {
	'folke/trouble.nvim',
	cmd = 'Trouble',
	keys = {
		{
			'<leader>tq',
			'<cmd>Trouble quickfix<cr>',
			desc = 'Toggle quickfix list',
		},
		{
			'<leader>tr',
			'<cmd>Trouble lsp toggle<cr>',
			desc = 'Toggle Lsp References',
		},
		{
			'<leader>tw',
			'<cmd>Trouble diagnostics toggle<cr>',
			desc = 'Toggle Workspace Diagnostics',
		},
	},
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = { focus = true },
}
