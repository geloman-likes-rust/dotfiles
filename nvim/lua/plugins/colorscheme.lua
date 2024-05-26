return {
    {
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
    },
    {
        'rebelot/kanagawa.nvim',
        lazy = true,
        priority = 1000,
        transparent = true,
        opts = {
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none"
                        }
                    }
                }
            }
        },
        config = function(_, opts)
            require('kanagawa').setup(opts)
            require('kanagawa').load 'dragon'
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        priority = 1000,
        opts = {},
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        priority = 1000,
        opts = {},
        config = function(_, opts)
            require('catppuccin').setup(opts)
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = true,
        priority = 1000,
        opts = {
        },
        config = function(_, opts)
            require('gruvbox').setup(opts)
        end
    }
}
