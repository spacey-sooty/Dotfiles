local keymap = vim.keymap
vim.g.mapleader = " "

keymap.set('n', ';', ':')
keymap.set('n', '<leader>pv', vim.cmd.Ex)
