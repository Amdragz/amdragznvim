return {
	{
		"windwp/nvim-ts-autotag",
		dependencies = "nvim-treesitter/nvim-treesitter",
		-- event = "InsertEnter",
		ft = {
			"html",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"tsx",
			"jsx",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		build = ":TSUpdate",
		opts = function(_, opts)
			pcall(function()
				dofile(vim.g.base46_cache .. "syntax")
				dofile(vim.g.base46_cache .. "treesitter")
			end)

			return {
				auto_install = true,
				ensure_installed = {
					"lua",
					"luadoc",
					"printf",
					"vim",
					"vimdoc",
					"html",
					"css",
					"rust",
					"javascript",
					"typescript",
					"tsx",
					"vue",
					"scss",
					"yaml",
					"dart",
					"sql",
					"markdown",
					"markdown_inline",
				},

				highlight = {
					enable = true,
					use_languagetree = true,
				},
				context_commentstring = {
					enable = true,
					enable_autocmd = false, --  Comment.nvim will handle this
				},
				autotag = { enable = true },
				indent = { enable = true },
			}
		end,
	},
}
