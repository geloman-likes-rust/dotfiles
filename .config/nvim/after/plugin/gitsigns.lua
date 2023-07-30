-- custom keymaps
vim.keymap.set('n', '<leader>N', require('gitsigns').prev_hunk, { desc = '[N] go to previous hunk' })
vim.keymap.set('n', '<leader>n', require('gitsigns').next_hunk, { desc = '[n] go to next hunk' })
vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { desc = '[p]review [h]unk' })
vim.keymap.set('n', 'ga', require('gitsigns').stage_hunk, { desc = '[G]it [A]dd Hunk' })
vim.keymap.set('n', '<leader>ga', require('gitsigns').stage_buffer, { desc = '[G]it [A]dd All Hunks' })
vim.keymap.set('n', '<leader>gu', require('gitsigns').undo_stage_hunk, { desc = '[G]it [U]nstage Last Staged' })
vim.keymap.set('n', '<leader>lb', require('gitsigns').toggle_current_line_blame, { desc = '[L]ine [B]lame toggle' })

-- custom highlights
vim.cmd("highlight! DiffDelete guifg=#FC2947 guibg=#ffeeee")
vim.cmd("highlight! DiffAdd guifg=#03C988 guibg=#d6ffd6")
