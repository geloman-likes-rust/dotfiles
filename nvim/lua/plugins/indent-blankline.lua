return {
    'lukas-reineke/indent-blankline.nvim',
    event = 'VeryLazy',
    main = 'ibl',
    opts = {
        indent = { char = '┊' },
        scope = { show_start = false, show_end = false, char = '│' },
        exclude = {
            filetypes = {
                "lazy",
                "trouble",
                "toggleterm",
            }
        }
    },
}
