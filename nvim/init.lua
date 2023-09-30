require("remap")
require("status")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
	lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"catppuccin/nvim",
	"christoomey/vim-tmux-navigator",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"ThePrimeagen/harpoon",
	"windwp/nvim-autopairs",
	"lewis6991/gitsigns.nvim",
	"echasnovski/mini.comment",
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
		}
	}
})

require("gitsigns").setup()
require("nvim-autopairs").setup()
require("mini.comment").setup()
require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "markdown", "lua", "scss", "typescript", "rust" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
require("catppuccin").setup({})

vim.cmd.colorscheme("catppuccin")
vim.g.mapleader = " "
vim.g.netrw_banner=0
vim.g.netrw_list_hide=netrw_gitignorHide()
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
vim.cmd.set("nu rnu")
vim.cmd.set("cursorline")
vim.cmd.set("cursorcolumn")

