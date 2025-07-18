vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("colorscheme habamax")

vim.cmd("set clipboard+=unnamedplus")

vim.g.base16_colorspace = 256

vim.api.nvim_set_keymap('n', 'I', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })


vim.keymap.set('n', 'K', function()
  vim.diagnostic.setqflist()
  vim.cmd('copen')
end, { noremap = true, silent = true })


vim.keymap.set("n", "<leader>cp", "<cmd>CccPick<CR>", { desc = "Color Picker" })
--vim.cmd("highlight Normal guibg=none")
--vim.cmd("highlight NonText guibg=none")
--vim.cmd("highlight Normal ctermbg=none")
--vim.cmd("highlight NonText ctermbg=none")
