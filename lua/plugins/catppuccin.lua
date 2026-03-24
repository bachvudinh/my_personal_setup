return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
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
        night = function()
          return {
            Comment = { fg = "#7AA2F7", italic = false },
            ["@string.doc"] = { fg = "#9ECE6A", italic = true },
          }
        end,
      },
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
