return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	opts = function()
		dofile(vim.g.base46_cache .. "telescope")

		return {
			defaults = {
				prompt_prefix = "   ",
				selection_caret = " ",
				entry_prefix = " ",
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
					},
					width = 0.87,
					height = 0.80,
				},
				mappings = {
					n = { ["q"] = require("telescope.actions").close },
				},
			},

			extensions_list = { "themes", "terms", "mason" },
			extensions = {},
		}
	end,
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)

		for _, ext in ipairs(opts.extensions_list or {}) do
			pcall(telescope.load_extension, ext)
		end
	end,
}
