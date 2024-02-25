local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
    lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
    },
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'ThePrimeagen/harpoon',
    'christoomey/vim-tmux-navigator',
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    'andweeb/presence.nvim',
    'williamboman/mason.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ThePrimeagen/vim-apm',
    {
        "Febri-i/snake.nvim",
        dependencies = {
            "Febri-i/fscreen.nvim"
        },
        opts = {}
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
}

opts = {}

require('lazy').setup(plugins, opts)
