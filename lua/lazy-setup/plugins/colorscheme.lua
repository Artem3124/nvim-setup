return {
	"EdenEast/nightfox.nvim",
	config = function()
		local Shade = require("nightfox.lib.shade")
		require("nightfox").setup({
			options = {
				-- Compiled file's destination location
				compile_path = vim.fn.stdpath("cache") .. "/nightfox",
				compile_file_suffix = "_compiled", -- Compiled file suffix
				transparent = true, -- Disable setting background
				terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
				dim_inactive = false, -- Non focused panes set to alternative background
				module_default = true, -- Default enable value for modules
				colorblind = {
					enable = true, -- Enable colorblind support
					simulate_only = true, -- Only show simulated colorblind colors and not diff shifted
					severity = {
						protan = 0, -- Severity [0,1] for protan (red)
						deutan = 0, -- Severity [0,1] for deutan (green)
						-- tritan = 1,    -- Severity [0,1] for tritan (blue)
					},
				},
				styles = { -- Style to be applied to different syntax groups
					comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
					conditionals = "NONE",
					constants = "NONE",
					functions = "NONE",
					keywords = "NONE",
					numbers = "NONE",
					operators = "NONE",
					strings = "NONE",
					types = "NONE",
					variables = "NONE",
				},
				inverse = { -- Inverse highlight for different types
					match_paren = false,
					visual = false,
					search = false,
				},
				modules = { -- List of various plugins and additional options
					-- ...
				},
			},
			palettes = {
				nightfox = {

					-- blue    = '#648EC4'
					black = Shade.new("#484f58", 0.15, -0.15),
					red = Shade.new("#ff7b72", 0.15, -0.15),
					green = Shade.new("#81b29a", 0.15, -0.15),
					yellow = Shade.new("#dbc074", 0.15, -0.15),
					blue = Shade.new("#7fa1bd", 0.15, -0.15),
					magenta = Shade.new("#bc8cff", 0.15, -0.15),
					cyan = Shade.new("#84aee4", 0.15, -0.15),
					white = Shade.new("#b1bac4", 0.15, -0.15),

					-- yellow = Shade.new("#dbc074", "#dbc074", "#dbc074"),
					-- -- yellow = Shade.new("#ebcb8b", "#f0d399", "#d9b263"),
					-- blue = Shade.new("#81a2be", "#8ab9f3", "#5f819d"),
					-- cyan = Shade.new("#79c0ff", "#8ab9f3", "#58a6ff"),
					-- white = Shade.new("#d0d6dc", "#e0e0e0", "#b1bac4"),
					orange = Shade.new("#c9826b", "#d89079", "#b46950"),
					pink = Shade.new("#bf88bc", "#d092ce", "#a96ca5"),
				},
			},
			specs = {
				nightfox = {
					syntax = {
						-- builtin0 = "orange"
					},
					diag = {
						error = "red",
						warn = "yellow",
						info = "blue",
						hint = "green",
						ok = "green",
					},
				},
			},
			groups = {
				nightfox = {
					StatusLine = { fg = "#668aab", bg = "none" },
					FloatBorder = { fg = "#dbc074" },
					NormalFloat = { fg = "#cdcecf", bg = "none" },
					TelescopeBorder = { fg = "#668aab" },
					TelescopePromptBorder = { fg = "#dbc074" },
					TelescopePromptPrefix = { fg = "#dbc074" },
					TelescopePromptTitle = { fg = "#dbc074" },
					TelescopePromptCounter = { fg = "#dbc074" },
          CursorLine = { bg = "#2e3440" },
				},
			},
		})
		-- setup must be called before loading
		vim.cmd("colorscheme nightfox")
		-- vim.cmd("colorscheme dayfox")
	end,
}
