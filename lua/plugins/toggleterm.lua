return {
  "akinsho/toggleterm.nvim",
  version = "*", -- Any version
  config = function()
    require("toggleterm").setup()
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Open Toggle Terminal" })
  end,
}
