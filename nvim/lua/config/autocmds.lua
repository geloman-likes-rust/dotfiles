-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    pattern = '*',
    group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup("geloman/LspAttach", { clear = true }),
    callback = function(event)
        local keymap = function(keys, func, desc)
            if desc then
                desc = 'LSP: ' .. desc
            end
            vim.keymap.set('n', keys, func, { buffer = event.buf, desc = desc })
        end
        keymap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        keymap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        keymap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
        keymap('<leader>lr', vim.lsp.buf.references, '[L]sp [R]eferences')
        keymap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
        keymap('gt', vim.lsp.buf.type_definition, '[G]oto [T]ype Definition')
        keymap('K', vim.lsp.buf.hover, 'Hover Documentation')
        keymap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
        keymap('<C-w>d', vim.diagnostic.open_float, 'Open Floating Diagnostic')
        keymap(']d', vim.diagnostic.goto_next, 'Next Diagnostic')
        keymap('[d', vim.diagnostic.goto_prev, 'Previous Diagnostic')

        -- Default DiagnosticSign
        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl })
        end

        -- rounded border for diagnostic popup
        vim.diagnostic.config { signs = true, float = { border = 'rounded' } }

        -- rounded border for textDocument/hover
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover, { border = "rounded" }
        )
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help, { border = "rounded" }
        )

        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                buffer = event.buf,
                callback = vim.lsp.buf.document_highlight
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
                buffer = event.buf,
                callback = vim.lsp.buf.clear_references
            })
        end
    end,
})
