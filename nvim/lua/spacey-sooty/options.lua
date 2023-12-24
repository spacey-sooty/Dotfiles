vim.opt.termguicolors = true
vim.cmd.colorscheme('catppuccin')

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.cmd.set('nu rnu')
require('globals').Set(4)

vim.g.netrw_banner = 0
vim.g.netrw_list_hide = vim.fn['netrw_gitignore#Hide']() .. [[,.git]]
