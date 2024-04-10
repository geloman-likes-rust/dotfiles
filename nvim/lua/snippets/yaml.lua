return function(luasnip, format, extras)
  local fmt = format.fmt
  local rep = extras.rep
  local i = luasnip.insert_node
  local c = luasnip.choice_node
  local snippet = luasnip.snippet

  return {
    snippet('prettierrc', fmt(
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
    snippet('compose', fmt(
      [[
          services:
            {container}:
              container_name: {container_name}
              image: {image}
              ports:
                - {your_port}:{container_port}
              restart: on-failure
              env_file:
                - path: .env
                  required: false
              environment:
                - {environment}=${{{}:-""}}
      ]],
      {
        container = i(1, 'container'),
        container_name = rep(1),
        image = i(2, 'image'),
        your_port = i(3, 'port'),
        container_port = rep(3),
        environment = i(4, 'MY_ENVIRONMENT'),
        rep(4)
      }
    )),
    snippet('container', fmt(
      [[
        {container}:
          container_name: {container_name}
          image: {image}
          ports:
            - {your_port}:{container_port}
          restart: on-failure
          env_file:
            - path: .env
              required: false
          environment:
            - {environment}=${{{}:-""}}
      ]], {
        container = i(1, 'container'),
        container_name = rep(1),
        image = i(2, 'image'),
        your_port = i(3, 'port'),
        container_port = rep(3),
        environment = i(4, 'MY_ENVIRONMENT'),
        rep(4)
      }
    )),
    snippet('ENVIRONMENT', fmt(
      [[
        - {environment}=${{{}:-""}}
      ]], { environment = i(1, 'MY_ENVIRONMENT'), rep(1) }
    )),
    snippet('depends_on', fmt(
      [[
        depends_on:
          {container}:
            condition: {condition}
      ]], { container = i(1, 'container'), condition = i(2, 'service_healthy') }
    )),
    snippet('healthcheck', fmt(
      [[
        healthcheck:
          test: ["CMD", "{}"]
          interval: 5s
          timeout: 10s
          retries: 15
          start_period: 10s
      ]], { i(1) }
    )),
    snippet('networks', c(1, {
      fmt(
        [[
          networks:
            - {}
        ]], { i(1) }
      ),
      fmt(
        [[
          networks:
            {network}:
              driver: {driver}
        ]], {
          network = i(1, 'network'),
          driver = c(2, {
            i(1, 'bridge'),
            i(1, 'host'),
            i(1, 'none'),
            i(1, 'overlay'),
            i(1, 'ipvlan'),
            i(1, 'macvlan'),
          })
        }
      )
    })),
  }
end
