local builtin = require('telescope.builtin')

vim.keymap.set('n', '<space>pf', builtin.find_files, {})
vim.keymap.set('n', '<space>pd', builtin.git_files, {})
vim.keymap.set('n', '<space>ps', function() builtin.grep_string({ search = vim.fn.input('Grep > ') }) end)
vim.keymap.set('n', '<space>ph', builtin.help_tags, {})
