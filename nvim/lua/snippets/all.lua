return function(luasnip, format, extras)
    local snippet = luasnip.snippet
    local rep = extras.rep
    local i = luasnip.insert_node
    local c = luasnip.choice_node
    local fmt = format.fmt
    return {
        snippet('DEV_DATABASE', c(1, {
            fmt(
                [[
                    # DEVELOPMENT DATABASE - MYSQL
                    docker run --rm -d \
                        --name {container} \
                        -e MYSQL_USER={user} \
                        -e MYSQL_PASSWORD={password} \
                        -e MYSQL_ROOT_PASSWORD={root_password} \
                        -e MYSQL_DATABASE={database} \
                        -p 3306:3306 \
                        mysql:{tag}
                    # DOCKER RUN MYSQL
                ]],
                {
                    container = i(1, 'default'),
                    user = rep(1, 'user'),
                    password = i(2, 'password'),
                    root_password = rep(2),
                    database = rep(1, 'database'),
                    tag = i(3, 'tag')
                }
            ),
            fmt(
                [[
                    # DEVELOPMENT DATABASE - POSTGRES
                    docker run --rm -d \
                        --name {container} \
                        -e POSTGRES_DB={database} \
                        -e POSTGRES_USER={user} \
                        -e POSTGRES_PASSWORD={password} \
                        -p 5432:5432 \
                        postgres:{tag}
                    # DOCKER RUN POSTGRES
                ]],
                {
                    container = i(1, 'default'),
                    database = rep(1),
                    user = rep(1),
                    password = i(2, 'password'),
                    tag = i(3, 'tag')
                }
            ),
        })),
    }
end
