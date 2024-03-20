return {
    'folke/trouble.nvim',
    cmd = { 'Trouble', 'TroubleClose', 'TroubleToggle', 'TroubleRefresh' },
    keys = {
        { '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = 'Toggle Workspace Diagnostics' },
        { '<leader>tr', '<cmd>TroubleToggle lsp_references<cr>',        desc = 'Toggle Lsp References' },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
