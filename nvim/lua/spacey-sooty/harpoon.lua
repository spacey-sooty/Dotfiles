local ui = require('harpoon.ui')
local set = vim.keymap.set

set('n', '<space>a', require('harpoon.mark').add_file)
set('n', '<space>;', ui.toggle_quick_menu)

set('n', '<space>d', function () ui.nav_file(1) end)
set('n', '<space>f', function () ui.nav_file(2) end)
set('n', '<space>j', function () ui.nav_file(3) end)
set('n', '<space>k', function () ui.nav_file(4) end)
