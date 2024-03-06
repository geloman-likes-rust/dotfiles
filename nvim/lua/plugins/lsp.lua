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

        lspconfig.rust_analyzer.setup {
            autostart = true,
            cmd = { 'rust-analyzer' },
            capabilities = capabilities,
            root_dir = util.root_pattern('Cargo.toml', 'Cargo.lock', 'rust-project.json')
        }

        lspconfig.omnisharp.setup {
            name = 'omnisharp-roslyn',
            autostart = true,
            cmd = { 'OmniSharp' },
            capabilities = capabilities,
            enable_editorconfig_support = true,
            enable_roslyn_analyzers = true,
            analyze_open_documents_only = true,
            root_dir = util.root_pattern("*.sln", "*.csproj", "omnisharp.json", "function.json")
        }

        lspconfig.tsserver.setup {
            autostart = true,
            cmd = { 'typescript-language-server' },
            capabilities = capabilities,
        }
    end,
    dependencies = { "folke/neodev.nvim", cmd = "Neoconf" },
}
