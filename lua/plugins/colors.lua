
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = false,
          RRGGBBAA = true,
          AARRGGBB = true,
          rgb_fn = true,
          hsl_fn = true,
          css = true,
          css_fn = true,
          mode = "background",
          tailwind = true,
          sass = { enable = true, parsers = { "css" } },
          virtualtext = "■",
          always_update = true,
        },
        buftypes = {},
        user_commands = true,
      })
    end,
  },
  {
    "uga-rosa/ccc.nvim",
    cmd = { "CccPick", "CccConvert" },
    config = function()
      local ccc = require("ccc")
      ccc.setup({
        highlighter = {
          auto_enable = false,
          lsp = false,
        },
        pickers = {
          ccc.picker.hex,
          ccc.picker.css_rgb,
          ccc.picker.css_hsl,
        },
      })
    end,
  },
}
