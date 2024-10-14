return {
  'tpope/vim-fugitive',
  config = function()
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>gs", vim.cmd.G, { desc = "Git status" })
  end,
}
