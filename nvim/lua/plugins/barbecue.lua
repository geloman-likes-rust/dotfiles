return {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    opts = { attach_navic = false, show_navic = false },
    cmd = 'Barbecue',
    keys = { { '<leader>wb', '<cmd>Barbecue toggle<cr>', desc = 'Toggle winbar' } },
    dependencies = { 'SmiteshP/nvim-navic', 'nvim-tree/nvim-web-devicons' },
}
