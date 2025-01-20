return {
  -- Install Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
    opts = {
      defaults = {
        layout_strategy = "horizontal", -- Default layout strategy
        layout_config = {
          preview_width = 0.5, -- Adjust preview width
        },
      },
      pickers = {
        lsp_references = {
          layout_strategy = "horizontal", -- Horizontal layout with preview
          layout_config = {
            preview_width = 0.6, -- Increase preview size for references
          },
          show_line = true, -- Show the line for better context
        },
      },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next", -- Move down in results
              ["<C-k>"] = "move_selection_previous", -- Move up in results
            },
            n = {
              ["/"] = nil,
            },
          },
        },
      })
    end,
  },
}
