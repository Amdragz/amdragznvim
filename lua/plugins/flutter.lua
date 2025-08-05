local capabilities = require("core.lsp").capabilities
local on_attach = require("core.lsp").on_attach

return {
	{
		"nvim-flutter/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("flutter-tools").setup({
				lsp = {
					color = {
						enabled = true,
					},
					on_attach = on_attach,
					capabilities = capabilities,
				},
				debugger = {
					enabled = true,
				},
			})

			require("telescope").load_extension("flutter")
		end,
	},

	{
		"wa11breaker/flutter-bloc.nvim",
		dependencies = {
			"nvimtools/none-ls.nvim", -- Optional, only needed for code actions
		},
		opts = {
			bloc_type = "equatable", -- or 'default' / 'freezed'
			use_sealed_classes = false,
			enable_code_actions = true,
		},
		ft = { "dart" },
	},
}
