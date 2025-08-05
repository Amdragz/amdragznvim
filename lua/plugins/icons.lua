return {
  "nvim-tree/nvim-web-devicons",
  dependencies = { "nvchad/base46" },
  opts = function()
    pcall(function()
      dofile(vim.g.base46_cache .. "devicons")
    end)

    local icons = require("nvchad.icons.devicons")
    return { override = icons }
  end,
}
