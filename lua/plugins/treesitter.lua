return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      enable = true, -- Enable Treesitter-based syntax highlighting
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn", -- Initialize selection
        node_incremental = "grn", -- Increment to the upper scope
        node_decremental = "grm", -- Decrement to the lower scope
      },
    },
  },
}
