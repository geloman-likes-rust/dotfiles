return function(luasnip, format)
    local fmta = format.fmta
    local snippet = luasnip.snippet
    return {
        snippet('gen', fmta(
            [[
                root = true

                [*]
                end_of_line = lf
                insert_final_newline = true

                [*.py]
                charset = utf-8
                indent_style = space
                indent_size = 4
            ]], {}
        ))
    }
end
