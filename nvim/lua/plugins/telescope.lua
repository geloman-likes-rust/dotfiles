return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  cmd = "Telescope",
  config = function()
    require("config.plugin.telescope")
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    }
  }
}
