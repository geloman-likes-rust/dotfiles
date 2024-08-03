return {
    'mfussenegger/nvim-lint',
    config = function()
        require('lint').linters_by_ft = {
            javascript = { 'eslint' },
            typescript = { 'eslint' },
            javascriptreact = { 'eslint' },
            typescriptreact = { 'eslint' },
            svelte = { 'eslint' },
        }
    end,

    init = function()
        vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'InsertLeave', 'BufWritePost' }, {
            group = vim.api.nvim_create_augroup('PerformLinting', { clear = true }),
            callback = function()
                require("lint").try_lint(nil, { ignore_errors = true })
            end
        })
    end
}
