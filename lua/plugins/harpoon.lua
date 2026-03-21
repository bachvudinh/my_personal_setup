return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  -- load immediately, not lazy
  lazy = false,
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
    })

    local map = vim.keymap.set

    -- Add current file to harpoon list
    map("n", "<leader>a", function()
      harpoon:list():add()
      print("Harpoon: file added")
    end, { desc = "Harpoon Add file" })

    -- Open harpoon quick menu
    map("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon Toggle menu" })

    -- Jump to pinned file 1-4 (like VSCode tabs but instant)
    map("n", "<C-1>", function() harpoon:list():select(1) end, { desc = "Harpoon File 1" })
    map("n", "<C-2>", function() harpoon:list():select(2) end, { desc = "Harpoon File 2" })
    map("n", "<C-3>", function() harpoon:list():select(3) end, { desc = "Harpoon File 3" })
    map("n", "<C-4>", function() harpoon:list():select(4) end, { desc = "Harpoon File 4" })

    -- Navigate through list in order
    map("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon Prev file" })
    map("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon Next file" })
  end,
}
