local parsers = { 'lua', 'rust', 'html', 'tsx', 'typescript', 'javascript', 'vimdoc' }
require('nvim-treesitter.configs').setup {
  ensure_installed = parsers,
  auto_install = false,
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python', 'html' } },
}
