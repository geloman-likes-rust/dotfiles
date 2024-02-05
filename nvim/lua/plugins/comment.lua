return {
    "numToStr/Comment.nvim",
    keys = { "gc", "gb", "gcc", "gbc" },
    config = function()
        require("Comment").setup()
    end,
    opts = {}
}
