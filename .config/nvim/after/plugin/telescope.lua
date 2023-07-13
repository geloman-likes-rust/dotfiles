pcall(require('telescope').load_extension, 'fzf') -- Enable telescope fzf native, if installed
local ignore_files = { "target", "node_modules", "wwwroot/lib", "**/Debug", "**.cache", "**/assets", "**.png", "**.svg",
  "**.favicon.*", "**.gif", "**.jpg", "**.jpeg", "**.mp4", "**.mp3", "**.pdf", "go", "**.zip", "**.tar.gz", "**/tags",
  "**.ttf" }

require('telescope').setup {
  pickers = {
    colorscheme = {
      enable_preview = true,
      layout_config = {
        width = 0.50,
        preview_width = 0.05
      },
    },
    grep_string = {
      word_match = "-w",
    },
    live_grep = {
      initial_mode = "insert",
    }
  },
  defaults = {
    layout_config = {
      height = 0.95,
      width = 0.95,
      preview_width = 0.55
    },
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    initial_mode = "normal",
    file_ignore_patterns = ignore_files,
  },
}

vim.keymap.set('n', '<leader>cc', require('telescope.builtin').colorscheme, { desc = '[C]hange [C]olorscheme' })
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>hh', require('telescope.builtin').help_tags, { desc = 'Search [H][H]elp' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind [W]ord under cursor' })
vim.keymap.set('n', '<leader>lg', require('telescope.builtin').live_grep, { desc = '[L]ive [G]rep' })
vim.keymap.set('n', '<leader>wd', require('telescope.builtin').diagnostics, { desc = '[W]orkspace [D]iagnostics' })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
