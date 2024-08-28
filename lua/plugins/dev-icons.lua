return {
  "nvim-tree/nvim-web-devicons",
  require("nvim-web-devicons").setup({
    strict = true,
    override_by_extension = {
      astro = {
        icon = "",
        color = "#EF8547",
        name = "astro",
      },
       ["blade.php"] = {
        icon = "",       -- PHP icon
        color = "#bf92e5", -- PHP's traditional color
        name = "blade_php",
      },
    },
  })
}
