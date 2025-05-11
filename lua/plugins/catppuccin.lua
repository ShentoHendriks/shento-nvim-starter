return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- loads first, so other plugins can use highlights
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- or "latte", "frappe", "macchiato"
      default_integrations = true,
      integrations = {
        neotree = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

