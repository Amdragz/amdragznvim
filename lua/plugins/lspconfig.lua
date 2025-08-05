return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lsp = require("core.lsp")

		vim.diagnostic.config({
			virtual_text = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
			float = {
				border = "single",
				source = true,
			},
		})

		-- vim.api.nvim_create_autocmd("LspAttach", {
		-- 	callback = function(args)
		-- 		lsp.on_attach(nil, args.buf)
		-- 	end,
		-- })

		vim.lsp.config("*", {
			capabilities = lsp.capabilities,
			on_attach = lsp.on_attach,
			on_init = lsp.on_init,
		})

		vim.lsp.config("vtsls", require("userlsp.vtsls"))
		vim.lsp.config("vue_ls", require("userlsp.vue_ls"))

		vim.lsp.enable({
			"lua_ls",
			"vtsls",
			"vue_ls",
			"html",
			"cssls",
			"tailwindcss",
			"eslint_lsp",
		})
	end,
}
