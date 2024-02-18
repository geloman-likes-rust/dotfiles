return {
    'dgrbrady/nvim-docker',
    keys = { { "<leader>C", desc = "List Docker Containers" } },
    config = function()
        vim.keymap.set("n", "<leader>C", require("nvim-docker").containers.list_containers, {})
    end,
    dependencies = { 'nvim-lua/plenary.nvim', 'MunifTanjim/nui.nvim', 'pvsfair/reactivex.nvim' },
}
