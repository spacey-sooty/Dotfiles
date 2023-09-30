vim.g.netrw_banner=0
-- todo fix hide gitignored items in netrw
-- vim.g.netrw_list_hide=netrw_gitignor#Hide()
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

