-- Packer.vim from https://github.com/wbthomason/packer.nvim

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manager itself
	use 'wbthomason/packer.nvim'

	use {  -- Telescope finder
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                          , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({  -- Catppuccin theme
		"catppuccin/nvim", as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end
	})
end)
