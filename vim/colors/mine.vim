
set background=dark

hi clear
let g:colors_name = 'mine'
set tgc

hi! link CurSearch IncSearch
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link WildMenu IncSearch
hi! link markdownH1Delimiter markdownH1
hi! link markdownH2Delimiter markdownH2
hi! link markdownH3Delimiter markdownH3
hi! link markdownH4Delimiter markdownH4
hi! link markdownH5Delimiter markdownH5
hi! link markdownH6Delimiter markdownH6
hi! link markdownURL markdownLinkText
hi! link mkdLink mkdInlineURL
hi! link mkdLinkDef mkdInlineURL
hi! link mkdURL mkdInlineURL

let g:terminal_ansi_colors = ['#393552', '#eb6f92', '#9ccfd8', '#f6c177', '#3e8fb0', '#c4a7e7', '#ea9a97', '#e0def4', '#908caa', '#eb6f92', '#9ccfd8', '#f6c177', '#3e8fb0', '#c4a7e7', '#ea9a97', '#e0def4']

hi Normal guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi NormalNC guifg=#e0def4 guibg=#232136 gui=NONE cterm=NONE
hi SignColumn guifg=#e0def4 guibg=#232136 gui=NONE cterm=NONE
hi StatusLineNC guifg=#6e6a86 guibg=#232136 gui=NONE cterm=NONE
hi DarkenedPanel guifg=NONE guibg=#2a273f gui=NONE cterm=NONE
hi DarkenedStatusline guifg=NONE guibg=#2a273f gui=NONE cterm=NONE
hi Folded guifg=#e0def4 guibg=#2a273f gui=NONE cterm=NONE
hi NormalFloat guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi TabLine guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#2a273f gui=NONE cterm=NONE
hi Comment guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi Comment gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#393552 gui=NONE cterm=NONE
"hi ColorColumn guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
"hi CursorLine  guifg=NONE guibg=#2a283e  gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi CursorLine   guifg=NONE guibg=#393552  gui=NONE cterm=NONE
hi CursorLineNr guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE

hi DiffAdd    guifg=#000000 guibg=#A6E3A1 gui=NONE cterm=NONE
hi DiffChange guifg=#000000 guibg=#F9E2AF gui=NONE cterm=NONE
hi DiffDelete guifg=#000000 guibg=#F38BA8 gui=NONE cterm=NONE
hi DiffText   guifg=#000000 guibg=#89B4FA gui=NONE cterm=NONE

hi Directory guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#eb6f92 guibg=NONE gui=bold cterm=bold
hi FloatBorder guifg=#44415a guibg=NONE gui=NONE cterm=NONE
hi FloatTitle guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#232136 guibg=#ea9a97 gui=NONE cterm=bold
hi LineNr guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#e0def4 guibg=#44415a gui=NONE cterm=NONE
hi ModeMsg guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi PmenuSel guifg=#e0def4 guibg=#393552 gui=NONE cterm=bold
hi PmenuThumb guifg=NONE guibg=#44415a gui=NONE cterm=NONE

hi Question guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Search guifg=NONE guibg=#44415a gui=NONE cterm=NONE
hi SpecialKey guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE

hi SpellBad   guifg=#000000 guibg=#F9E2AF gui=undercurl cterm=undercurl
hi SpellCap   guifg=#000000 guibg=#F38BA8 gui=undercurl cterm=undercurl
hi SpellLocal guifg=#000000 guibg=#89B4FA gui=undercurl cterm=undercurl
hi SpellRare  guifg=#000000  guibg=#A6E3A1 gui=undercurl cterm=undercurl

hi TabLineSel guifg=#e0def4 guibg=#393552 gui=NONE cterm=NONE
hi Title guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#44415a guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=NONE guibg=#44415a gui=NONE cterm=bold
hi WarningMsg guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Character guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#c4a7e7 guibg=NONE gui=NONE cterm=bold
hi Delimiter guifg=#908caa guibg=NONE gui=NONE cterm=NONE

hi Error guifg=#eb6f92 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#ea9a97 guibg=NONE gui=NONE cterm=bold
hi Identifier guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#c4a7e7 guibg=NONE gui=NONE cterm=bold
hi Keyword guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Number guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi String guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline

