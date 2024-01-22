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
	"chrisgrieser/nvim-spider",
	keys = {
		{ -- example for lazy-loading on keystroke
			"e",
			"<cmd>lua require('spider').motion('e')<CR>",
			mode = { "n", "o", "x" },
		},
		{ -- example using an explicit function
			"w",
			function()
				require('spider').motion('w', {
					customPatterns = {
							patterns = { ('%x'):rep(6) .. '+' },
							overrideDefault = true,
					},
				})
			end,
			mode = { 'n', 'o', 'x' },
		},
	},
}

opts = {}

require('lazy').setup(plugins, opts)
