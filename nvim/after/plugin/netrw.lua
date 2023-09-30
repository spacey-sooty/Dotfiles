-- remove stupid banner
vim.g.netrw_banner=0

-- ignore gitignored files and .git directory
vim.g.netrw_list_hide = vim.fn['netrw_gitignore#Hide']() .. [[.git/]]

-- bind n to create new file and r to rename
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end 

    -- edit new file
    bind('n', '%')

    -- rename file
    bind('r', 'R')
  end
})

-- human readable sizes like 5K or 3G instead of bytes
vim.g.netrw_sizestyle = 'h'

