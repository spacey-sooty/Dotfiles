local set = vim.keymap.set

vim.g.mapleader = " "

set('n', ';', ':')
set('n', '<leader><leader>m', vim.cmd.make)

set('n', '<leader>pv', vim.cmd.Ex)
set('n', '<leader>pt', vim.cmd.Tex)
set('n', '<leader>n', vim.cmd.tabNext)

set('n', '<leader>e', "1gt")
set('n', '<leader>r', "2gt")
set('n', '<leader>u', "3gt")
set('n', '<leader>i', "4gt")

set('n', '<leader><leader>n', function()
    local name = vim.fn.input('Name > ')
    local path = vim.fn.getcwd() .. "/" .. name
    vim.cmd("!touch " .. path)
    vim.cmd.e(name)
end)

set('n', '<leader>hn', function()
    local name = vim.fn.input('Name > ')
    local path = vim.fn.getcwd() .. "/" .. name
    vim.cmd("!touch " .. path)
    require('harpoon.mark').add_file(name)
    vim.cmd.e(name)
end)
