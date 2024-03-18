return {
    'nvim-neo-tree/neo-tree.nvim',
    keys = { { '<leader>e', '<cmd>Neotree toggle float<cr>', desc = 'Toggle File Explorer' } },
    opts = {
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
            }
        },
    },
}
