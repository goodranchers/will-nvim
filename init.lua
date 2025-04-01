vim.g.maplocalleader = ","
print(
  "maplocalleader set to: "
    .. vim.g.maplocalleader
)

-- Load Lazy.nvim (via your config.lazy file)
require("config.lazy")

-- Load other configurations, such as autocommands
require("config.autocmds")

-- Enable persistent undo
vim.o.undofile = true

-- Set the directory where undo files will be stored
vim.o.undodir = vim.fn.stdpath("config")
  .. "/undo"

vim.api.nvim_set_keymap(
  "v",
  "p",
  '"_dP',
  { noremap = true, silent = true }
)
