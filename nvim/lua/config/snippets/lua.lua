local luasnip = require 'luasnip'
local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta

local t = luasnip.text_node
local i = luasnip.insert_node
local c = luasnip.choice_node
local snippet = luasnip.snippet

return {
    snippet('ifn', fmt(
        [[
            function() {} end
        ]], { i(1) }
    )),
    snippet('lr', fmt(
        [[
            local {} = require('{}')
        ]], { i(1), rep(1) }
    )),
}
