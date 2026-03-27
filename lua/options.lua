require "nvchad.options"

local opt = vim.opt

opt.backup = false
opt.swapfile = false
opt.colorcolumn = "100"
opt.relativenumber = true
opt.list = true
opt.listchars = "tab:➝ ,lead:·,space:·,trail:·,nbsp:+,eol:¬"

-- feature toggles
vim.g.format_on_save = true
vim.g.copilot_enabled = true

-- auto-save for Python files
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*.py",
  command = "silent! write",
})

-- colorscheme set by catppuccin plugin
