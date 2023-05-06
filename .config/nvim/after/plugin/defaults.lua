local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- tab space
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.smartcase = true

-- line number
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true

-- window's width resize
keymap("n", "=", "[[<cmd>vertical resize +5<cr>]]", opts)
keymap("n", "-", "[[<cmd>vertical resize -5<cr>]]", opts)

-- window's height resize
keymap("n", "_", "[[<cmd>horizontal resize -3<cr>]]", opts)
keymap("n", "+", "[[<cmd>horizontal resize +3<cr>]]", opts)

-- toggle filetree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- format on save
vim.api.nvim_command('autocmd BufWritePre * Format')
