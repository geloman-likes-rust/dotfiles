return function(luasnip, format, extras)
    local rep = extras.rep
    local fmt = format.fmt
    local i = luasnip.insert_node
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
end
