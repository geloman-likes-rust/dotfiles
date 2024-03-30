return {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            go = { 'goimports', 'gofmt' },
            rust = { 'rustfmt' },
            ocaml = { 'ocamlformat' },
            typescript = { { "prettierd", "prettier" } },
            typescriptreact = { { "prettierd", "prettier" } },
            javascript = { { "prettierd", "prettier" } },
            javascriptreact = { { "prettierd", "prettier" } },
            json = { { "prettierd", "prettier" } },
            html = { { "prettierd", "prettier" } },
            css = { { "prettierd", "prettier" } },
        },
        format_on_save = {
            lsp_fallback = true,
            timeout_ms = 500,
        },
        notify_on_error = false
    }
}
