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
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
    }
}
