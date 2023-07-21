return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup { transparent = true,
      commentStyle = { italic = true, bold = true },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      }
    }
  end
}
