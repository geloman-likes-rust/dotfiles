return {
    'navarasu/onedark.nvim',
    priority = 1000,
    opts = {
        style = 'deep',
        transparent = true,
        term_colors = true,
        code_style = {
            comments = 'italic,bold',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },
    },
    config = function(_, opts)
        require('onedark').setup(opts)
        require('onedark').load()
    end
}
