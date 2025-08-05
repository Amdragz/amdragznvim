return {
	"lewis6991/gitsigns.nvim",
	event = "User FilePost",
	opts = function()
		dofile(vim.g.base46_cache .. "git")

		return {
			signs = {
				delete = { text = "󰍵" },
				-- changedelete = { text = "󱕖" },
			},
			current_line_blame = false,
		}
	end,
}
