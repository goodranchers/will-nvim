return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Make hidden files visible (optional)
      },
      follow_current_file = { -- Updated format
        enabled = true, -- Enable syncing with the current file
      },
    },
    default_component_configs = {
      indent = {
        padding = 1,
      },
    },
    window = {
      mappings = {
        ["/"] = "", -- Disable the default filter behavior
      },
    },
  },
}
