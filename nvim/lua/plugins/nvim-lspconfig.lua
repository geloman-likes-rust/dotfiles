-- LSP Configuration & Plugins
return {
  'neovim/nvim-lspconfig',
  priority = 1000,
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',

  },
}
