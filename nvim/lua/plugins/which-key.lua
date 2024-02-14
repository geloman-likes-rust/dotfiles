return {
    'folke/which-key.nvim',
    enabled = true,
    event = { "InsertEnter", "CursorMoved" },
    keys = { "<leader>", "<c-r>", "<c-w>", '"', "`", "c", "v", "g" },
    config = function()
        require("which-key").setup()
    end
}
