set background=dark
set tgc
syntax reset

let g:colors_name = 'rose'
let s:t_Co = exists('&t_Co') && !has('gui_running') ? (&t_Co ?? 0) : -1
set t_Co=256

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

let s:base = "#232136"
let s:subtle = "#908caa"
let s:text = "#e0def4"
let s:rose = "#ea9a97"
let s:pine = "#3e8fb0"
let s:foam = "#9ccfd8"
let s:iris = "#c4a7e7"
let s:highlight_low = "#2a283e"


let s:yellow = "#F9E2AF"
let s:green = "#A6E3A1"
let s:blue = "#89B4FA"
let s:subtext0 = "#A6ADC8"
let s:overlay0 = "#6C7086"
let s:base = "#000000"
let s:crust = "#11111B"
let s:red = "#F38BA8"

function! s:hi(group, guisp, guifg, guibg, gui, cterm)
  let cmd = ""
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:gui != ""
    let cmd = cmd . " gui=" . a:gui
  endif
  if a:cterm != ""
    let cmd = cmd . " cterm=" . a:cterm
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction



call s:hi("Normal", "NONE", s:text, s:base, "NONE", "NONE")
hi Visual guifg=NONE guibg=#44415a gui=NONE cterm=bold
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
call s:hi("ColorColumn", "NONE", "NONE", s:highlight_low, "NONE", "NONE")
call s:hi("Cursor", "NONE", s:base, s:text, "NONE", "NONE")
hi CursorColumn guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi Directory guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#3b4456 gui=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#393552 gui=NONE cterm=NONE
hi DiffDelete guifg=NONE guibg=#4b3148 gui=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#4b3949 gui=NONE cterm=NONE
hi ErrorMsg guifg=#eb6f92 guibg=NONE gui=bold cterm=bold
hi VertSplit guifg=#44415a guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#e0def4 guibg=#2a273f gui=NONE cterm=NONE
hi FoldColumn guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi SignColumn guifg=#e0def4 guibg=#232136 gui=NONE cterm=NONE
hi IncSearch guifg=#232136 guibg=#ea9a97 gui=NONE cterm=bold
hi Search guifg=NONE guibg=#44415a gui=NONE cterm=NONE
call s:hi("CursorLineNR", "NONE", s:iris, "NONE", "NONE", "bold")
hi LineNr guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#e0def4 guibg=#44415a gui=NONE cterm=NONE
hi ModeMsg guifg=#908caa guibg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE

hi Pmenu guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#2a283e gui=NONE cterm=NONE
hi PmenuSel guifg=#e0def4 guibg=#393552 gui=NONE cterm=bold
hi PmenuThumb guifg=NONE guibg=#44415a gui=NONE cterm=NONE
"hi PmenuMatch guifg=#2a273f guibg=#908caa gui=NONE cterm=NONE

hi Question guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
call s:hi("SpellBad", "NONE", s:base, s:red, "NONE", "NONE")
call s:hi("SpellCap", "NONE", s:base, s:yellow, "NONE", "NONE")
call s:hi("SpellLocal", "NONE", s:base, s:blue, "NONE", "NONE")
call s:hi("SpellRare", "NONE", s:base, s:green, "NONE", "NONE")

hi StatusLine guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi StatusLineNC guifg=#6e6a86 guibg=#232136 gui=NONE cterm=NONE
hi StatusLineTerm guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#6e6a86 guibg=#232136 gui=NONE cterm=NONE

hi NormalFloat guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi DarkenedPanel guifg=NONE guibg=#2a273f gui=NONE cterm=NONE
hi DarkenedStatusline guifg=NONE guibg=#2a273f gui=NONE cterm=NONE
hi TabLine guifg=#908caa guibg=#2a273f gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#2a273f gui=NONE cterm=NONE
hi TabLineSel guifg=#e0def4 guibg=#393552 gui=NONE cterm=NONE
hi Title guifg=#e0def4 guibg=NONE gui=NONE cterm=bold
hi WarningMsg guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#908caa guibg=NONE gui=NONE cterm=NONE

hi Comment guifg=#6e6a86 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE


hi Exception guifg=#3e8fb0 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE

