return {
  "mhartington/formatter.nvim",
  event = "BufWritePre",
  config = function()
    require("formatter").setup {
      logging = true,
      log_level = vim.log.levels.WARN,
      filetype = {
        ["*"] = {
          require("formatter.filetypes.any").remove_trailing_whitespace
        }
      }
    }
  end,
}
