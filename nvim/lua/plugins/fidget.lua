return {
  'j-hui/fidget.nvim',
  tag = "v1.0.0",
  event = "InsertEnter",
  config = function()
    require("config.plugin.fidget")
  end,
}