hi Tag guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#ea9a97 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Error guifg=#eb6f92 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#c4a7e7 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi String ctermfg=222 ctermbg=NONE cterm=NONE
"call s:hi("String", "NONE", "NONE", "NONE", "NONE", "NONE")
"call s:hi("Character", "NONE", "NONE", "NONE", "NONE", "NONE")
hi Character guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Character ctermfg=222 ctermbg=NONE cterm=NONE
"call s:hi("Number", "NONE", "NONE", "NONE", "NONE", "NONE")
hi Number guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Number ctermfg=222 ctermbg=NONE cterm=NONE
hi Boolean guifg=#ea9a97 guibg=NONE gui=NONE cterm=bold
hi Float guifg=#f6c177 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#ea9a97 guibg=NONE gui=NONE cterm=bold
call s:hi("Conditional", "NONE", s:pine, "NONE", "NONE", "bold")
call s:hi("Repeat", "NONE", s:pine, "NONE", "NONE", "bold")
call s:hi("Label", "NONE", s:foam, "NONE", "NONE", "NONE")

hi Structure guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#9ccfd8 guibg=NONE gui=NONE cterm=NONE
"call s:hi("Operator", "NONE", s:subtle, "NONE", "NONE", "NONE")
hi Operator guifg=#908caa guibg=NONE gui=NONE cterm=NONE
  hi Operator ctermfg=103 ctermbg=NONE cterm=NONE
call s:hi("Keyword", "NONE", s:pine, "NONE", "NONE", "NONE")
call s:hi("Include", "NONE", s:iris, "NONE", "NONE", "bold")
call s:hi("StorageClass", "NONE", s:foam, "NONE", "NONE", "NONE")
hi Define guifg=#c4a7e7 guibg=NONE gui=NONE cterm=bold


"makefils
hi makeTarget      guifg=#ea9a97 guibg=NONE gui=NONE     ctermfg=174 ctermbg=NONE cterm=bold   
hi makeDependency  guifg=#ea9a97 guibg=NONE gui=NONE     ctermfg=174 ctermbg=NONE cterm=NONE   
hi makeCommands    guifg=#c4a7e7 guibg=NONE gui=NONE     ctermfg=183 ctermbg=NONE cterm=NONE   
hi makeFunction    guifg=#f6c177 guibg=NONE gui=NONE     ctermfg=222 ctermbg=NONE cterm=NONE   
hi makeShell       guifg=#9ccfd8 guibg=NONE gui=NONE   	 ctermfg=152 ctermbg=NONE cterm=italic 
hi makeStatement   guifg=#3e8fb0 guibg=NONE gui=NONE     ctermfg=31  ctermbg=NONE cterm=bold
hi makeDirective   guifg=#c4a7e7 guibg=NONE gui=NONE     ctermfg=183 ctermbg=NONE cterm=bold   
hi makeDefine      guifg=#3e8fb0 guibg=NONE gui=NONE     ctermfg=31  ctermbg=NONE cterm=NONE   
hi makeVariable    guifg=#c4a7e7 guibg=NONE ctermfg=141 
hi makeBuiltinVar  guifg=#9ccfd8 guibg=NONE gui=NONE     ctermfg=152 ctermbg=NONE cterm=bold   
hi makeSpecialVar  guifg=#ea9a97 guibg=NONE gui=NONE     ctermfg=174 ctermbg=NONE cterm=bold   
hi makeOperator    guifg=#908caa guibg=NONE gui=NONE     ctermfg=103 ctermbg=NONE cterm=NONE   
hi makeWildcards   guifg=#3e8fb0 guibg=NONE gui=NONE     ctermfg=31  ctermbg=NONE cterm=NONE   
hi makeString      guifg=#f6c177 guibg=NONE gui=NONE     ctermfg=222 ctermbg=NONE cterm=NONE   
hi makeEscChar     guifg=#ea9a97 guibg=NONE gui=NONE     ctermfg=174 ctermbg=NONE cterm=NONE   
hi makePath        guifg=#9ccfd8 guibg=NONE gui=NONE     ctermfg=152 ctermbg=NONE cterm=NONE   
hi makeRule        guifg=#c4a7e7 guibg=NONE gui=NONE     ctermfg=183 ctermbg=NONE cterm=bold   
hi makeComment     guifg=#908caa guibg=NONE gui=NONE     ctermfg=103 ctermbg=NONE cterm=NONE   
hi makeNumber      guifg=#f6c177 guibg=NONE gui=NONE     ctermfg=222 ctermbg=NONE cterm=NONE   
hi makeError       guifg=#eb6f92 guibg=NONE gui=NONE	 ctermfg=204 ctermbg=NONE cterm=bold
hi makeSpecial     guifg=#ea9a97 guibg=NONE gui=NONE     ctermfg=174 ctermbg=NONE cterm=NONE   
hi makeDebug       guifg=#ea9a97 guibg=NONE gui=NONE     ctermfg=174 ctermbg=NONE cterm=NONE   
hi makeTodo        guifg=#c4a7e7 guibg=NONE gui=NONE     ctermfg=183 ctermbg=NONE cterm=NONE   
