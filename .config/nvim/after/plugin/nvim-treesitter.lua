local parsers = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'html', 'css', 'tsx', 'typescript', 'javascript', 'vimdoc',
  'vim', 'c_sharp', 'java', 'yaml', 'json', 'toml', 'bash' }
require('nvim-treesitter.configs').setup {
  ensure_installed = parsers,
  auto_install = false,
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python', 'html' } },
}
