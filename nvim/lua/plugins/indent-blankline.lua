return {
  'lukas-reineke/indent-blankline.nvim',
  event = "CursorMoved",
  config = function()
    vim.g.indent_blankline_context_char = '┊'
    require("indent_blankline").setup {
      show_current_context = true
    }
  end,
}
