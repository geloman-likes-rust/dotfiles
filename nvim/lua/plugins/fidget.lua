return {
    'j-hui/fidget.nvim',
    tag = "legacy",
    event = "InsertEnter",
    opts = {
        text = {
            spinner = "circle_quarters"
        },
        timer = {
            fidget_decay = 250,
        },
        window = {
            border = "rounded",
            blend = 0
        }
    },
    config = function(_, opts)
        require("fidget").setup(opts)
    end,
}
