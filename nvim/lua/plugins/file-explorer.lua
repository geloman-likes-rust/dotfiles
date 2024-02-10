return {
    'nvim-tree/nvim-tree.lua',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = function()
        return { { '<leader>e', function() vim.cmd('NvimTreeToggle') end, desc = "Toogle File Explorer" } }
    end,
}
