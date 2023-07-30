return {
  'nvim-treesitter/nvim-treesitter',
  priority = 1500,
  dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
  build = ":TSUpdate",
}
