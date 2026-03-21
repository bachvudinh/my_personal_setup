return {
  "hakonharnes/img-clip.nvim",
  event = "BufEnter",
  opts = {
    default = {
      -- save images relative to current file
      dir_path = "assets",
      file_name = "%Y-%m-%d-%H-%M-%S",
      use_absolute_path = false,
      relative_to_current_file = true,

      -- insert as markdown by default
      template = "![$CURSOR]($FILE_PATH)",

      -- Mac: use pngpaste
      copy_images = true,
      download_images = false,
    },

    -- per filetype templates
    filetypes = {
      markdown = {
        template = "![$CURSOR]($FILE_PATH)",
      },
      html = {
        template = '<img src="$FILE_PATH" alt="$CURSOR">',
      },
    },
  },
  config = function(_, opts)
    require("img-clip").setup(opts)
    vim.keymap.set("n", "<leader>pi", "<cmd>PasteImage<CR>", { desc = "Paste image from clipboard" })
  end,
}
