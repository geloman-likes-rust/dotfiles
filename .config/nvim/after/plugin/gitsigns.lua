require("gitsigns").setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
  numhl = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 100,
  },
  preview_config = {
    border = "rounded"
  },
  on_attach = function(bufnr)
    vim.keymap.set('n', '<leader>N', require('gitsigns').prev_hunk,
      { buffer = bufnr, desc = '[N] go to previous hunk' })
    vim.keymap.set('n', '<leader>n', require('gitsigns').next_hunk, { buffer = bufnr, desc = '[n] go to next hunk' })
    vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
    vim.keymap.set('n', '<leader>ga', require('gitsigns').stage_hunk, { desc = '[G]it [A]dd Hunk' })
    vim.keymap.set('n', '<leader>gu', require('gitsigns').undo_stage_hunk, { desc = '[G]it [A]dd Hunk' })
    vim.keymap.set('n', '<leader>lb', require('gitsigns').toggle_current_line_blame,
      { buffer = bufnr, desc = '[L]ine [B]lame toggle' })
  end,
}

vim.cmd("highlight! DiffDelete guifg=#FC2947 guibg=#ffeeee")
vim.cmd("highlight! DiffAdd guifg=#03C988 guibg=#d6ffd6")
