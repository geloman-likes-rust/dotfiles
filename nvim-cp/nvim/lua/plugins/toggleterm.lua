return {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    keys = { { "<leader>tm", function() vim.cmd("ToggleTerm") end, desc = "Toggle Terminal" } },
    opts = {
        direction = "float",
        float_opts = {
            border = "curved",
            title_pos = "center"
        }
    }
}
