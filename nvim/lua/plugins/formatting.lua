return {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'black' },
            go = { 'gofmt' },
            rust = { 'rustfmt' },
            ocaml = { 'ocamlformat' },
            typescript = { 'prettier' },
            typescriptreact = { 'prettier' },
            javascript = { 'prettier' },
            javascriptreact = { 'prettier' },
            json = { 'prettier' },
            html = { 'prettier' },
            css = { 'prettier' },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
        notify_on_error = false
    }
}
