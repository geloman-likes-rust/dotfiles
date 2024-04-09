local function keymap(mode, lhs, rhs, opts)
    opts = opts or {}
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- toggle highlight search
keymap("n", "<leader>hl", ":set hlsearch!<cr>", { noremap = true, silent = true, desc = "toggle [H]ighlight [S]earch" })

-- navigate across wrapped lines
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- move cursor to bottom and center the screen
keymap("n", "L", "Lzz")
keymap("n", "G", "Gzz")
