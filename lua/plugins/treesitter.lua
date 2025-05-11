-- Treesitter for better syntax and indentation
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true }, -- <-- Key line for auto indentation
      ensure_installed = { "lua", "typescript", "javascript", "css", "html", "svelte", "vue", "scss" }, -- add languages as needed
    })
  end,
}

