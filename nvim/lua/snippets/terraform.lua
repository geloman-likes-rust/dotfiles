return function(luasnip, format, extras)
  local fmta = format.fmta
  local t = luasnip.text_node
  local rep = extras.rep
  local i = luasnip.insert_node
  local c = luasnip.choice_node
  local snippet = luasnip.snippet
  return {
    snippet('terraform', c(1, {
      fmta(
        [[
          terraform {
            required_providers {
              aws = {
                source = "hashicorp/aws"
                version = "<version>"
              }
            }
          }
        ]], { version = i(1, "~> 5.0") }
      ),
      fmta(
        [[
          terraform {
            required_providers {
              digitalocean = {
                source = "digitalocean/digitalocean"
                version = "<version>"
              }
            }
          }
        ]], { version = i(1, "~> 2.0") }
      ),
      fmta(
        [[
          terraform {
            required_providers {
              azurerm = {
                source = "hashicorp/azurerm"
                version = "<version>"
              }
            }
          }
        ]], { version = i(1, "=3.0.0") }
      ),
    })),
    snippet('variable', fmta(
      [[
        variable "<var>" {
          default = "<default>"
        }
      ]], { var = i(1, 'name'), default = i(2, 'default') }
    )),
  }
end
