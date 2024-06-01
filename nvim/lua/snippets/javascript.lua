return function(luasnip, format)
    local fmt = format.fmt
    local i = luasnip.insert_node
    local snippet = luasnip.snippet

    return {
        snippet('middleware', fmt(
            [[
                /**
                 * @param {{Request}} req - The Express request object.
                 * @param {{Response}} res - The Express response object.
                 * @param {{NextFunction}} next - The next middleware function.
                 * @returns {{Promise<any> | void}} Either calls next() or returns HTTP response.
                 */
                function {middleware}(req, res, next) {{
                  next()
                }}
            ]], { middleware = i(1, 'middleware') }
        ))
    }
end
