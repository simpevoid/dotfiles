require("dired").setup({
    path_separator = "/",                -- Use '/' as the path separator
    show_hidden = false,                  -- Show hidden files
    show_icons = false,                  -- Show icons (patched font required)
    show_banner = false,                 -- Do not show the banner
    hide_details = false,                -- Show file details by default
    sort_order = "name",                 -- Sort files by name by default

    -- Define keybindings for various 'dired' actions
    keybinds = {
	dired_enter = "<cr>",
	dired_back = "-",
	dired_up = "_",
	dired_rename = "R",
	dired_quit = "q",
    },

})

