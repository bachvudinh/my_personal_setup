return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
      sidebars = { "qf", "help", "terminal", "packer" },
      highlight_overrides = {
        moon = function()
          return {
            Comment = { fg = "#C9A96A", italic = false },
            ["@string.doc"] = { fg = "#9ECE6A", italic = true },
          }
        end,
      },
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
