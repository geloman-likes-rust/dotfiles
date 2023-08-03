pcall(require('telescope').load_extension, 'fzf') -- Enable telescope fzf native, if installed
local ignore_files = { ".git", "target", "node_modules", "wwwroot/lib", "**/Debug", "**.cache", "**/assets", "**.png",
  "**.svg", "**.favicon.*", "**.gif", "**.jpg", "**.jpeg", "**.mp4", "**.mp3", "**.pdf", "go", "**.zip", "**.tar.gz",
  "**/tags", "**.ttf" }

local keymap = function(mode, lhs, rhs, opts)
  opts = opts or {}
  vim.keymap.set(mode, lhs, rhs, opts)
end

local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup {
  pickers = {

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
    file_ignore_patterns = ignore_files,

    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
      },
      n = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
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
keymap('n', '<leader>hp', builtin.highlights, { desc = '[H]ighlight [P]review' })
keymap('n', '<leader>cc', builtin.colorscheme, { desc = '[C]hange [C]olorscheme' })
keymap('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
keymap('n', '<leader>hh', builtin.help_tags, { desc = 'Search [H][H]elp' })
keymap('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind [W]ord under cursor' })
keymap('n', '<leader>lg', builtin.live_grep, { desc = '[L]ive [G]rep' })
keymap('n', '<leader>wd', builtin.diagnostics, { desc = '[W]orkspace [D]iagnostics' })
keymap('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
keymap('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
keymap('n', '<leader>j', builtin.current_buffer_fuzzy_find, { desc = '[J] current buffer fuzzy find' })
keymap('n', '<leader>ps', builtin.planets, { desc = 'Love and Peace' })
keymap('n', '<leader>fr', builtin.registers, { desc = 'Fuzzy Find Registers' })

keymap('n', '<leader>gs', builtin.git_status, { desc = '[G]it [S]tatus' })
keymap('n', '<leader>gf', builtin.git_files, { desc = '[G]it [F]iles' })
keymap('n', '<leader>gb', builtin.git_branches, { desc = '[G]it [B]ranches' })
keymap('n', '<leader>gts', builtin.git_stash, { desc = 'Git Stash' })
keymap('n', '<leader>gtb', builtin.git_bcommits, { desc = 'Git Current Buffer Commits' })

vim.cmd("highlight! TelescopeSelectionCaret guifg=#FF52A2")
vim.cmd("highlight! TelescopePromptNormal guifg=#dd9046")
