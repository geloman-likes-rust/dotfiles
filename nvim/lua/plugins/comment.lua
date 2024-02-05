return {
    "numToStr/Comment.nvim",
    keys = { "gc", "gb", "gcc", "gbc" },
    event = { "InsertEnter" },
    config = function()
        require("Comment").setup()
    end,
    opts = {}
}
