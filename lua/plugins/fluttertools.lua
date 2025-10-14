
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
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("flutter-tools").setup({
      lsp = {
        capabilities = capabilities,
        settings = {
          dart = {
            completeFunctionCalls = true,
            showTodos = true,
          },
        },
      },
    })
  end,
}

