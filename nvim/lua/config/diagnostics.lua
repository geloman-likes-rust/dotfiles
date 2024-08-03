-- Default DiagnosticSign
local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = "󰋽 " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

-- Diagnostic Config
vim.diagnostic.config {
    signs = true,
    float = { border = 'rounded' },
    virtual_text = {
        prefix = '',
        format = function(diagnostic)
            local diagnostic_message = {
                [vim.diagnostic.severity.ERROR] = "󰅚 " .. diagnostic.message,
                [vim.diagnostic.severity.WARN] = "󰀪 " .. diagnostic.message,
                [vim.diagnostic.severity.INFO] = "󰋽 " .. diagnostic.message,
                [vim.diagnostic.severity.HINT] = "󰌶 " .. diagnostic.message
            }
            return diagnostic_message[diagnostic.severity]
        end,
    },
}
