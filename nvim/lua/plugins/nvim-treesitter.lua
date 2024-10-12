return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"angular",
			"c",
			"cpp",
			"css",
			"html",
			"javascript",
			"json",
			"typescript",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"bash",
			"regex",
		},
	},
}
