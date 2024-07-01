return function(luasnip, format)
    local fmt = format.fmt
    local t = luasnip.text_node
    local i = luasnip.insert_node
    local c = luasnip.choice_node
    local snippet = luasnip.snippet
    return {
        snippet('worker_processes', fmt(
            [[
                worker_processes {};
            ]], { c(1, { i(1, '1'), i(1, 'auto') }) }
        )),
        snippet('include', fmt(
            [[include  {file};]], { file = i(1, 'file') }

        )),
        snippet('events', fmt(
            [[
                events {{
                    {directive};
                }}
            ]], { directive = i(1, 'directive') }
        )),
        snippet('http', fmt(
            [[
                http {{
                    {directive};
                }}
            ]], { directive = i(1, 'directive') }
        )),
        snippet('server', fmt(
            [[
                server {{
                    listen  {port};
                }}
            ]], { port = i(1, '80') }
        )),
        snippet('location', fmt(
            [[
                location {location} {{
                    proxy_pass  http://127.0.0.1:{port};
                }}
            ]], { location = i(1, '/'), port = i(2, '8080') }
        )),
        snippet('upstream', fmt(
            [[
                upstream {upstream} {{
                    server {server};
                }}
            ]], { upstream = i(1, 'big_server_com'), server = i(2, '127.0.0.1') }
        )),
        snippet('localhost', t('127.0.0.1')),
        snippet('server_name', fmt(
            [[
                server_name {server_name};
            ]], { server_name = i(1, 'big.server.com') }
        )),
        snippet('access_log', fmt(
            [[
                access_log  {logfile};
            ]], { logfile = i(1, 'logs/access.log') }
        )),
        snippet('error_log', fmt(
            [[
                error_log  {logfile};
            ]], { logfile = i(1, 'logs/error.log') }
        )),
        snippet('listen', fmt(
            [[
                listen  {port};
            ]], { port = i(1, '80') }
        )),
        snippet('ssl_certificate', fmt(
            [[
                ssl_certificate /etc/letsencrypt/live/{certificate}/fullchain.pem
            ]], { certificate = i(1, 'certificate') }
        )),
        snippet('ssl_certificate_key', fmt(
            [[
                ssl_certificate_key /etc/letsencrypt/live/{certificate_key}/privkey.pem
            ]], { certificate_key = i(1, 'certificate_key') }
        )),
    }
end
