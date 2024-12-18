return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
	cmd = { 'TSInstall', 'TSBufEnable', 'TSBufDisable', 'TSModuleInfo' },
	main = 'nvim-treesitter.configs',
	lazy = vim.fn.argc(-1) == 0,
	opts = {
		modules = {},
		auto_install = false,
		sync_install = false,
		ignore_install = {},
		ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'regex' },
		highlight = { enable = true },
		indent = { enable = true, disable = { 'python', 'html' } },
	},
	build = ':TSUpdate',
}
