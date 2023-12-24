Set = function(num)
    vim.opt.tabstop = num
    vim.opt.shiftwidth = num
    vim.opt.expandtab = true
end

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    pattern = {'*'},
    command = [[%s/\s\+$//e]],
})
