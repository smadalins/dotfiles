return {
  "glepnir/lspsaga.nvim",
  lazy = true,
  event = "LspAttach",
  config = function()
    local lspsaga = require("lspsaga")
    local treesitter = require("nvim-treesitter")
    local icons = require("nvim-web-devicons")
    lspsaga.setup({
      outline = {
        auto_preview = false,
        win_width = 50,
      },
    })
  end,
}
