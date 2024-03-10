return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require('neodev').setup()
        local lspconfig = require("lspconfig")
        local util = lspconfig.util

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        --[[ LUA LSP ]]
        lspconfig.lua_ls.setup {
            autostart = true,
            cmd = { 'lua-language-server' },
            capabilities = capabilities,
        }

        --[[ RUST LSP ]]
        lspconfig.rust_analyzer.setup {
            autostart = true,
            cmd = { 'rust-analyzer' },
            capabilities = capabilities,
            root_dir = util.root_pattern('Cargo.toml', 'Cargo.lock', 'rust-project.json')
        }

        --[[ OCAML LSP ]]
        require 'lspconfig'.ocamllsp.setup {
            autostart = true,
            cmd = { 'ocamllsp' },
            capabilities = capabilities,
            root_dir = util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace")
        }

        --[[ GOLANG LSP ]]
        lspconfig.gopls.setup {
            autostart = true,
            cmd = { 'gopls' },
            capabilities = capabilities,
            root_dir = util.root_pattern("go.work", "go.mod", ".git")
        }

        --[[ CSHARP LSP ]]
        lspconfig.omnisharp.setup {
            name = 'omnisharp-roslyn',
            autostart = true,
            cmd = { 'OmniSharp' },
            capabilities = capabilities,
            enable_editorconfig_support = true,
            enable_import_completion = true,
            enable_roslyn_analyzers = true,
            root_dir = util.root_pattern("*.sln", "*.csproj", "omnisharp.json", "function.json")
        }

        --[[ TYPESCRIPT LSP ]]
        lspconfig.tsserver.setup {
            autostart = true,
            cmd = { 'typescript-language-server', '--stdio' },
            capabilities = capabilities,
            root_dir = util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git")
        }

        --[[ SVELTE LSP ]]
        lspconfig.svelte.setup {
            autostart = true,
            cmd = { "svelteserver", "--stdio" },
            capabilities = capabilities,
            root_dir = util.root_pattern("package.json", ".git")
        }
    end,
    dependencies = { "folke/neodev.nvim", cmd = "Neoconf" },
}
