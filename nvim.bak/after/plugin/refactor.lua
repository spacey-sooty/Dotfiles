vim.keymap.set('n', '<leader><leader>wr', function () require("refactor").refactor(vim.fn.input('Item > '), vim.fn.input('Replace > ')) end)

