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
        local extras = require 'luasnip.extras'
        local format = require 'luasnip.extras.fmt'
        luasnip.add_snippets('yaml', require('snippets.yaml')(luasnip, format))
        luasnip.add_snippets('lua', require('config.snippets.lua')(luasnip, format, extras))
        luasnip.add_snippets('cs', require('config.snippets.csharp')(luasnip, format, extras))
        luasnip.add_snippets('python', require('config.snippets.python')(luasnip, format, extras))
        luasnip.add_snippets('editorconfig', require('config.snippets.editorconfig')(luasnip, format))
    end
}
