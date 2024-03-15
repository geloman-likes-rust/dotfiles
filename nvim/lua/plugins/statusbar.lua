return {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            globalstatus = true,
            section_separators = { left = '', right = '' },
            -- component_separators = { left = '', right = '' },
            -- component_separators = { left = '', right = '' },
            component_separators = { left = '│', right = '│' },
            -- component_separators = { left = '┊', right = '' },
            -- section_separators = { left = '', right = '' },
            -- disabled_filetypes = { 'NvimTree' },
        },
        sections = {
            lualine_a = { { 'mode', separator = { left = '', right = '' } } },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { '%=', {
                'filename',
                on_click = function()
                    print(vim.fn.expand('%:p'))
                end,
                color = 'lualine_b_normal',
                separator = { left = '', right = '' }
            } },
            lualine_x = { 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { { 'location', separator = { left = '', right = '' } } }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { '%=', { 'branch', color = 'lualine_b_normal', separator = { left = '', right = '' } }, { 'filename', color = 'lualine_a_normal', separator = { left = '', right = '' } } },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
    }
}
