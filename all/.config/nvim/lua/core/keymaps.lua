vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.clipboard = 'unnamedplus'

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>p', ':Files<CR>')
vim.keymap.set('n', '<leader>g', ':GFiles<CR>')
vim.keymap.set('n', '<leader>o', ':Buffers<CR>')
vim.keymap.set('n', '<leader>f', ':Rg! ')
