-- custom keymaps
vim.keymap.set('n', '<leader>N', require('gitsigns').prev_hunk,
  { buffer = bufnr, desc = '[N] go to previous hunk' })
vim.keymap.set('n', '<leader>n', require('gitsigns').next_hunk, { desc = '[n] go to next hunk' })
vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { desc = '[P]review [H]unk' })
vim.keymap.set('n', '<leader>ga', require('gitsigns').stage_hunk, { desc = '[G]it [A]dd Hunk' })
vim.keymap.set('n', '<leader>gu', require('gitsigns').undo_stage_hunk, { desc = '[G]it [A]dd Hunk' })
vim.keymap.set('n', '<leader>lb', require('gitsigns').toggle_current_line_blame,
  { buffer = bufnr, desc = '[L]ine [B]lame toggle' })

-- custom highlights
vim.cmd("highlight! DiffDelete guifg=#FC2947 guibg=#ffeeee")
vim.cmd("highlight! DiffAdd guifg=#03C988 guibg=#d6ffd6")
