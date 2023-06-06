return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup {

      color_icons = true;
      default = true;
      strict = true;

      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          name = "Gitignore"
        }
      };

      override_by_extension = {
        ["log"] = {
          icon = "",
          color = "#81e043",
          name = "Log"
        }
      };

    }
  end,
}
