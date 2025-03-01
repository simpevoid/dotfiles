


set background=dark
hi clear
let g:colors_name = 'rose'
set tgc

let s:t_Co = exists('&t_Co') && !has('gui_running') ? (&t_Co ?? 0) : -1

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
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi CursorLineNr guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#3b4456 gui=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#393552 gui=NONE cterm=NONE
hi DiffDelete guifg=NONE guibg=#4b3148 gui=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#4b3949 gui=NONE cterm=NONE
hi Directory guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#eb6f92 guibg=NONE gui=bold cterm=bold
hi FloatBorder guifg=#44415a guibg=NONE gui=NONE cterm=NONE
hi FloatTitle guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#232136 guibg=#ea9a97 gui=NONE cterm=NONE
hi LineNr guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#e0def4 guibg=#44415a gui=NONE cterm=NONE
hi ModeMsg guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi PmenuSel guifg=#e0def4 guibg=#393552 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#44415a gui=NONE cterm=NONE
hi PmenuMatch guifg=#2a273f guibg=#908caa gui=NONE cterm=NONE
hi Question guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Search guifg=NONE guibg=#44415a gui=NONE cterm=NONE
hi SpecialKey guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellCap guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellLocal guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi SpellRare guifg=NONE guibg=NONE guisp=#908caa gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
hi TabLineSel guifg=#e0def4 guibg=#393552 gui=NONE cterm=NONE
hi Title guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#44415a guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=NONE guibg=#44415a gui=NONE cterm=NONE
hi WarningMsg guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Character guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#eb6f92 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
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
hi htmlArg guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi htmlBold guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi htmlEndTag guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#c4a7e7 guibg=NONE gui=bold cterm=bold
hi htmlH2 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi htmlH3 guifg=#ea9a97 guibg=NONE gui=bold cterm=bold
hi htmlH4 guifg=#f6c177 guibg=NONE gui=bold cterm=bold
hi htmlH5 guifg=#3e8fb0 guibg=NONE gui=bold cterm=bold
hi htmlItalic guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi htmlItalic gui=NONE cterm=NONE
hi htmlLink guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi htmlTagN guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi markdownDelimiter guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#c4a7e7 guibg=NONE gui=bold cterm=bold
hi markdownH2 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi markdownH3 guifg=#ea9a97 guibg=NONE gui=bold cterm=bold
hi markdownH4 guifg=#f6c177 guibg=NONE gui=bold cterm=bold
hi markdownH5 guifg=#3e8fb0 guibg=NONE gui=bold cterm=bold
hi markdownH6 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi markdownLinkText guifg=#c4a7e7 guibg=NONE gui=underline cterm=underline
hi mkdCode guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi mkdCode gui=NONE cterm=NONE
hi mkdCodeDelimiter guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi mkdCodeEnd guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi mkdCodeStart guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi mkdFootnotes guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi mkdID guifg=#9ccfd8 guibg=NONE gui=underline cterm=underline
hi mkdInlineURL guifg=#c4a7e7 guibg=NONE gui=underline cterm=underline
hi mkdListItemLine guifg=#e0def4 guibg=NONE gui=NONE cterm=NONE
hi mkdRule guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi VimwikiHR guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi VimwikiHeader1 guifg=#c4a7e7 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader2 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader3 guifg=#ea9a97 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader4 guifg=#f6c177 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader5 guifg=#3e8fb0 guibg=NONE gui=bold cterm=bold
hi VimwikiHeader6 guifg=#9ccfd8 guibg=NONE gui=bold cterm=bold
hi VimwikiHeaderChar guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi VimwikiLink guifg=#c4a7e7 guibg=NONE gui=underline cterm=underline
hi VimwikiList guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi VimwikiNoExistsLink guifg=#eb6f92 guibg=NONE gui=NONE cterm=NONE
