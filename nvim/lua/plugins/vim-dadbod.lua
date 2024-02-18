return {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUI", "DBUIToggle" },
    keys = function()
        return { { "<leader>db", function() vim.cmd("DBUIToggle") end, desc = "DBUIToggle" } }
    end,
    dependencies = { "kristijanhusak/vim-dadbod-ui", "kristijanhusak/vim-dadbod-completion" },
}
