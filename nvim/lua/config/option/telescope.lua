local ignore_files = { ".git", "target", "node_modules", "wwwroot/lib", "**/Debug", "**.cache", "**/assets",
    "**.png",
    "**.svg", "**.favicon.*", "**.gif", "**.jpg", "**.jpeg", "**.mp4", "**.mp3", "**.pdf", "go", "**.zip", "**.tar.gz",
    "**/tags", "**.ttf" }

local actions = require('telescope.actions')
local options = {
    pickers = {

        lsp_references = {
            initial_mode = "normal",
        },

        planets = {
            show_pluto = true,
            show_moon = true,
            initial_mode = "normal",
        },

        colorscheme = {
            initial_mode = "normal",
            layout_config = {
                width = 0.40,
                height = 0.60,
            },
        },

        grep_string = {
            word_match = "-w",
            initial_mode = "normal",
        },

        oldfiles = {
            initial_mode = "normal",
        },

        diagnostics = {
            initial_mode = "normal",
        },

        buffers = {
            initial_mode = "normal",
            mappings = {
                n = {
                    ['dd'] = actions.delete_buffer,
                }
            }
        },

        find_files = {
            hidden = true,
        },
        git_status = {
            initial_mode = "normal",
            show_untracked = true
        },

        git_files = {
            show_untracked = true
        },
    },

    defaults = {
        dynamic_preview_title = true,
        file_ignore_patterns = ignore_files,

        mappings = {
            i = {
                ['<C-k>'] = actions.move_selection_previous,
                ['<C-j>'] = actions.move_selection_next,
            },
            n = {
                ['<C-k>'] = actions.move_selection_previous,
                ['<C-j>'] = actions.move_selection_next,
                ["q"] = actions.close
            }
        },

        layout_config = {
            height = 0.95,
            width = 0.95,
            preview_width = 0.55
        },

        selection_caret = "  ",
        prompt_prefix = "   ",
    },
}
return options
