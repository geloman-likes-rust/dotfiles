return {
  'j-hui/fidget.nvim',
  tag = "legacy",
  event = "LspAttach",
  config = function()
    require("config.plugin.fidget")
  end,
}
