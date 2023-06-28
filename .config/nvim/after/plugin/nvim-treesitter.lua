local parsers = { 'c', 'html', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'typescript', 'javascript', 'vimdoc', 'vim',
  'c_sharp' }
require('nvim-treesitter.configs').setup {
  ensure_installed = parsers,
  auto_install = false,
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python', 'html' } },
}
