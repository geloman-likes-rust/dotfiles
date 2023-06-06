return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup {
      autotag = {
        enable = true,
      }
    }
  end,
}
