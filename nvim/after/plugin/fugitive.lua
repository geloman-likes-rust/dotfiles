-- custom keymaps
vim.keymap.set("n", "<leader>gc", ":Git commit<cr>", { noremap = true, silent = true, desc = "[G]it [C]ommit" })
vim.keymap.set("n", "<leader>gp", ":Git push<cr>", { noremap = true, desc = "[G]it [P]ush" })
vim.keymap.set("n", "<leader>G", ":vertical Git<cr>", { noremap = true, silent = true, desc = "[G]it fugitive" })
vim.keymap.set("n", "<leader>gds", ":Gvdiffsplit<cr>",
  { noremap = true, silent = true, desc = "[G]it [D]iff [S]plit" })
