return {
    'folke/trouble.nvim',
    cmd = 'Trouble',
    keys = {
        { '<leader>tw', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Toggle Workspace Diagnostics' },
        { '<leader>tr', '<cmd>Trouble lsp toggle<cr>',         desc = 'Toggle Lsp References' },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
}
