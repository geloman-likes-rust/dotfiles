-- custom highlights
vim.cmd("highlight! Visual gui=reverse")
vim.cmd("highlight! Search guibg=#d6ffd6")
vim.cmd("highlight! CurSearch guifg=#d6ffd6 guibg=#03c988")
vim.cmd("highlight! IncSearch guifg=#d6ffd6 guibg=#03c988")
vim.cmd("highlight! CursorLine gui=reverse guibg=#2a324a")
vim.cmd("highlight! CursorLineNR gui=bold guibg=#2a324a")
vim.api.nvim_command('autocmd InsertEnter * highlight! CursorLine gui=bold guibg=#2a324a')
vim.api.nvim_command('autocmd InsertLeave * highlight! CursorLine gui=reverse guibg=#2a324a')
