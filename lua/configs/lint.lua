local lint = require "lint"

lint.linters_by_ft = {
  go = { "golangcilint" },
  markdown = { "markdownlint" },
  python = { "pylint" },
  ruby = { "rubocop" },
  terraform = { "tflint" },
}

-- Fix pylint: use venv python, ignore non-zero exit (pylint exits 1 on warnings which is normal)
lint.linters.pylint = vim.tbl_deep_extend("force", lint.linters.pylint, {
  cmd = "python",
  args = {
    "-m", "pylint",
    "-f", "json",
    "--from-stdin",
    function() return vim.api.nvim_buf_get_name(0) end,
  },
  stdin = true,
  ignore_exitcode = true,
})

-- Only lint on save and when leaving insert mode (not on every keystroke)
local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})
