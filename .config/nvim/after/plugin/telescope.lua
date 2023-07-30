pcall(require('telescope').load_extension, 'fzf') -- Enable telescope fzf native, if installed
local ignore_files = { ".git", "target", "node_modules", "wwwroot/lib", "**/Debug", "**.cache", "**/assets", "**.png",
  "**.svg", "**.favicon.*", "**.gif", "**.jpg", "**.jpeg", "**.mp4", "**.mp3", "**.pdf", "go", "**.zip", "**.tar.gz",
  "**/tags", "**.ttf" }
require('telescope').setup {
  pickers = {

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
          ['dd'] = require("telescope.actions").delete_buffer,
        }
      }
    },

    find_files = {
      hidden = true,
    },

    git_status = {
      initial_mode = "normal",
    },

    git_files = {
      show_untracked = true
    },
  },

  defaults = {
    file_ignore_patterns = ignore_files,

    mappings = {
      i = {
        ['<C-k>'] = require("telescope.actions").move_selection_previous,
        ['<C-j>'] = require("telescope.actions").move_selection_next,
      },
      n = {
        ['<C-k>'] = require("telescope.actions").move_selection_previous,
        ['<C-j>'] = require("telescope.actions").move_selection_next,
      }
    },

    layout_config = {
      height = 0.95,
      width = 0.95,
      preview_width = 0.55
    },

    selection_caret = "  ",
    prompt_prefix = "   ",
  },
}

-- custom keymaps
vim.keymap.set('n', '<leader>gs', require('telescope.builtin').git_status, { desc = '[G]it [S]tatus' })
vim.keymap.set('n', '<leader>hp', require('telescope.builtin').highlights, { desc = '[H]ighlight [P]review' })
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = '[G]it [F]iles' })
vim.keymap.set('n', '<leader>cc', require('telescope.builtin').colorscheme, { desc = '[C]hange [C]olorscheme' })
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>hh', require('telescope.builtin').help_tags, { desc = 'Search [H][H]elp' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind [W]ord under cursor' })
vim.keymap.set('n', '<leader>lg', require('telescope.builtin').live_grep, { desc = '[L]ive [G]rep' })
vim.keymap.set('n', '<leader>wd', require('telescope.builtin').diagnostics, { desc = '[W]orkspace [D]iagnostics' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

-- custom highlights
vim.cmd("highlight! TelescopeSelectionCaret guifg=#FF52A2")
vim.cmd("highlight! TelescopePromptNormal guifg=#dd9046")
