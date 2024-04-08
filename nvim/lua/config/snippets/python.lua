local luasnip = require 'luasnip'
local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta

local t = luasnip.text_node
local i = luasnip.insert_node
local c = luasnip.choice_node
local snippet = luasnip.snippet

return {
    snippet('fn', fmt(
        [[
            def {name}({args}) -> {returns}:
                {body}
        ]], { name = i(1, 'name'), args = i(2, 'args'), returns = i(3, 'None'), body = i(4, 'pass') }
    )),
    snippet('main', fmt(
        [[
            def main() -> None:
                {start}


            if __name__ == "__main__":
                main()
        ]], { start = i(0) }
    )),
    snippet('s.', fmt(
        [[
            self.{prop} = {val}
        ]], { prop = i(1), val = rep(1) }
    )),
    snippet('col', fmt(
        [[
            {prop} = Column("{column}", {type})
        ]], { prop = i(1), column = rep(1), type = i(2, "_") }
    )),
}
