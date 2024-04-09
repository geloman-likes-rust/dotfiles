return function(luasnip, format, extras)
    local rep = extras.rep
    local fmt = format.fmt
    local fmta = format.fmta
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
        snippet('init', c(1, {
            fmt(
                [[
                def __init__(self, {a}):
                    self.{} = {}
            ]], { a = i(1, 'a'), rep(1), rep(1) }
            ),
            fmt(
                [[
                def __init__(self, {a}, {b}):
                    self.{} = {}
                    self.{} = {}
            ]], { a = i(1, 'a'), rep(1), rep(1), b = i(2, 'b'), rep(2), rep(2) }
            ),
            fmt(
                [[
                def __init__(self, {a}, {b}, {c}):
                    self.{} = {}
                    self.{} = {}
                    self.{} = {}
            ]], { a = i(1, 'a'), rep(1), rep(1), b = i(2, 'b'), rep(2), rep(2), c = i(3, 'c'), rep(3), rep(3) }
            ),
            fmt(
                [[
                def __init__(self, {a}, {b}, {c}, {d}):
                    self.{} = {}
                    self.{} = {}
                    self.{} = {}
                    self.{} = {}
            ]],
                {
                    a = i(1, 'a'),
                    rep(1),
                    rep(1),
                    b = i(2, 'b'),
                    rep(2),
                    rep(2),
                    c = i(3, 'c'),
                    rep(3),
                    rep(3),
                    d = i(4, 'd'),
                    rep(4),
                    rep(4)
                }
            ),
        })),
    }
end
