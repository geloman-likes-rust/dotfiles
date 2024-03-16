return {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUI", "DBUIClose", "DBUIToggle", "DBUIAddConnection" },
    keys = {
        { "<leader>dt", "<cmd>DBUIToggle<cr>",        desc = "DBUIToggle" },
        { "<leader>dq", "<cmd>DBUIClose<cr>",         desc = "DBUIClose" },
        { "<leader>da", "<cmd>DBUIAddConnection<cr>", desc = "DBUIAddConnection" },
    },
    dependencies = { "kristijanhusak/vim-dadbod-ui", --[["kristijanhusak/vim-dadbod-completion"]] },
}
