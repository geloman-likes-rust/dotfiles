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
                local find_tmp_files = 'ls' .. ' ' .. '/tmp/request.*.http'
                vim.fn.system(find_tmp_files)
                if vim.v.shell_error == 0 then
                    local tmp_file = vim.fn.system(find_tmp_files .. ' | ' .. 'awk "NR == 1 {print}"')
                    vim.cmd("edit " .. tmp_file)
                else
                    local create_tmp_file = 'mktemp' .. ' request.XXXXXXXXXXXX.http ' .. '--tmpdir'
                    local tmp_file = vim.fn.system(create_tmp_file)
                    if vim.v.shell_error == 0 then
                        vim.cmd("edit " .. tmp_file)
                    end
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
