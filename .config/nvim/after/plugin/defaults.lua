local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- keymap("n", "<C-=>", ":resize +2<CR>", opts)
-- keymap("n", "<C-->", ":resize -2<CR>", opts)
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)
