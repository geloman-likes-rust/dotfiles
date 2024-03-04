return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    cmd = "Telescope",
    init = function()
        vim.keymap.set('n', '<leader>cn', function()
            require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = 'neovim config files' })
    end,
    keys = function()
        local Command = function(command) return function() vim.cmd(command) end end
        return {
            -- BUFFERS, FILES, AND REGISTERS
            { "<leader>ff",      Command("Telescope find_files"),     desc = "[F]ind [F]iles" },
            { "<leader>fr",      Command("Telescope registers"),      desc = "[F]ind [F]iles" },
            { "<leader><space>", Command("Telescope buffers"),        desc = "[ ] Find existing buffers" },

            -- REGULAR EXPRESSIONS
            { "<leader>lg",      Command("Telescope live_grep"),      desc = "[L]ive [G]rep" },
            { "<leader>fw",      Command("Telescope grep_string"),    desc = "[F]ind [W]ord under cursor" },

            -- LSP RELATED
            { "<leader>lr",      Command("Telescope lsp_references"), desc = "[L]sp [R]eferences" },
            { "<leader>wd",      Command("Telescope diagnostics"),    desc = "[W]orkspace [D]iagnostics" },

            -- COLORSCHEMES AND HIGHLIGHTS
            { "<leader>hp",      Command("Telescope highlights"),     desc = "[H]ighlights [P]review" },
            { "<leader>cc",      Command("Telescope colorscheme"),    desc = "[C]hange [C]olorscheme" },

            -- GIT COMMANDS
            { "<leader>gs",      Command("Telescope git_status"),     desc = "[G]it [S]tatus" },
            { "<leader>gf",      Command("Telescope git_files"),      desc = "[G]it [F]iles" },
            { "<leader>gb",      Command("Telescope git_branches"),   desc = "[G]it [B]ranches" },
            { "<leader>gts",     Command("Telescope git_stash"),      desc = "Git Stash" },
            { "<leader>gtb",     Command("Telescope git_bcommits"),   desc = "Git Current Buffer Commits" },
            {
                "<leader>gw",
                function()
                    local telescope = require("telescope")
                    telescope.load_extension("git_worktree")
                    telescope.extensions.git_worktree.git_worktrees()
                end,
                desc = "Git Worktrees"
            },
            {
                "<leader>cw",
                function()
                    local telescope = require("telescope")
                    telescope.load_extension("git_worktree")
                    telescope.extensions.git_worktree.create_git_worktree()
                end,
                desc = "Create Git Worktree"
            },

            -- TELESCOPE'S EASTER EGG
            { "<leader>ps", Command("Telescope planets"),   desc = "Love and Peace" },

            -- HELP TAGS
            { "<leader>hh", Command("Telescope help_tags"), desc = "Search Help" },

        }
    end,
    dependencies = { 'nvim-lua/plenary.nvim', 'ThePrimeagen/git-worktree.nvim' },
    opts = function()
        local ignore_files = { ".git", "target", "node_modules", "wwwroot/lib", "**/Debug", "**.cache", "**/assets",
            "**.png",
            "**.svg", "**.favicon.*", "**.gif", "**.jpg", "**.jpeg", "**.mp4", "**.mp3", "**.pdf", "go", "**.zip",
            "**.tar.gz",
            "**/tags", "**.ttf" }

        local actions = require('telescope.actions')
        local options = {
            pickers = {

                highlights = {
                    layout_config = {
                        preview_width = 0.55
                    },

                },

                help_tags = {
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                live_grep = {
                    layout_config = {
                        preview_width = 0.60
                    },
                },

                lsp_references = {
                    initial_mode = "normal",
                    layout_config = {
                        preview_width = 0.60,
                    },
                },

                planets = {
                    show_pluto = true,
                    show_moon = true,
                    initial_mode = "normal",
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                colorscheme = {
                    initial_mode = "insert",
                    layout_config = {
                        width = 0.40,
                        height = 0.60,
                    },
                },

                grep_string = {
                    word_match = "-w",
                    initial_mode = "normal",
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                oldfiles = {
                    initial_mode = "normal",
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                diagnostics = {
                    initial_mode = "normal",
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                buffers = {
                    initial_mode = "normal",
                    mappings = {
                        n = {
                            ['dd'] = actions.delete_buffer,
                        }
                    },
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                find_files = {
                    hidden = true,
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                git_status = {
                    initial_mode = "normal",
                    show_untracked = true,
                    layout_config = {
                        preview_width = 0.55
                    },
                },

                git_files = {
                    show_untracked = true,
                    layout_config = {
                        preview_width = 0.55
                    },
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
                },

                -- selection_caret = "  ",
                selection_caret = "  ",
                prompt_prefix = "   ",
            },
        }
        return options
    end
}
