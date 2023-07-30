return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    }
  },
  opts = {
    defaults = {
      layout_config = {
        height = 0.95,
        width = 0.95,
        preview_width = 0.55
      },
      selection_caret = "  ",
      prompt_prefix = "   ",
    },
  },
}
