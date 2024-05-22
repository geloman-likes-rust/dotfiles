return {
    {
        "rest-nvim/rest.nvim",
        dependencies = { "luarocks.nvim" },
        ft = "http",
        opts = {
            result = {
                split = {
                    horizontal = true,
                    in_place = true,
                    stay_in_current_window_after_split = false,
                },
            },
            keybinds = {
                {
                    "<localleader>rr", "<cmd>Rest run<cr>", "Run request under the cursor",
                },
                {
                    "<localleader>rl", "<cmd>Rest run last<cr>", "Re-run latest request",
                },
            }
        },
        config = function(_, opts)
            ---@diagnostic disable-next-line: missing-fields
            require("rest-nvim").setup(opts)
        end,
        init = function()
            vim.api.nvim_create_user_command("Curl", function()
                local tmp = vim.fn.system('mktemp' .. ' request.XXXXXXXXXXXX.http ' .. '--tmpdir')
                if vim.v.shell_error == 0 then
                    vim.cmd("edit " .. tmp)
                end
            end, {})
            vim.keymap.set('n', '<localleader>rc', '<cmd>Curl<cr>', { desc = 'Create Rest Client' })
        end
    },
    {
        "vhyrro/luarocks.nvim",
        lazy = true,
        opts = { rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" } }
    },
}
