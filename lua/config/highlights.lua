vim.api.nvim_set_hl(0, "@scope", { link = "Visual" }) -- Highlight the current scope

vim.api.nvim_create_autocmd({ "CursorMoved" }, {
  callback = function()
    local node = require("nvim-treesitter.ts_utils").get_node_at_cursor()
    if not node then
      return
    end

    -- Highlight the current block
    vim.api.nvim_buf_clear_namespace(0, -1, 0, -1)
    vim.api.nvim_buf_add_highlight(0, -1, "Visual", node:start(), 0, -1)
  end,
})
