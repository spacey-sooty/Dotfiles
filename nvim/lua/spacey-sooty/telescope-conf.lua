local M = {}

M.builtin = require('telescope.builtin')
require('telescope').load_extension('fzf')
require('telescope').setup({
    defaults = {
        file_ignore_patterns = { '.git/' },
    }
})

M.is_inside_work_tree = {}

M.project_files = function()
  local opts = {} -- define here if you want to define something

  local cwd = vim.fn.getcwd()
  if M.is_inside_work_tree[cwd] == nil then
    vim.fn.system("git rev-parse --is-inside-work-tree")
    M.is_inside_work_tree[cwd] = vim.v.shell_error == 0
  end

  if M.is_inside_work_tree[cwd] then
    M.builtin.git_files(opts)
  else
    M.builtin.find_files(opts)
  end
end

M.find_all = function()
    local opts = {
        hidden = true,
    }

    M.builtin.find_files(opts)
end

M.project_grep = function()
    M.builtin.grep_string({ search = vim.fn.input('Grep > ') })
end

vim.keymap.set('n', '<leader>pf', M.builtin.find_files, {})
vim.keymap.set('n', '<leader>pa',  M.find_all, {})
vim.keymap.set('n', '<leader>pg', M.project_files, {})
vim.keymap.set('n', '<leader>pd', M.builtin.diagnostics, {})
vim.keymap.set('n', '<leader>ps',  M.project_grep, {})
vim.keymap.set('n', '<leader>ph', M.builtin.help_tags, {})

return M
