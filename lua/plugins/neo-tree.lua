return {
   "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
  filesystem = {
    filtered_items = {
      visible = true,      -- Show filtered (hidden) items by default
      show_hidden_count = true, -- Optionally show a count of hidden files in each folder
    }
  }
},
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Reveal Neo-tree" })
    vim.keymap.set("n", "<leader>ef", "<cmd>Neotree reveal toggle<CR>", { desc = "Reveal Current File in Neo-tree" } )
  end,
}
