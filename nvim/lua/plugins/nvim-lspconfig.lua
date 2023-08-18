return {
    'neovim/nvim-lspconfig',
    event = "BufReadPost",

    config = function()
        require("config.plugin.nvim-lspconfig")
    end,
    dependencies = { 'williamboman/mason-lspconfig.nvim', 'folke/neodev.nvim' },
}
