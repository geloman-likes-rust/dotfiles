return {
    'L3MON4D3/LuaSnip',
    keys = { { '<C-space>', function() require('luasnip').expand() end, mode = 'i' } },
    config = function()
        local luasnip = require 'luasnip'
        luasnip.add_snippets('lua', require('config.snippets.lua'))
        luasnip.add_snippets('cs', require('config.snippets.csharp'))
        luasnip.add_snippets('python', require('config.snippets.python'))
    end
}
