return require('packer').startup(function(use)

    use {
	"X3eRo0/dired.nvim",
	requires = "MunifTanjim/nui.nvim",
	config = function()
	    require("dired").setup({
		path_separator = "/",                -- Use '/' as the path separator
		show_hidden = true,                  -- Show hidden files
		show_icons = false,                  -- Show icons (patched font required)
		show_banner = false,                 -- Do not show the banner
		hide_details = false,                -- Show file details by default
		sort_order = "dirs",                 -- Sort files by name by default

		-- Define keybindings for various 'dired' actions
		keybinds = {
		    dired_enter = "<cr>",
		    dired_back = "-",
		    dired_up = "_",
		    dired_rename = "R",
		    -- ... (add more keybindings as needed)
		    dired_quit = "q",
		},
	    })
	end
    }

    use({
	"blazkowolf/gruber-darker.nvim",
	config = function()
	    require("gruber-darker").setup({
		bold = true,
		invert = {
		    signs = false,
		    tabline = false,
		    visual = false,
		},
		italic = {
		    strings = false,
		    comments = false,
		    operators = false,
		    folds = false,
		},
		undercurl = true,
		underline = true,
	    })
	end
    })

end)
