local on_attach = function(_, bufnr)
    local keymap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

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
    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
    -- format on save
    vim.api.nvim_command('autocmd BufWritePre * Format')
end

-- Enable the following language servers
local language_servers = {
    lua_ls = {
        Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
            globals = { 'vim' }
        },
    },
}


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local mason_lspconfig = require 'mason-lspconfig'
mason_lspconfig.setup {
    ensure_installed = vim.tbl_keys(language_servers),
}

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = language_servers[server_name],
        }
    end,
}
