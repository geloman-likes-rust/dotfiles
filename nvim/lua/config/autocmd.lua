-- set cursorline/cursorcolumn on InsertEnter
vim.api.nvim_create_autocmd("InsertEnter", {
    pattern = "*",
    callback = function()
        vim.opt.cursorline = true
        vim.opt.cursorcolumn = true
    end
})

vim.api.nvim_create_autocmd('BufEnter', {
    group = vim.api.nvim_create_augroup('RazorPagesHighlight', { clear = true }),
    pattern = "*.razor",
    callback = function()
        vim.o.filetype = 'html'
    end
})

-- set nocursorline/nocursorcolumn on InsertLeave
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    callback = function()
        vim.opt.cursorline = false
        vim.opt.cursorcolumn = false
    end
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufWritePost', 'BufNewFile' }, {
    pattern = { "*.html", "*.ts", "*.js", "*.css", "*.jsx", "*.tsx", "*.svelte" },
    group = vim.api.nvim_create_augroup('javascript-2spacestab', { clear = true }),
    callback = function()
        vim.o.tabstop = 2
        vim.o.softtabstop = 2
        vim.o.shiftwidth = 2
    end
})

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
        keymap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
        keymap('gt', vim.lsp.buf.type_definition, '[G]oto [T]ype Definition')
        keymap('K', vim.lsp.buf.hover, 'Hover Documentation')
        keymap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
        keymap('<leader>do', vim.diagnostic.open_float, 'Open Floating Diagnostic')
        keymap('<leader>dn', vim.diagnostic.goto_next, 'Next Diagnostic')
        keymap('<leader>dp', vim.diagnostic.goto_prev, 'Previous Diagnostic')

        -- Default DiagnosticSign
        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl })
        end

        -- rounded border for diagnostic popup
        vim.diagnostic.config { signs = true, float = { border = 'rounded', header = false } }

        -- rounded border for textDocument/hover
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover, { border = "rounded" }
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
