local on_attach = function(_, bufnr)
    local keymap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    -- LSP SPECIFIC KEYMAPS
    keymap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    keymap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    keymap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    keymap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    keymap('gt', vim.lsp.buf.type_definition, '[G]oto [T]ype Definition')
    keymap('K', vim.lsp.buf.hover, 'Hover Documentation')
    keymap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
    keymap('<leader>do', vim.diagnostic.open_float, 'Open Floating Diagnostic')
    keymap('<leader>dn', vim.diagnostic.goto_next, 'Next Diagnostic')
    keymap('<leader>dp', vim.diagnostic.goto_prev, 'Previous Diagnostic')
    keymap('<leader>fm', vim.lsp.buf.format, 'Format Current Buffer')

    -- format on save
    vim.api.nvim_create_autocmd("BufWritePost",
        { callback = function() vim.lsp.buf.format() end })
end

return {
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonLog", "MasonUpdate", "MasonInstall", "MasonUninstall", "MasonUninstallAll" },
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        config = function()
            -- Default DiagnosticSign
            local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl })
            end

            local mason_lspconfig = require("mason-lspconfig")

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

            local language_servers = {
                lua_ls = {
                    Lua = { diagnostics = { globals = { "vim" } } }
                },
            }
            mason_lspconfig.setup { ensure_installed = vim.tbl_keys(language_servers) }

            mason_lspconfig.setup_handlers {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        on_attach = on_attach,
                        capabilities = capabilities,
                        settings = language_servers[server_name],
                        filetypes = (language_servers[server_name] or {}).filetypes,
                    }
                end,
                ["lua_ls"] = function()
                    require("neodev").setup()
                    require("lspconfig").lua_ls.setup({
                        on_attach = on_attach,
                        capabilities = capabilities,
                    })
                end,
            }
        end,
        dependencies = { "neovim/nvim-lspconfig" },
    },
}
