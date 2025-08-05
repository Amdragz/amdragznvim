return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = true,
		notify_no_formatters = true,
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 1000,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			sql = { "pg_format" },
			javascript = { "eslint_d", "prettierd" },
			typescript = { "eslint_d", "prettierd" },
			vue = { "eslint_d", "prettierd" },
		},
	},
}
