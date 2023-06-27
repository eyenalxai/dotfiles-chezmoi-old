-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- NERD Commenter
	use("preservim/nerdcommenter")

	-- Vig Fugitive
	use("tpope/vim-fugitive")

	-- Undotree
	use("mbbill/undotree")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- Gruvbox theme
	use({ "ellisonleao/gruvbox.nvim" })

	-- Rose Pine theme
	use({ "rose-pine/neovim", as = "rose-pine" })

	-- Nord theme
	use("shaunsingh/nord.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- lsp-zero
	use({ "VonHeikemen/lsp-zero.nvim", branch = "v2.x" })
	use("neovim/nvim-lspconfig")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip")

	-- Mason
	use({ "williamboman/mason.nvim", run = ":MasonUpdate" })
	use("williamboman/mason-lspconfig.nvim")

	-- null-ls
	use("jose-elias-alvarez/null-ls.nvim")
	use("nvim-lua/plenary.nvim")
end)
