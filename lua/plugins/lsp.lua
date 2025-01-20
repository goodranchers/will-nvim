return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Go language server
        gopls = {
          cmd = { "gopls" },
          filetypes = {
            "go",
            "gomod",
            "gowork",
            "gotmpl",
          },
          root_dir = require("lspconfig").util.root_pattern(
            "go.work",
            "go.mod",
            ".git"
          ),
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                nilness = true,
                unusedwrite = true,
              },
              staticcheck = true,
            },
          },
        },
        -- TypeScript and JavaScript server
        tsserver = {
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
          root_dir = require("lspconfig").util.root_pattern(
            "package.json",
            "tsconfig.json",
            ".git"
          ),
        },
        -- Python language server (Pyright)
        pyright = {
          filetypes = { "python" },
          root_dir = require("lspconfig").util.root_pattern(
            ".git"
          ),
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic", -- You can change to "strict" if needed
              },
            },
          },
          -- No formatting with Pyright; null-ls handles formatting
          on_attach = function(client, bufnr)
            client.server_capabilities.documentFormattingProvider =
              false -- Disable LSP formatting
          end,
        },
      },
    },
  },

  -- Null-ls for additional formatting and linting
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.black, -- Black for formatting
          null_ls.builtins.formatting.isort, -- Isort for sorting imports
        },
        debug = false, -- Set to true for debugging issues with null-ls
      })

      -- Run formatting on save for Python files
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.py",
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end,
  },
}
