return {
	{
		"mason-org/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		opts = function()
			dofile(vim.g.base46_cache .. "mason")

			return {
				PATH = "skip",

				ui = {
					icons = {
						package_pending = " ",
						package_installed = " ",
						package_uninstalled = " ",
					},
				},

				max_concurrent_installers = 10,
			}
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				-- "ts_ls",
        "tailwindcss",
				"html",
				"cssls",
				"vue_ls",
				"vtsls",
				"eslint",
			},
			automatic_installation = false,
		},
	},

	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason-org/mason.nvim" },
		event = "VeryLazy",
		opts = {
			ensure_installed = {
				"stylua",
				"prettierd",
				"pgformatter",
				"eslint_d",
			},
			auto_update = false,
			run_on_start = true,
			start_delay = 3000,
		},
	},
}
