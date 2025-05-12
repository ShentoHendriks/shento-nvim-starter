return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		ensure_installed = {
			-- Formatters
			"prettier", -- JS, TS, CSS, HTML
			"stylua", -- Lua
			"black", -- Python

			-- Linters
			"eslint_d", -- Javascript
			"flake8", -- Python
			-- add others as needed
		},
		auto_update = true,
		run_on_start = true,
	},
	config = function(_, opts)
		require("mason-tool-installer").setup(opts)
	end,
}
