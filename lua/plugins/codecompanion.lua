return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  event = "VeryLazy",
  config = function()
    require("codecompanion").setup({
      adapters = {
        claude = require("codecompanion.adapters").extend("anthropic", {
          schema = {
            model = { default = "claude-opus-4-6" },
          },
        }),
      },
      strategies = {
        chat = { adapter = "claude" },
        inline = { adapter = "claude" },
        agent = { adapter = "claude" },
      },
      display = {
        chat = {
          window = {
            layout = "vertical",
            width = 0.35,
          },
        },
      },
    })

    local map = vim.keymap.set
    map({ "n", "v" }, "<leader>cc", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "AI Toggle chat" })
    map({ "n", "v" }, "<leader>ca", "<cmd>CodeCompanionActions<CR>", { desc = "AI Code actions" })
    map("v", "<leader>ci", "<cmd>CodeCompanion<CR>", { desc = "AI Inline assist" })
    map("n", "<leader>cm", "<cmd>CodeCompanionChat Add<CR>", { desc = "AI Add to chat" })
  end,
}