hi Normal ctermfg=189 ctermbg=NONE cterm=NONE
hi NormalNC ctermfg=189 ctermbg=NONE cterm=NONE
hi SignColumn ctermfg=189 ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=60 ctermbg=NONE cterm=NONE
hi DarkenedPanel ctermfg=NONE ctermbg=NONE cterm=NONE
hi DarkenedStatusline ctermfg=NONE ctermbg=NONE cterm=NONE
hi Folded ctermfg=189 ctermbg=NONE cterm=NONE
hi NormalFloat ctermfg=189 ctermbg=NONE cterm=NONE
hi Pmenu ctermfg=103 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=103 ctermbg=NONE cterm=NONE
hi TabLine ctermfg=103 ctermbg=NONE cterm=NONE
hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
hi Comment ctermfg=60 ctermbg=NONE cterm=NONE
hi Comment cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE
hi CursorLineNr ctermfg=189 ctermbg=NONE cterm=NONE
hi DiffAdd ctermfg=NONE ctermbg=238 cterm=NONE
hi DiffChange ctermfg=NONE ctermbg=237 cterm=NONE
hi DiffDelete ctermfg=NONE ctermbg=53 cterm=NONE
hi DiffText ctermfg=NONE ctermbg=237 cterm=NONE
hi Directory ctermfg=152 ctermbg=NONE cterm=NONE
hi ErrorMsg ctermfg=204 ctermbg=NONE cterm=bold
hi FloatBorder ctermfg=60 ctermbg=NONE cterm=NONE
hi FloatTitle ctermfg=60 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=60 ctermbg=NONE cterm=NONE
hi IncSearch ctermfg=235 ctermbg=174 cterm=bold
hi LineNr ctermfg=60 ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=189 ctermbg=60 cterm=NONE
hi ModeMsg ctermfg=103 ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=183 ctermbg=NONE cterm=NONE
hi NonText ctermfg=60 ctermbg=NONE cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=235 cterm=NONE
hi PmenuSel ctermfg=189 ctermbg=237 cterm=bold
hi PmenuThumb ctermfg=NONE ctermbg=60 cterm=NONE
hi Question ctermfg=222 ctermbg=NONE cterm=NONE
hi Search ctermfg=NONE ctermbg=60 cterm=NONE
hi SpecialKey ctermfg=152 ctermbg=NONE cterm=NONE
hi TabLineSel ctermfg=189 ctermbg=237 cterm=NONE
hi Title ctermfg=189 ctermbg=NONE cterm=bold
hi VertSplit ctermfg=60 ctermbg=NONE cterm=NONE
hi Visual ctermfg=NONE ctermbg=60 cterm=bold
hi WarningMsg ctermfg=222 ctermbg=NONE cterm=NONE
hi Boolean ctermfg=174 ctermbg=NONE cterm=bold
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE
hi Conditional ctermfg=31 ctermbg=NONE cterm=bold
hi Constant ctermfg=222 ctermbg=NONE cterm=NONE
hi Debug ctermfg=174 ctermbg=NONE cterm=NONE
hi Define ctermfg=183 ctermbg=NONE cterm=NONE
hi Delimiter ctermfg=103 ctermbg=NONE cterm=NONE
hi Error ctermfg=204 ctermbg=NONE cterm=NONE
hi Exception ctermfg=31 ctermbg=NONE cterm=NONE
hi Float ctermfg=222 ctermbg=NONE cterm=NONE
hi Function ctermfg=174 ctermbg=NONE cterm=bold
hi Identifier ctermfg=174 ctermbg=NONE cterm=NONE
hi Include ctermfg=183 ctermbg=NONE cterm=NONE
hi Keyword ctermfg=31 ctermbg=NONE cterm=NONE
hi Label ctermfg=152 ctermbg=NONE cterm=NONE
hi Macro ctermfg=183 ctermbg=NONE cterm=NONE
hi Number ctermfg=NONE ctermbg=NONE cterm=NONE
hi Operator ctermfg=103 ctermbg=NONE cterm=NONE
hi PreCondit ctermfg=183 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=183 ctermbg=NONE cterm=NONE
hi Repeat ctermfg=31 ctermbg=NONE cterm=bold
hi Special ctermfg=174 ctermbg=NONE cterm=NONE
hi SpecialChar ctermfg=174 ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=183 ctermbg=NONE cterm=NONE
hi Statement ctermfg=31 ctermbg=NONE cterm=NONE
hi StorageClass ctermfg=152 ctermbg=NONE cterm=NONE
hi String ctermfg=NONE ctermbg=NONE cterm=NONE
hi Structure ctermfg=152 ctermbg=NONE cterm=NONE
hi Tag ctermfg=174 ctermbg=NONE cterm=NONE
hi Todo ctermfg=183 ctermbg=NONE cterm=NONE
hi Type ctermfg=152 ctermbg=NONE cterm=NONE
hi Typedef ctermfg=152 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
