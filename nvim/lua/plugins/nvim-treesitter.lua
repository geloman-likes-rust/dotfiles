return {
    'nvim-treesitter/nvim-treesitter',
    priority = 1500,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    event = "BufReadPost",
    config = function()
        local parsers = { 'lua', 'rust', 'ocaml', 'html', 'tsx', 'typescript', 'javascript', 'vimdoc' }
        require('nvim-treesitter.configs').setup {
            ensure_installed = parsers,
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true, disable = { 'python', 'html' } },
        }
    end,
    dependencies = { 'nvim-treesitter/playground' },
    build = ":TSUpdate",
}
