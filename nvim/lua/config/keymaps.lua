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

-- window's resize
keymap("n", "=", "<cmd>vertical resize +5<cr>", { noremap = true, silent = true, desc = "[=] (+) vertical resize" })
keymap("n", "-", "<cmd>vertical resize -5<cr>", { noremap = true, silent = true, desc = "[-] (-) vertical resize" })
keymap("n", "_", "<cmd>horizontal resize -3<cr>", { noremap = true, silent = true, desc = "[_] (-) horizontal resize" })
keymap("n", "+", "<cmd>horizontal resize +3<cr>", { noremap = true, silent = true, desc = "[+] (+) horizontal resize" })

-- toggle highlight search
keymap("n", "<leader>hl", ":set hlsearch!<cr>", { noremap = true, silent = true, desc = "toggle [H]ighlight [S]earch" })

-- close all buffers
keymap("n", "<C-q>", function() vim.cmd("qall!") end)

-- toggle cursorline
keymap("n", "<cr>", ":set cursorline!<cr>", { noremap = true, silent = true })

-- move cursor to bottom/top and center the screen
keymap("n", "H", "Hzz")
keymap("n", "L", "Lzz")
keymap("n", "G", "Gzz")

keymap("n", "<leader>b", ":buffers<cr>", { silent = true })
-- switch buffers
keymap("n", "<C-n>", ":bNext<cr>", { silent = true })
keymap("n", "<left>", ":bprevious<cr>", { silent = true })
keymap("n", "<right>", ":bNext<cr>", { silent = true })

-- switch tabs
keymap("n", "<S-tab>", ":tabprevious<cr>", { silent = true })
keymap("n", "<tab>", ":tabNext<cr>", { silent = true })

-- navigate across wrapped lines
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
