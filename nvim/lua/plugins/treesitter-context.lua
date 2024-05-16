return {
    'nvim-treesitter/nvim-treesitter-context',
    cmd = { 'TSContextEnable', 'TSContextDisable', 'TSContextToggle' },
    init = function()
        vim.keymap.set('n', '<leader>te', '<cmd>TSContextEnable<cr>', { desc = 'Enable TSContext' })
        vim.keymap.set('n', '<leader>td', '<cmd>TSContextDisable<cr>', { desc = 'Disable TSContext' })
        vim.keymap.set('n', '<leader>tt', '<cmd>TSContextToggle<cr>', { desc = 'Toggle TSContext' })
    end,
    opts = {
        max_lines = 5, -- prevent from taking over my entire screen.
    }
}
