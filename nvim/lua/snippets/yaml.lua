return function(luasnip, format)
    local fmt = format.fmt
    local snippet = luasnip.snippet
    return {
        snippet('prc', fmt(
            [[
                trailingComa: "es5"
                semi: false
                tabWidth: 2
                singleQoute: true
                arrowParens: "avoid"
                bracketSpacing: true
                endOfLine: "lf"
            ]], {}
        )),
    }
end
