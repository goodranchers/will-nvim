return {
  -- Add plenary.nvim (required dependency for harpoon)
  {
    "nvim-lua/plenary.nvim",
    lazy = true, -- This loads it only when needed
  },

  -- Add harpoon
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure plenary is loaded
    config = function()
      require("harpoon").setup({
        -- Add any specific harpoon settings here
      })
    end,
  },
}
