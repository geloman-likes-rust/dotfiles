return {
	'folke/persistence.nvim',
	opts = {},
	keys = {
		{
			'<leader>rs',
			function() require('persistence').load() end,
			desc = 'Restore Session',
		},
		{
			'<leader>rl',
			function() require('persistence').load { last = true } end,
			desc = 'Restore Last Session',
		},
	},
}
