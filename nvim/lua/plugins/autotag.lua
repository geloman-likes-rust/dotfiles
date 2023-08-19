return {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = { autotag = { enable = true } },
    config = function(_, opts) require('nvim-ts-autotag').setup(opts) end
}
