local ui = require('harpoon.ui')
local set = vim.keymap.set

set('n', '<leader>a', require('harpoon.mark').add_file)
set('n', '<leader>;', ui.toggle_quick_menu)

set('n', '<leader>d', function () ui.nav_file(1) end)
set('n', '<leader>f', function () ui.nav_file(2) end)
set('n', '<leader>j', function () ui.nav_file(3) end)
set('n', '<leader>k', function () ui.nav_file(4) end)
