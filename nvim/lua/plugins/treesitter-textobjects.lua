---@diagnostic disable: missing-fields
return {
	'nvim-treesitter/nvim-treesitter-textobjects',
	main = 'nvim-treesitter.configs',
	lazy = true,
	opts = {
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					['aa'] = '@parameter.outer',
					['ia'] = '@parameter.inner',
					['af'] = '@function.outer',
					['if'] = '@function.inner',
					['ac'] = '@class.outer',
					['ic'] = '@class.inner',
				},
			},
			swap = {
				enable = true,
				swap_next = {
					['<leader>a'] = '@parameter.inner',
				},
				swap_previous = {
					['<leader>A'] = '@parameter.inner',
				},
			},
			move = {
				enable = true,
				set_jumps = true,
				goto_next_start = { ['<leader>k'] = '@yaml.key' },
				goto_previous_start = { ['<leader>K'] = '@yaml.key' },
			},
		},
	},
}
