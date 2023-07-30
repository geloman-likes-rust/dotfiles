vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.neovide then
  vim.o.guifont = "Hack Nerd Font:h16" -- text below applies for VimScript
  vim.g.neovide_transparency = 0.8
  vim.g.transparency = 0.8
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_background_color = "#1A212E"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_confirm_quit = false
end

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
