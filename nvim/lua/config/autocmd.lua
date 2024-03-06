-- set cursorline/cursorcolumn on InsertEnter
vim.api.nvim_create_autocmd("InsertEnter", {
    pattern = "*",
    callback = function()
        vim.opt.cursorline = true
        vim.opt.cursorcolumn = true
    end
})

-- set nocursorline/nocursorcolumn on InsertLeave
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = "*",
    callback = function()
        vim.opt.cursorline = false
        vim.opt.cursorcolumn = false
    end
})

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

vim.api.nvim_create_autocmd('LspAttach', {
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
        keymap('<leader>fm', vim.lsp.buf.format, 'Format Current Buffer')

        -- format on save
        vim.api.nvim_create_autocmd("BufWritePost",
            { callback = function() vim.lsp.buf.format() end })

        -- Default DiagnosticSign
        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl })
        end
    end,
})
