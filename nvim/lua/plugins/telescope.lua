return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  cmd = "Telescope",
  config = function()
    require("config.plugin.telescope")
  end,
  dependencies = { 'nvim-lua/plenary.nvim' }
}
