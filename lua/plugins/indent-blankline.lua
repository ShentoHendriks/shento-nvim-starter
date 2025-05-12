return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		require("ibl").setup()
	end,
}
