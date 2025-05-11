return {
  -- Optional: icons for nice fzf/fzfx UIs
  {
    "nvim-tree/nvim-web-devicons"
  },

  -- Optional: needed for 'fzf' command
  {
    "junegunn/fzf",
    build = function()
      vim.fn["yay -S --noconfirm fzf"]()
    end,
  },

  -- Main Fzfx.nvim plugin
  {
    "linrongbin16/fzfx.nvim",
    version = "v8.*", -- Pin to major version 8.x
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "junegunn/fzf"
    },
    config = function()
      require("fzfx").setup()
      vim.keymap.set("n", "<leader>ff", "<cmd>FzfxFiles<CR>", { desc = "Open Fuzzy Finder" })
    end,
  },
}

