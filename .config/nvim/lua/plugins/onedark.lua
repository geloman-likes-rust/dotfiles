return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'deep',
      transparent = true,
      term_colors = true,
      toggle_style_key = '<leader>t',
      code_style = {
        comments = 'italic,bold',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
      },
    }
  end,
}
