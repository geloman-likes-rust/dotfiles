return {
    'nvim-treesitter/nvim-treesitter-context',
    cmd = { 'TSContextEnable', 'TSContextDisable', 'TSContextToggle' },
    keys = {
        { '<leader>te', desc = 'Enable TSContext' },
        { '<leader>td', desc = 'Disable TSContext' },
        { '<leader>tt', desc = 'Toggle TSContext' },
    },
    init = function()
        vim.keymap.set('n', '<leader>te', function() vim.cmd('TSContextEnable') end, {})
        vim.keymap.set('n', '<leader>td', function() vim.cmd('TSContextDisable') end, {})
        vim.keymap.set('n', '<leader>tt', function() vim.cmd('TSContextToggle') end, {})
    end,
}
