return {
    "folke/flash.nvim",
    opts = {},
    keys = function()
        local flash = require 'flash'
        local toggle = function() flash.toggle() end
        local jump = function() flash.jump() end
        return {
            { "<leader>s",  jump,   desc = "Flash Jump" },
            { "<leader>tf", toggle, desc = "Flash Toggle" },
        }
    end
}
