return {
  "mrjones2014/smart-splits.nvim",
  -- must NOT be lazy loaded for tmux integration to work
  lazy = false,
  config = function()
    require("smart-splits").setup({
      -- Ignored filetypes (won't navigate away from these)
      ignored_filetypes = { "NvimTree" },
      -- Default resize amount
      default_amount = 3,
      -- Wrap around edges
      at_edge = "wrap",
      -- tmux integration
      multiplexer_integration = "tmux",
    })

    local map = vim.keymap.set
    local ss = require("smart-splits")

    -- Ctrl+hjkl = move between nvim splits AND tmux panes seamlessly
    map("n", "<C-h>", ss.move_cursor_left, { desc = "Move to left split/pane" })
    map("n", "<C-j>", ss.move_cursor_down, { desc = "Move to below split/pane" })
    map("n", "<C-k>", ss.move_cursor_up, { desc = "Move to above split/pane" })
    map("n", "<C-l>", ss.move_cursor_right, { desc = "Move to right split/pane" })

    -- Option(Alt)+hjkl = resize splits/panes
    map("n", "<M-h>", ss.resize_left, { desc = "Resize split left" })
    map("n", "<M-j>", ss.resize_down, { desc = "Resize split down" })
    map("n", "<M-k>", ss.resize_up, { desc = "Resize split up" })
    map("n", "<M-l>", ss.resize_right, { desc = "Resize split right" })

    -- Swap splits (move buffer to adjacent split)
    map("n", "<leader><leader>h", ss.swap_buf_left, { desc = "Swap buffer left" })
    map("n", "<leader><leader>j", ss.swap_buf_down, { desc = "Swap buffer down" })
    map("n", "<leader><leader>k", ss.swap_buf_up, { desc = "Swap buffer up" })
    map("n", "<leader><leader>l", ss.swap_buf_right, { desc = "Swap buffer right" })
  end,
}
