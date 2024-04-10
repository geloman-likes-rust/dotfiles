return function(luasnip, format)
    local fmt = format.fmt
    local i = luasnip.insert_node
    local snippet = luasnip.snippet
    return {
        snippet('FROM', fmt(
            [[
                FROM {image}:{tag}
            ]], { image = i(1, 'image'), tag = i(2, 'latest') }
        )),
        snippet('WORKDIR', fmt(
            [[
                WORKDIR {workdir}
            ]], { workdir = i(1, '/app') }
        )),
        snippet('COPY', fmt(
            [[
                COPY {from} {to}
            ]], { from = i(1, '.'), to = i(2, '/app') }
        )),
        snippet('RUN', fmt(
            [[
                RUN {}
            ]], { i(1, 'command') }
        )),
        snippet('EXPOSE', fmt(
            [[
                EXPOSE {port}
            ]], { port = i(1, '6969') }
        )),
        snippet('ENTRYPOINT', fmt(
            [[
                ENTRYPOINT ["{command}"]
            ]], { command = i(1) }
        )),
        snippet('CMD', fmt(
            [[
                CMD ["{command}"]
            ]], { command = i(1) }
        )),
    }
end
