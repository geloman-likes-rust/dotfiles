return {
	'tpope/vim-fugitive',
	cmd = { 'Git', 'Gvdiffsplit' },
	dependencies = { 'tpope/vim-rhubarb' },
	keys = function()
		return {
			{ '<leader>gp', '<cmd>Git push<cr>', desc = '[G]it [P]ush' },
			{ '<leader>G', '<cmd>vertical Git<cr>', desc = '[G]it fugitive' },
			{
				'<leader>gds',
				'<cmd>Gvdiffsplit<cr>',
				desc = '[G]it [D]iff [S]plit',
			},
		}
	end,
}
