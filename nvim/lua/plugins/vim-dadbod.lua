return {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUI", "DBUIToggle" },
    keys = { { "<leader>db", '<cmd>DBUIToggle<cr>', desc = "DBUIToggle" } },
    dependencies = { "kristijanhusak/vim-dadbod-ui", --[["kristijanhusak/vim-dadbod-completion"]] },
}
