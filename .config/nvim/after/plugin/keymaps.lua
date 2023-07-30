local function keymap(mode, lhs, rhs, opts)
  opts = opts or {}
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- window's resize
keymap("n", "=", ":vertical resize +5<cr>", { noremap = true, silent = true, desc = "[=] (+) vertical resize" })
keymap("n", "-", ":vertical resize -5<cr>", { noremap = true, silent = true, desc = "[-] (-) vertical resize" })
keymap("n", "_", "horizontal resize -3<cr>", { noremap = true, silent = true, desc = "[_] (-) horizontal resize" })
keymap("n", "+", "horizontal resize +3<cr>", { noremap = true, silent = true, desc = "[+] (+) horizontal resize" })

-- toggle highlight search
keymap("n", "<leader>hl", ":set hlsearch!<cr>", { noremap = true, silent = true, desc = "toggle [H]ighlight [S]earch" })

-- toggle Lexplore
keymap("n", "<leader>e", ":Lex 25<cr>", { noremap = true, silent = true, desc = "toggle Lex 25" })

-- close current buffer
keymap("n", "q", "<C-w>q")

-- toggle cursorline
keymap("n", "<cr>", ":set cursorline!<cr>", { noremap = true, silent = true })

-- fold selected line
keymap("v", "f", "zf", { silent = true })

-- move cursor to bottom/top and center the screen
keymap("n", "H", "Hzz")
keymap("n", "L", "Lzz")
keymap("n", "G", "Gzz")

-- switch buffers
keymap("n", "<C-n>", ":bNext<cr>", { silent = true })
keymap("n", "<left>", ":bprevious<cr>", { silent = true })
keymap("n", "<right>", ":bNext<cr>", { silent = true })

-- switch tabs
keymap("n", "<S-tab>", ":tabprevious<cr>", { silent = true })
keymap("n", "<tab>", ":tabNext<cr>", { silent = true })
keymap("n", "<C-q>", ":tabclose<cr>", { silent = true })

-- here because.. i don't know either LOL
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
