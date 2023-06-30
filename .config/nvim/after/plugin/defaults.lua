local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- tab space
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- file explorer
vim.g.netrw_banner = 0 -- disable explorer banner

-- disable highlight on search
vim.o.hlsearch = false

-- sync clipboard between os and neovim.
vim.o.clipboard = 'unnamedplus'

-- enable break indent
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true

-- case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

-- line number
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true

-- set colorscheme
vim.cmd.colorscheme 'onedark'

-- window's width resize
keymap("n", "=", "[[<cmd>vertical resize +5<cr>]]", opts)
keymap("n", "-", "[[<cmd>vertical resize -5<cr>]]", opts)

-- window's height resize
keymap("n", "_", "[[<cmd>horizontal resize -3<cr>]]", opts)
keymap("n", "+", "[[<cmd>horizontal resize +3<cr>]]", opts)

-- toggle filetree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- toggle trouble
vim.keymap.set("n", "<leader>L", ":TroubleToggle<CR>", opts)

-- git diffsplit
vim.keymap.set("n", "<leader>gs", ":Gvdiffsplit<CR>", opts)

-- switch to previous/next file
vim.keymap.set("n", "<leader>n", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>N", ":bNext<CR>", opts)

-- move cursor to bottom/top and center the screen
vim.keymap.set("n", "H", "Hzz")
vim.keymap.set("n", "L", "Lzz")
vim.keymap.set("n", "G", "Gzz")

-- here because.. haha i don't know either LOL
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- format on save
vim.api.nvim_command('autocmd BufWritePre * Format')
