local luasnip = require 'luasnip'
-- local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta

local t = luasnip.text_node
local i = luasnip.insert_node
-- local c = luasnip.choice_node
local snippet = luasnip.snippet

return {
    snippet('?', { i(1, '_'), t(' ? '), i(2, '_'), t(' : '), i(3, '_') }),

    snippet('pd', fmt(
        [[
            Predicate<{type}> name = ({param}) => {cond};
        ]], { type = i(1, 'T'), param = i(2, 'param'), cond = i(0, 'cond') }
    )),

    snippet('pm', fmt(
        [[
            {first} switch
            {{
                {second} => {third},
                _ => {forth}
            }}
        ]], { first = i(1, '1st'), second = i(2, '2nd'), third = i(3, '3rd'), forth = i(4, '4th') }
    )),

    snippet('sc', fmta(
        [[
            public static class <name>
            {
                <>
            }
        ]], { name = i(1, 'MyClass'), i(0) }
    )),

    snippet('em', fmta(
        [[
            public static <Treturn> <name>(this <Tobj> <obj>)
            {
                <>
            }
        ]], { Treturn = i(1, 'Treturn'), name = i(2, 'Fn'), Tobj = i(3, 'Tobj'), obj = i(4, '_obj'), i(0) }
    )),
}
