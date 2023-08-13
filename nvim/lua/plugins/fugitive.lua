return {
  'tpope/vim-fugitive',
  cmd = { "Git", "Gvdiffsplit" },
  -- ft = { "gitcommit", "diff" },
  -- init = function()
  --   vim.api.nvim_create_autocmd({ "BufRead" }, {
  --     group = vim.api.nvim_create_augroup("FugitiveLazyLoad", { clear = true }),
  --     callback = function()
  --       vim.fn.system("git -C " .. '"' .. vim.fn.expand "%:p:h" .. '"' .. " rev-parse")
  --       if vim.v.shell_error == 0 then
  --         vim.api.nvim_del_augroup_by_name "FugitiveLazyLoad"
  --         vim.schedule(function()
  --           require("lazy").load { plugins = { "vim-fugitive" } }
  --         end)
  --       end
  --     end,
  --   })
  -- end,
  -- config = function()
  --   -- custom keymaps
  --   vim.keymap.set("n", "<leader>gc", ":Git commit<cr>", { noremap = true, silent = true, desc = "[G]it [C]ommit" })
  --   vim.keymap.set("n", "<leader>gp", ":Git push<cr>", { noremap = true, desc = "[G]it [P]ush" })
  --   vim.keymap.set("n", "<leader>G", ":vertical Git<cr>", { noremap = true, silent = true, desc = "[G]it fugitive" })
  --   vim.keymap.set("n", "<leader>gds", ":Gvdiffsplit<cr>",
  --     { noremap = true, silent = true, desc = "[G]it [D]iff [S]plit" })
  -- end
  dependencies = { 'tpope/vim-rhubarb' }
}
