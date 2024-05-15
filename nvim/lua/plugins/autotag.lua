return {
    "windwp/nvim-ts-autotag",
    ft = {
        "astro", "glimmer", "handlebars",
        "javascript", "jsx", "markdown",
        "rescript", "svelte", "tsx", "php",
        "typescript", "vue", "xml", "html"
    },
    opts = { autotag = { enable = true } },
    config = function(_, opts)
        ---@diagnostic disable-next-line: missing-fields
        require 'nvim-treesitter.configs'.setup {
            autotag = {
                enable = true,
            }
        }
        require('nvim-ts-autotag').setup(opts)
    end
}
