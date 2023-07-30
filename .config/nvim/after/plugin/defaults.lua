local function keymap(mode, lhs, rhs, opts)
  opts = opts or {}
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Default DiagnosticSign
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

-- tab space
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

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

-- window's resize
keymap("n", "=", ":vertical resize +5<cr>", { noremap = true, silent = true, desc = "[=] (+) vertical resize" })
keymap("n", "-", ":vertical resize -5<cr>", { noremap = true, silent = true, desc = "[-] (-) vertical resize" })
keymap("n", "_", "horizontal resize -3<cr>", { noremap = true, silent = true, desc = "[_] (-) horizontal resize" })
keymap("n", "+", "horizontal resize +3<cr>", { noremap = true, silent = true, desc = "[+] (+) horizontal resize" })

-- toggle highlight search
keymap("n", "<leader>q", ":set hlsearch!<cr>", { noremap = true, silent = true, desc = "toggle highlight search" })

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

-- here because.. haha i don't know either LOL
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- format on save
vim.api.nvim_command('autocmd BufWritePre * Format')
