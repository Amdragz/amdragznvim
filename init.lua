vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
vim.g.mapleader = " "

require("core.lazy")
-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("configs.options")
require("configs.autocmds")

vim.schedule(function()
	require("configs.mappings")
end)
