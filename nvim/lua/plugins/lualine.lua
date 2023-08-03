return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'onedark',
      -- section_separators = { left = '', right = '' },
      -- component_separators = { left = '', right = '' },
      -- component_separators = { left = '', right = '' },
      -- component_separators = { left = '│', right = '│' },
      component_separators = { left = '┊', right = '' },
      section_separators = { left = '', right = '' },
      symbols = {
        -- unix = '', -- e712
        -- dos = '',  -- e70f
        -- mac = '',  -- e711
      }
    },
  },
}
