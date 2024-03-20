return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = function()
        local harpoon = require('harpoon')
        local add_file = function() harpoon:list():append() end
        local toggle_list = function() harpoon.ui:toggle_quick_menu(harpoon:list()) end
        local select_file = function(number) return function() harpoon:list():select(number) end end
        return {
            { '<leader>ha', add_file,        desc = 'Harpoon Add File' },
            { '<leader>ht', toggle_list,     desc = 'Harpoon Toggle List' },
            { '<leader>h1', select_file(1),  desc = 'Harpoon Buffer 1' },
            { '<leader>h2', select_file(2),  desc = 'Harpoon Buffer 2' },
            { '<leader>h3', select_file(3),  desc = 'Harpoon Buffer 3' },
            { '<leader>h4', select_file(4),  desc = 'Harpoon Buffer 4' },
            { '<leader>h5', select_file(5),  desc = 'Harpoon Buffer 5' },
            { '<leader>h6', select_file(6),  desc = 'Harpoon Buffer 6' },
            { '<leader>h7', select_file(7),  desc = 'Harpoon Buffer 7' },
            { '<leader>h8', select_file(8),  desc = 'Harpoon Buffer 8' },
            { '<leader>h9', select_file(9),  desc = 'Harpoon Buffer 9' },
            { '<leader>h0', select_file(10), desc = 'Harpoon Buffer 10' },
        }
    end,
    dependencies = { "nvim-lua/plenary.nvim" }
}
