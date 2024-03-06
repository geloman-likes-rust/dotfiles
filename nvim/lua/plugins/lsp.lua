return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require('neodev').setup()
        local lspconfig = require("lspconfig")
        local util = lspconfig.util

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
        lspconfig.lua_ls.setup {
            autostart = true,
            cmd = { 'lua-language-server' },
            capabilities = capabilities,
        }

        -- lspconfig.rust_analyzer.setup {
        --     autostart = true,
        --     cmd = { 'rust-analyzer' },
        --     capabilities = capabilities,
        --     root_dir = util.root_pattern('Cargo.toml', 'Cargo.lock')
        -- }

        -- lspconfig.omnisharp.setup {
        --     cmd = { "dotnet", "$HOME/.omnisharp-roslyn/OmniSharp.dll" },
        --     enable_editorconfig_support = true,
        --     enable_roslyn_analyzers = true,
        --     analyze_open_documents_only = true,
        -- }

        -- lspconfig.lua_ls.setup {
        --     autostart = true,
        --     cmd = { 'typescript-language-server' },
        --     capabilities = capabilities,
        --     root_dir = util.root_pattern('package.json', 'package-lock.json')
        -- }
    end,
    dependencies = { "folke/neodev.nvim", cmd = "Neoconf" },
}
