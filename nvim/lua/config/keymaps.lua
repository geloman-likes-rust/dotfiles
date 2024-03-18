--- keymaps
local function keymap(mode, lhs, rhs, opts)
    opts = opts or {}
    vim.keymap.set(mode, lhs, rhs, opts)
end

local toggle_numberln = function()
    vim.cmd "set number!"
    vim.cmd "set relativenumber!"
end

-- toggle statusline
keymap("n", "<leader>l1", "<cmd>set laststatus=1<cr>", { noremap = true, silent = true, desc = "hide statusline" })
keymap("n", "<leader>l2", "<cmd>set laststatus=2<cr>", { noremap = true, silent = true, desc = "show statusline" })

-- toggle number line
keymap("n", "<leader>ln", toggle_numberln, { noremap = true, silent = true, desc = "toggle number line" })

-- toggle highlight search
keymap("n", "<leader>hl", ":set hlsearch!<cr>", { noremap = true, silent = true, desc = "toggle [H]ighlight [S]earch" })

-- move cursor to bottom and center the screen
keymap("n", "L", "Lzz")
keymap("n", "G", "Gzz")

-- navigate across wrapped lines
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- show file path of current buffer
local hidden = true
keymap('n', '<leader>pwd', function()
    hidden = not hidden
    if hidden then vim.o.winbar = '' else vim.o.winbar = '%= %f %=' end
end, { desc = 'show current buffer file path' })
