local set = vim.keymap.set

vim.g.mapleader = " "

set('n', ';', ':')
set('n', '<leader><leader>m', vim.cmd.make)
set('n', '<leader><leader>x', function()
    vim.cmd.w()
    vim.cmd.so("%")
end)
set('n', '<leader>pv', vim.cmd.Ex)
