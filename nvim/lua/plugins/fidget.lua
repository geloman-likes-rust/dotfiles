return {
  'j-hui/fidget.nvim',
  event = "LspAttach",
  tag = "legacy",
  opts = {
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
}
