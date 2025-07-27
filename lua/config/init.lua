require('config.remap')

-- bootstrap packer if not installed (optional snippet)
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
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
    use 'nvim-lua/plenary.nvim'
    use 'lewis6991/gitsigns.nvim'

	-- lspconfig
	use {
		'neovim/nvim-lspconfig',
		config = function()
			require('lspconfig').pyright.setup({})
		end
	}
    
    -- CMP
	use {
		"hrsh7th/nvim-cmp",          -- Completion plugin
		"hrsh7th/cmp-nvim-lsp",      -- LSP source for nvim-cmp
		"hrsh7th/cmp-buffer",        -- Buffer completions
		"hrsh7th/cmp-path",          -- Path completions
		"hrsh7th/cmp-cmdline",       -- Cmdline completions
		"L3MON4D3/LuaSnip",          -- Snippet engine
		"saadparwaiz1/cmp_luasnip",  -- Snippets source for nvim-cmp
	}

    -- Auto Pairs
	use 'windwp/nvim-autopairs'	

    -- Dev icons
    use "nvim-tree/nvim-web-devicons"

    -- Nvim Tree 
    use {
        'nvim-tree/nvim-tree.lua',
        dependencies = { "nvim-tree/nvim-web-devicons" }
    }

	-- Vim-be-good
	use 'ThePrimeagen/vim-be-good'

	if packer_bootstrap then
		require('packer').sync()
	end
end)
