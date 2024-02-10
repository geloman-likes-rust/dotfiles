-- "<c-w>", "z", "g", '"', "'"
return {
    'folke/which-key.nvim',
    enabled = true,
    event = { "InsertEnter" },
    keys = { "<leader>", "<c-r>", "<c-w>", '"', "`", "c", "v", "g" },
    config = function()
        require("which-key").setup()
    end
}
