
return {
  {
    "uga-rosa/ccc.nvim",
    cmd = { "CccPick", "CccConvert" }, -- lazy-load on command
    config = function()
      require("ccc").setup({})
    end,
  },
}
