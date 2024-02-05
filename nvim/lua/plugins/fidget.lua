return {
  'j-hui/fidget.nvim',
  tag = "legacy",
  event = "InsertEnter",
  config = function()
    require("config.plugin.fidget")
  end,
}
