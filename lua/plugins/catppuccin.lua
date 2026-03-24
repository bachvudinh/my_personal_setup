return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = false,
      term_colors = true,
      compile = {
        enabled = true,
        path = vim.fn.stdpath("data") .. "/catppuccin/compiled",
      },
      options = {
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
      },
      highlight_overrides = {
        mocha = function()
          return {
            Comment = { fg = "#89B4FA", italic = false },
            ["@string.doc"] = { fg = "#A6E3A1", italic = true },
          }
        end,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}
