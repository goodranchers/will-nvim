-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Set the leader key to a space (" ") or any other key
vim.g.mapleader = " "
vim.g.maplocalleader = " " -- Optional: for local leader

-- Redo Change --
vim.keymap.set(
  "n",
  "<leader>r",
  "<C-r>",
  { noremap = true, silent = true, desc = "Redo" }
)

local telescope_builtin =
  require("telescope.builtin")

-- Find files
vim.keymap.set(
  "n",
  "<leader>ff",
  telescope_builtin.find_files,
  {
    noremap = true,
    silent = true,
    desc = "Find files",
  }
)

-- -- Use `/` to trigger Telescope find_files in Neo-tree
-- vim.keymap.set("n", "/", function()
--   telescope_builtin.find_files({
--     prompt_title = "Search Files",
--     cwd = require("neo-tree.sources.filesystem").get_current_path(), -- Use Neo-tree's current path as the root
--   })
-- end, {
--   noremap = true,
--   silent = true,
--   desc = "Search files in Neo-tree root",
-- })

-- Live grep (search text in files)
vim.keymap.set(
  "n",
  "<leader>sg",
  telescope_builtin.live_grep,
  {
    noremap = true,
    silent = true,
    desc = "Search text (grep)",
  }
)

-- List open buffers
vim.keymap.set(
  "n",
  "<leader><leader>",
  telescope_builtin.buffers,
  {
    noremap = true,
    silent = true,
    desc = "View buffers",
  }
)

-- Search help tags
vim.keymap.set(
  "n",
  "<leader>fh",
  telescope_builtin.help_tags,
  {
    noremap = true,
    silent = true,
    desc = "Find help",
  }
)

-- Go to Definition
vim.keymap.set("n", "<leader>gd", function()
  telescope_builtin.lsp_definitions() -- Use Telescope for "Go to Definition"
end, {
  noremap = true,
  silent = true,
  desc = "Go to Definition (Telescope)",
})

-- Keymap for "Go to References" with preview
vim.keymap.set("n", "<leader>gr", function()
  telescope_builtin.lsp_references({
    show_line = true, -- Show a snippet of the line in the results
  })
end, {
  noremap = true,
  silent = true,
  desc = "Go to References (with preview)",
})

-- Hover Documentation
vim.keymap.set(
  "n",
  "<leader>K",
  vim.lsp.buf.hover,
  {
    noremap = true,
    silent = true,
    desc = "Hover Documentation",
  }
)

-- Rename Symbol
vim.keymap.set(
  "n",
  "<leader>rn",
  vim.lsp.buf.rename,
  {
    noremap = true,
    silent = true,
    desc = "Rename Symbol",
  }
)

-- Code Actions
vim.keymap.set(
  "n",
  "<leader>ca",
  vim.lsp.buf.code_action,
  {
    noremap = true,
    silent = true,
    desc = "Code Actions",
  }
)

-- Require Harpoon modules
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Set keymaps for Harpoon
vim.keymap.set(
  "n",
  "<leader>a",
  mark.add_file,
  { desc = "Harpoon: Add file" }
) -- Add file to Harpoon
vim.keymap.set(
  "n",
  "<leader>h",
  ui.toggle_quick_menu,
  { desc = "Harpoon: Toggle quick menu" }
) -- Open Harpoon menu

-- Navigate to files in Harpoon
vim.keymap.set("n", "<leader>1", function()
  ui.nav_file(1)
end, { desc = "Harpoon: Go to file 1" })
vim.keymap.set("n", "<leader>2", function()
  ui.nav_file(2)
end, { desc = "Harpoon: Go to file 2" })
vim.keymap.set("n", "<leader>3", function()
  ui.nav_file(3)
end, { desc = "Harpoon: Go to file 3" })
vim.keymap.set("n", "<leader>4", function()
  ui.nav_file(4)
end, { desc = "Harpoon: Go to file 4" })
