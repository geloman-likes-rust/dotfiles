require("fidget").setup {
  text = {
    spinner = "circle_quarters"
  },
  timer = {
    fidget_decay = 250,
  },
  window = {
    border = "rounded",
    blend = 0
  }
}

vim.cmd("highlight! FidgetTitle guifg=#41a7fc guibg=NONE")
vim.cmd("highlight! FidgetTask guifg=#93a4c3 guibg=NONE")
vim.cmd("highlight! FloatBorder guibg=NONE guifg=#455574")
