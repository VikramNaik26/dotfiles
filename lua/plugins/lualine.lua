return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
				theme = "catppuccin-mocha",
				sections = {
					lualine_a = {
						file = 1,
					},
				},
			},
			sections = {
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = "#ff9e64" },
					},
				},
				lualine_a = {
					{
						"buffers",
					},
				},
			},
		})
	end,
}
