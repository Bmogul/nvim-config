return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "clangd",
          "cssls",
          "dockerls",
          "graphql",
          "jsonls",
          "jdtls",
          "prismals",
          "pyright",
          "rust_analyzer",
          "gopls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cssls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.graphql.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.jdtls.setup({
        cmd = {
          "jdtls",
          "-classpath",
          os.getenv("CLASSPATH"),
        },
      })
      lspconfig.prismals.setup({})
      lspconfig.pyright.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.gopls.setup({})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
