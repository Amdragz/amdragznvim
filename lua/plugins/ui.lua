return {
	{
		"nvchad/base46",
		build = function()
			vim.g.transparent_enabled = true
			require("base46").load_all_highlights()
		end,
	},

	{
		"nvchad/ui",
		lazy = false,
		config = function()
      pcall(require, "nvchad")

      pcall(function() require("nvchad.tabufline").setup() end)
      pcall(function() require("nvchad.statusline").setup() end)
      pcall(function() require("nvchad.term").setup() end)
      pcall(function() require("nvchad.renamer").setup() end)
      pcall(function() require("nvchad.lsp_signature").setup() end)
      pcall(function() require("nvchad.colorizer").setup() end)
      pcall(function() require("nvchad.cheatsheet").setup() end)
      pcall(function() require("nvchad.cheatsheet").setup() end)
		end,
	},

	"nvzone/volt",
	"nvzone/menu",
	{ "nvzone/minty", cmd = { "Huefy", "Shades" } },
}
