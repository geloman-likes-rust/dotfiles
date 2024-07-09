return {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    opts = {
        formatters_by_ft = {
            terraform = { 'terraform_fmt' },
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

        format_after_save = {
            async = true,
            lsp_fallback = true
        },

        notify_on_error = false
    }
}
