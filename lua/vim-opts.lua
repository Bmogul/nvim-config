vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard:append("unnamedplus")

vim.keymap.set('n', '<leader>q', function()
  vim.diagnostic.setqflist()
  vim.cmd('copen')
end, { noremap = true, silent = true })


vim.keymap.set("n", "<leader>cp", "<cmd>CccPick<CR>", { desc = "Color Picker" })
--vim.cmd("highlight Normal guibg=none")
--vim.cmd("highlight NonText guibg=none")
--vim.cmd("highlight Normal ctermbg=none")
--vim.cmd("highlight NonText ctermbg=none")
