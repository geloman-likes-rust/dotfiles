return function(luasnip, format, extras)
    local rep = extras.rep
    local fmt = format.fmt
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
        snippet('argk', c(1, {
            fmt(
                [[
                    def {func}(*args, **kwargs):
                        {body}
                ]], { func = i(1, 'func'), body = i(2, '# write function body here') }
            ),
            fmt(
                [[
                    {func}(*args, **kwargs)
                ]], { func = i(1, 'func') }
            ),
        })),
        snippet('Blueprint', fmt(
            [[
                {blueprint} = Blueprint('{}', __name__)
            ]], { blueprint = i(1), rep(1) }
        )),
        snippet('CREATED', { t('return "", 201 # 201 - created') }),
        snippet('NO_CONTENT', { t('return "", 204 # 204 - NO CONTENT') }),
        snippet('BAD_REQUEST', { t('return "", 400 # 400 - BAD REQUEST') }),
        snippet('UNAUTHORIZED', { t('return "", 401 # 401 - UNAUTHORIZED') }),
        snippet('PAYMENT_REQUIRED', { t('return "", 402 # 402 - PAYMENT REQUIRED') }),
        snippet('FORBIDDEN', { t('return "", 403 # 403 - FORBIDDEN') }),
        snippet('NOT_FOUND', { t('return "", 404 # 404 - NOT FOUND') }),
        snippet('CONFLICT', fmt(
            [[
                return {{"error": "{}"}}, 409 # 409 - CONFLICT
            ]], { i(1) }
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
        snippet('data.get', fmt(
            [[
                {attrib} = data.get('{}')
            ]], { attrib = i(1), rep(1) }
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
