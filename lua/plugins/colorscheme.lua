-- return {
--   { "aktersnurra/no-clown-fiesta.nvim" },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "no-clown-fiesta",
--     },
--   },
-- }

-- return {
--   "ferdinandrau/lavish.nvim",
--   priority = 1000,
--   config = function()
--     require("lavish").apply()
--   end,
-- }

-- Lazy

return {
  "vague2k/vague.nvim",
  lazy = false, -- Load the plugin immediately
  priority = 1000, -- Load it before other plugins to set the colorscheme early
  config = function()
    require("vague").setup({
      -- Optional: Add any custom configurations here
      transparent = true,
      style = "dark", -- Example configuration: Choose between "dark" or "light"
    })
    vim.cmd.colorscheme("vague") -- Apply the colorscheme

    -- Red for open directories (name and icon)
    vim.cmd(
      [[hi NeoTreeDirectoryName guifg=#FF0000 ctermfg=1]]
    )
    vim.cmd(
      [[hi NeoTreeDirectoryIcon guifg=#FF0000 ctermfg=1]]
    )
    -- File Color
    vim.cmd(
      [[hi NeoTreeFileName guifg=#f5f5f5 ctermfg=15]]
    )

    -- Gray for closed directories (match the background)
    vim.cmd(
      [[hi NeoTreeDirectoryName guifg=#979aaa ctermfg=244]]
    )
    vim.cmd(
      [[hi NeoTreeDirectoryIcon guifg=#979aaa ctermfg=244]]
    )

    -- Green for untracked files
    vim.cmd(
      [[hi NeoTreeGitUntracked guifg=#8fbc8f ctermfg=2]]
    )

    -- Orange for directories with Git changes (adjust as needed)
    vim.cmd(
      [[hi NeoTreeGitModified guifg=#dcb494 ctermfg=178]]
    )

    vim.cmd(
      [[hi NeoTreeGitStaged guifg=#ff8c00 ctermfg=178]]
    )
  end,
}
