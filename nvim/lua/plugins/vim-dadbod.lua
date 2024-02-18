return {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUI", "DBUIToggle" },
    keys = { { "<leader>db", desc = "DBUIToggle" } },
    config = function()
        vim.keymap.set('n', '<leader>db', function() vim.cmd('DBUIToggle') end, {})
    end,
    dependencies = { "kristijanhusak/vim-dadbod-ui", --[["kristijanhusak/vim-dadbod-completion"]] },
}
