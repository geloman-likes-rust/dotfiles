return {
    "numToStr/Comment.nvim",
    opts = {},
    keys = function()
        local comment = require('Comment.api')
        return {
            { mode = 'v', 'gc',  function() comment.toggle.linewise() end },
            { mode = 'n', 'gcc', function() comment.toggle.linewise.current() end }
        }
    end,
}
