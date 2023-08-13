pcall(require('telescope').load_extension, 'fzf') -- Enable telescope fzf native, if installed
local options = require("config.option.telescope")
require('telescope').setup(options)
