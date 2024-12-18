local colors = {
	red = "#d27e99",
	yellow = "#f9d791",
	black = "#545464",
	transparent = "#ffffff",
	white = "#dcd7ba",
	green = "#6e915f",
	blue = "#6693bf",
	grey = "#9b9ea4",
	magenta = "#624c83",
	lightgray = "#d7dae1",
	inactivegrey = "#c4c6cd",
	darkgray = "#9b9ea4",
}

local modules_colors = {
	b = { bg = colors.transparent, fg = colors.black },
	c = { bg = colors.transparent, fg = colors.black },
}

local kanagawaline = {
	normal = {
		a = { bg = colors.white, fg = colors.black, gui = "bold" },
		b = modules_colors.b,
		c = modules_colors.b,
	},
	insert = {
		a = { bg = colors.blue, fg = colors.transparent, gui = "bold" },
		b = modules_colors.b,
		c = modules_colors.b,
	},
	visual = {
		a = { bg = colors.magenta, fg = colors.transparent, gui = "bold" },
		b = modules_colors.b,
		c = modules_colors.b,
	},
	replace = {
		a = { bg = colors.red, fg = colors.transparent, gui = "bold" },
		b = modules_colors.b,
		c = modules_colors.b,
	},
	command = {
		a = { bg = colors.green, fg = colors.transparent, gui = "bold" },
		b = modules_colors.b,
		c = modules_colors.b,
	},
	inactive = {
		a = { bg = colors.black, fg = colors.black, gui = "bold" },
		b = modules_colors.b,
		c = modules_colors.b,
	},
}

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = kanagawaline,
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = { {"filename", path = 1 } },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "diagnostics" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
