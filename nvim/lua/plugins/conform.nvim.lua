return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			javascript = { "prettierd" },
			html = { "prettierd" },
			cpp = { "clang-format" },
			css = { "stylelint" },
			markdown = { "mdformat" },
			yaml = { "prettierd" },
			json = { "prettierd" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
