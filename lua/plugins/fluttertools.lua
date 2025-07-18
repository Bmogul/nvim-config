
-- lua/plugins/fluttertools.lua
return {
  "akinsho/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for better UI
    "neovim/nvim-lspconfig",
  },
  ft = { "dart" },
  config = function()
    require("flutter-tools").setup({
      lsp = {
        on_attach = function(_, bufnr)
          local buf_map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
          end

          -- Code actions (like wrap with Column/Row/etc.)
          buf_map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
          buf_map("v", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
        end,
      },
    })
  end,
}

