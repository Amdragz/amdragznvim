return {
	"pmizio/typescript-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"neovim/nvim-lspconfig",
	},
	ft = { "typescriptreact", "javascriptreact"  },
	opts = function()
		local lsp = require("core.lsp")

		return {
			capabilities = lsp.capabilities,
			on_attach = lsp.on_attach,
			settings = {
				expose_as_code_action = { "all" },
				tsserver_file_preferences = {
					includeInlayParameterNameHints = "all",
					includeInlayParameterNameHintsWhenArgumentMatchesName = true,
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
					includeInlayVariableTypeHintsWhenTypeMatchesName = true,
					includeInlayFunctionLikeReturnTypeHints = true,
					includeInlayPropertyDeclarationTypeHints = true,
					includeInlayEnumMemberValueHints = true,
				},
			},
		}
	end,
	config = function(_, opts)
		require("typescript-tools").setup(opts)
	end,
}
