return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
        ensure_installed = { "bash", "json", "lua", "markdown", "powershell", "yaml" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	},
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
  },
  {
    'MeanderingProgrammer/markdown.nvim',
    main = "render-markdown",
    opts = {},
    name = 'render-markdown',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  },
}

