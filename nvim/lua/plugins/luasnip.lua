return {
    'L3MON4D3/LuaSnip',
    keys = function()
        local luasnip = require 'luasnip'
        local expand = function() luasnip.expand() end
        local change_choice = function()
            if luasnip.choice_active() then
                luasnip.change_choice(1)
            end
        end
        return {
            { '<C-space>', mode = 'i',          expand },
            { '<C-e>',     mode = { 'i', 's' }, change_choice },
        }
    end,
    config = function()
        local luasnip = require 'luasnip'
        luasnip.add_snippets('lua', require('config.snippets.lua'))
        luasnip.add_snippets('cs', require('config.snippets.csharp'))
        luasnip.add_snippets('python', require('config.snippets.python'))
    end
}
