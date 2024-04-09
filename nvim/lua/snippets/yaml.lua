return function(luasnip, format, extras)
  local fmt = format.fmt
  local rep = extras.rep
  local i = luasnip.insert_node
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
              image: {image}
              ports:
                - {your_port}:{container_port}
              environment:
                - {environment}=
      ]],
      {
        container = i(1, 'container'),
        image = i(2, 'image'),
        your_port = i(3, 'port'),
        container_port = rep(3),
        environment = i(4, 'MY_ENVIRONMENT')
      }
    )),
    snippet('container', fmt(
      [[
        {container}:
          image: {image}
          port:
            - {your_port}:{container_port}
          environment:
            - {environment}=
      ]], {
        container = i(1, 'container'),
        image = i(2, 'image'),
        your_port = i(3, 'port'),
        container_port = rep(3),
        environment = i(4, 'MY_ENVIRONMENT')
      }
    )),
  }
end
