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
        snippet('namedtuple', fmt(
            [[
                {name} = namedtuple('{}', field_names=[{fields}])
            ]], { name = i(1), rep(1), fields = i(2) }
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
    }
end
