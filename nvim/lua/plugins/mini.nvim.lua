return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.ai").setup()
		require("mini.align").setup()
		require("mini.animate").setup()
		require("mini.base16").setup({
			palette = {
				base00 = "#fbf1f2",
				base01 = "#f2f1f4",
				base02 = "#d8d5dd",
				base03 = "#bfb9c6",
				base04 = "#a59daf",
				base05 = "#8b8198",
				base06 = "#72677E",
				base07 = "#585062",
				base08 = "#DA627D",
				base09 = "#FCA17D",
				base0A = "#DCB16C",
				base0B = "#A3B367",
				base0C = "#06969A",
				base0D = "#86BBD8",
				base0E = "#9A348E",
				base0F = "#BAA58C",
			},
		})
		require("mini.basics").setup()
		require("mini.comment").setup()
		require("mini.cursorword").setup()
		require("mini.extra").setup()
		require("mini.indentscope").setup()
		require("mini.move").setup()
		require("mini.sessions").setup()
		require("mini.splitjoin").setup()
		require("mini.starter").setup()
		require("mini.surround").setup()
		require("mini.trailspace").setup()
	end,
}
