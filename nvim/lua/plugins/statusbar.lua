return {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            section_separators = { left = '', right = '' },
            -- component_separators = { left = '', right = '' },
            -- component_separators = { left = '', right = '' },
            component_separators = { left = '│', right = '│' },
            -- component_separators = { left = '┊', right = '' },
            -- section_separators = { left = '', right = '' },
            disabled_filetypes = { 'NvimTree' },
        },
        sections = {
            lualine_a = { { 'mode', separator = { left = '', right = '' } } },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { '%=', { 'filename', color = 'lualine_b_normal', separator = { left = '', right = '' } } },
            lualine_x = { 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { { 'location', separator = { left = '', right = '' } } }
        },
    }
}
