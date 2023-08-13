-- custom highlights
vim.cmd("highlight! DiffDelete guifg=#FC2947 guibg=#ffeeee")
vim.cmd("highlight! DiffAdd guifg=#03C988 guibg=#d6ffd6")

local options = require("config.option.gitsigns")
require("gitsigns").setup(options)
