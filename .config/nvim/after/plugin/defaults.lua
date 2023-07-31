-- tab space
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- set scrolloff
vim.o.scrolloff = 10
vim.o.sidescrolloff = 20

-- file explorer
vim.g.netrw_banner = 0 -- disable explorer banner

-- enable highlight on search
vim.o.hlsearch = true

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

-- format on save
vim.api.nvim_command('autocmd BufWritePre * Format')
