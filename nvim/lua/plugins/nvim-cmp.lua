return {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    config = function()
        require("config.plugin.nvim-cmp")
    end,
    dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        "rafamadriz/friendly-snippets",
    },
}
