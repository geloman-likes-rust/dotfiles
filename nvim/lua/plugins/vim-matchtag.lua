return {
  "leafOfTree/vim-matchtag",
  config = function()
    vim.g.vim_matchtag_enable_by_default = 1
    vim.g.vim_matchtag_highlight_cursor_on = 1
    vim.g.vim_matchtag_files = '*.html,*.ts,*.tsx,*.js,*.jsx,*.vue,*.svelte,*.jsp'
  end
}
