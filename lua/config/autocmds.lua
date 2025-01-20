vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {
    "*.go",
    "*.ts",
    "*.tsx",
    "*.js",
    "*.jsx",
  },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
