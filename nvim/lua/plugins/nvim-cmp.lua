return {
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  dependencies = { 'hrsh7th/cmp-nvim-lsp',
    {
      'L3MON4D3/LuaSnip',
      config = function() require("luasnip.loaders.from_vscode").lazy_load() end,
      dependencies = { "rafamadriz/friendly-snippets" }
    }, 'saadparwaiz1/cmp_luasnip' },
}
