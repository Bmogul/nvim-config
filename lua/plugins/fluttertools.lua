

-- lua/plugins/fluttertools.lua
return {
  "akinsho/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for UI
    "neovim/nvim-lspconfig",
  },
  ft = { "dart" },
  config = function()
    require("flutter-tools").setup({
      lsp = {
        on_attach = function(_, bufnr)
          -- your keymaps or on_attach code here
        end,
      },
    })
  end,
}

