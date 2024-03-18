return {
    'nvim-treesitter/nvim-treesitter-context',
    cmd = { 'TSContextEnable', 'TSContextDisable', 'TSContextToggle' },
    init = function()
        vim.keymap.set('n', '<leader>te', function() vim.cmd('TSContextEnable') end, { desc = 'Enable TSContext' })
        vim.keymap.set('n', '<leader>td', function() vim.cmd('TSContextDisable') end, { desc = 'Disable TSContext' })
        vim.keymap.set('n', '<leader>tt', function() vim.cmd('TSContextToggle') end, { desc = 'Toggle TSContext' })
    end,
    opts = {
        max_lines = 4, -- prevent from taking over my entire screen.
    }
}
