return {
    'tpope/vim-fugitive',
    cmd = { "Git", "Gvdiffsplit" },
    dependencies = { 'tpope/vim-rhubarb' },
    keys = function()
        return {
            { "<leader>gc",  function() vim.cmd("Git commit") end,   desc = "[G]it [C]ommit" },
            { "<leader>gp",  function() vim.cmd("Git push") end,     desc = "[G]it [P]ush" },
            { "<leader>G",   function() vim.cmd("vertical Git") end, desc = "[G]it fugitive" },
            { "<leader>gds", function() vim.cmd("Gvdiffsplit") end,  desc = "[G]it [D]iff [S]plit" },
        }
    end,
}
