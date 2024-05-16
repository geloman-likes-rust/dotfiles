return {
    'akinsho/toggleterm.nvim',
    cmd = 'ToggleTerm',
    keys = { { '<leader>tm', '<cmd>ToggleTerm<cr>', desc = 'Toggle Terminal' } },
    opts = {
        direction = 'float',
        float_opts = {
            border = 'curved',
            title_pos = 'center'
        }
    }
}
