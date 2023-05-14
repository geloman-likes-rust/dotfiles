return {
  'navarasu/onedark.nvim',
  config = function()
    require('onedark').setup {
      style = 'deep',
      transparent = false,
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
    vim.cmd.colorscheme 'onedark'
  end,
}
