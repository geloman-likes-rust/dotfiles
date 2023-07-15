local parsers = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'html', 'css', 'tsx', 'typescript', 'javascript', 'vimdoc',
  'vim', 'yaml', 'json', 'toml', 'bash' }
require('nvim-treesitter.configs').setup {
  ensure_installed = parsers,
  auto_install = false,
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python', 'html' } },
}
