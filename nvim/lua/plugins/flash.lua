return {
    "folke/flash.nvim",
    keys = function()
        local flash = require 'flash'
        local toggle = function() flash.toggle() end
        local jump = function() flash.jump() end
        return {
            { "<leader>s",  jump,   desc = "Flash Jump" },
            { "<leader>tf", toggle, desc = "Flash Toggle" },
        }
    end,
    opts = {
        label = { rainbow = { enabled = true } },
        modes = { char = { enabled = false } }
    },
}
