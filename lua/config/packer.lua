-- Packer.vim from https://github.com/wbthomason/packer.nvim
-- Ensure packer is loaded
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope (fuzzy finder)
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- Catppuccin theme
	use {
		"catppuccin/nvim",
		as = "catppuccin"
		-- NOTE: Don't set colorscheme here, do it in after/plugin/colors.lua
	}

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'nvim-treesitter/playground'

	-- Harpoon
	use 'theprimeagen/harpoon'

	-- Undo Tree
	use 'mbbill/undotree'

	-- Fugitive
	use 'tpope/vim-fugitive'

	-- Automatically set up configuration after cloning packer.nvim
	if packer_bootstrap then
		require("packer").sync()
	end
end)

