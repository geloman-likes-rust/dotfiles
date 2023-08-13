local keymap = function(mode, lhs, rhs, opts)
    opts = opts or {}
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- custom keymaps
keymap('n', '<leader>hp', "<cmd>Telescope highlights<cr>", { desc = '[H]ighlight [P]review' })
keymap('n', '<leader>cc', "<cmd>Telescope colorscheme<cr>", { desc = '[C]hange [C]olorscheme' })
keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = '[F]ind [F]iles' })
keymap('n', '<leader>hh', "<cmd>Telescope help_tags<cr>", { desc = 'Search [H][H]elp' })
keymap('n', '<leader>fw', "<cmd>Telescope grep_string<cr>", { desc = '[F]ind [W]ord under cursor' })
keymap('n', '<leader>lg', "<cmd>Telescope live_grep<cr>", { desc = '[L]ive [G]rep' })
keymap('n', '<leader>lr', "<cmd>Telescope lsp_references<cr>", { desc = '[L]sp [R]eferences' })
keymap('n', '<leader>wd', "<cmd>Telescope diagnostics<cr>", { desc = '[W]orkspace [D]iagnostics' })
keymap('n', '<leader>?', "<cmd>Telescope oldfiles<cr>", { desc = '[?] Find recently opened files' })
keymap('n', '<leader><space>', "<cmd>Telescope buffers<cr>", { desc = '[ ] Find existing buffers' })
keymap('n', '<leader>j', "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = '[J] current buffer fuzzy find' })
keymap('n', '<leader>ps', "<cmd>Telescope planets<cr>", { desc = 'Love and Peace' })
keymap('n', '<leader>fr', "<cmd>Telescope registers<cr>", { desc = 'Fuzzy Find Registers' })

keymap('n', '<leader>gs', "<cmd>Telescope git_status<cr>", { desc = '[G]it [S]tatus' })
keymap('n', '<leader>gf', "<cmd>Telescope git_files<cr>", { desc = '[G]it [F]iles' })
keymap('n', '<leader>gb', "<cmd>Telescope git_branches<cr>", { desc = '[G]it [B]ranches' })
keymap('n', '<leader>gts', "<cmd>Telescope git_stash<cr>", { desc = 'Git Stash' })
keymap('n', '<leader>gtb', "<cmd>Telescope git_bcommits<cr>", { desc = 'Git Current Buffer Commits' })
