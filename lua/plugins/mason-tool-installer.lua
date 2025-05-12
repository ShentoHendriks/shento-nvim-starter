return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "williamboman/mason.nvim" },
	opts = {
		ensure_installed = {
			-- Formatters --https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters
			"prettierd", -- JS, TS, CSS, HTML
			"stylua", -- Lua
			"black", -- Python

			-- Linters https://github.com/mfussenegger/nvim-lint?tab=readme-ov-file to see all linters
			"eslint_d", -- Javascript
			"flake8", -- Python
			"stylelint", -- CSS, SCSS linter

			-- LSPs https://mason-registry.dev/registry/list
			"lua-language-server",
			"css-lsp",
			"typescript-language-server",
			"emmet-ls",
			"html-lsp",
			"vue-language-server",
			"tailwindcss-language-server",
			"css-variables-language-server",
			"cssmodules-language-server",
		},
		auto_update = true,
		run_on_start = true,
	},
	config = function(_, opts)
		require("mason-tool-installer").setup(opts)
	end,
}
