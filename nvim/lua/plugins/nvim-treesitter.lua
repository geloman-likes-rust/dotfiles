return {
    'nvim-treesitter/nvim-treesitter',
    priority = 1500,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    event = "BufReadPost",
    config = function()
        vim.defer_fn(function()
            local parsers = { 'lua', 'rust', 'dockerfile', 'html', 'tsx', 'typescript', 'javascript', 'vimdoc' }
            require('nvim-treesitter.configs').setup {
                modules = {},
                auto_install = false,
                sync_install = false,
                ignore_install = {},
                ensure_installed = parsers,
                highlight = { enable = true },
                indent = { enable = true, disable = { 'python', 'html' } },
            }
        end, 0)
    end,
    dependencies = { 'nvim-treesitter/playground' },
    build = ":TSUpdate",
}
