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
    vim.cmd(
      [[hi Directory guifg=#FF0000 ctermfg=1]]
    )
    vim.cmd(
      [[hi Folded guifg=#808080 ctermfg=244]]
    )
  end,
}
