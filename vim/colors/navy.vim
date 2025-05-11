hi clear
if exists('syntax on')
    syntax reset
endif

let g:colors_name = "navy"
set tgc
set background=dark

let s:old       = "#13171f"
let s:navy0_gui = "#0F1A2B"
let s:navy1_gui = "#3B4252"
let s:navy2_gui = "#434C5E"
let s:navy3_gui = "#4C566A"
let s:navy3_gui_bright = "#616E88"
let s:navy4_gui = "#D8DEE9"
let s:navy5_gui = "#E5E9F0"
let s:navy6_gui = "#ECEFF4"
let s:navy7_gui = "#8FBCBB"
let s:navy8_gui = "#88C0D0"
let s:navy9_gui = "#81A1C1"
let s:navy10_gui = "#5E81AC"
let s:navy11_gui = "#BF616A"
let s:navy12_gui = "#D08770"
let s:navy13_gui = "#EBCB8B"
let s:navy14_gui = "#A3BE8C"
let s:navy15_gui = "#B48EAD"

let s:navy1_term = "0"
let s:navy3_term = "8"
let s:navy5_term = "7"
let s:navy6_term = "15"
let s:navy7_term = "14"
let s:navy8_term = "6"
let s:navy9_term = "4"
let s:navy10_term = "12"
let s:navy11_term = "1"
let s:navy12_term = "11"
let s:navy13_term = "3"
let s:navy14_term = "2"
let s:navy15_term = "5"

let s:navy3_gui_brightened = [
  \ s:navy3_gui,
  \ "#4e586d",
  \ "#505b70",
  \ "#525d73",
  \ "#556076",
  \ "#576279",
  \ "#59647c",
  \ "#5b677f",
  \ "#5d6982",
  \ "#5f6c85",
  \ "#616e88",
  \ "#63718b",
  \ "#66738e",
  \ "#687591",
  \ "#6a7894",
  \ "#6d7a96",
  \ "#6f7d98",
  \ "#72809a",
  \ "#75829c",
  \ "#78859e",
  \ "#7b88a1",
\ ]

let g:navy_bold = get(g:, "navy_bold", 1)
let s:bold = (g:navy_bold == 0) ? "" : "bold,"

let g:navy_underline = get(g:, "navy_underline", 1)
let s:underline = (g:navy_underline == 0) ? "NONE," : "underline,"

let g:navy_italic = get(g:, "navy_italic", (has("gui_running") || $TERM_ITALICS == "true"))
let s:italic = (g:navy_italic == 0) ? "" : "italic,"

let g:navy_italic_comments = get(g:, "navy_italic_comments", 0)
let s:italicize_comments = (g:navy_italic_comments == 0) ? "" : get(s:, "italic")

let g:navy_uniform_status_lines = get(g:, "navy_uniform_status_lines", 0)

let g:navy_bold_vertical_split_line = get(g:, "navy_bold_vertical_split_line", 0)
if exists("g:navy_comment_brightness")
  echohl WarningMsg
  echomsg 'navy: warning: Variable g:navy_comment_brightness has been deprecated and will be removed in version 1.0.0!' .
                   \' The comment color brightness has been increased by 10% by default.' .
                   \' Please see https://github.com/navytheme/vim/issues/145 for more details.'
  echohl None
  let g:navy_comment_brightness = 10
endif
let g:navy_cursor_line_number_background = get(g:, "navy_cursor_line_number_background", 0)
let g:navy_uniform_diff_background = get(g:, "navy_uniform_diff_background", 0)

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", s:bold, "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
"call s:hi("ColorColumn", "", "#2e3440", "NONE", s:navy1_term, "", "")
call s:hi("ColorColumn", "", s:navy1_gui, "NONE", s:navy1_term, "", "")
call s:hi("Cursor", s:navy0_gui, s:navy4_gui, "", "NONE", "", "")
"call s:hi("CursorLine", "", "#2e3440", "NONE", s:navy1_term, "NONE", "")
call s:hi("CursorLine", "", s:navy1_gui, "NONE", s:navy1_term, "NONE", "")
call s:hi("Error", s:navy4_gui, s:navy11_gui, "", s:navy11_term, "", "")
call s:hi("iCursor", s:navy0_gui, s:navy4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:navy3_gui, "NONE", s:navy3_term, "NONE", "", "")
call s:hi("MatchParen", s:navy8_gui, s:navy3_gui, s:navy8_term, s:navy3_term, "", "")
call s:hi("NonText", s:navy2_gui, "", s:navy3_term, "", "", "")
call s:hi("Normal", s:navy4_gui, s:navy0_gui, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:navy4_gui, s:navy2_gui, "NONE", s:navy1_term, "NONE", "")
call s:hi("PmenuSbar", s:navy4_gui, s:navy2_gui, "NONE", s:navy1_term, "", "")
call s:hi("PmenuSel", s:navy8_gui, s:navy3_gui, s:navy8_term, s:navy3_term, "", "")
call s:hi("PmenuThumb", s:navy8_gui, s:navy3_gui, "NONE", s:navy3_term, "", "")
call s:hi("SpecialKey", s:navy3_gui, "", s:navy3_term, "", "", "")
call s:hi("SpellBad", s:navy11_gui, s:navy0_gui, s:navy11_term, "NONE", "undercurl", s:navy11_gui)
call s:hi("SpellCap", s:navy13_gui, s:navy0_gui, s:navy13_term, "NONE", "undercurl", s:navy13_gui)
call s:hi("SpellLocal", s:navy5_gui, s:navy0_gui, s:navy5_term, "NONE", "undercurl", s:navy5_gui)
call s:hi("SpellRare", s:navy6_gui, s:navy0_gui, s:navy6_term, "NONE", "undercurl", s:navy6_gui)
call s:hi("Visual", "", s:navy2_gui, "", s:navy1_term, "", "")
call s:hi("VisualNOS", "", s:navy2_gui, "", s:navy1_term, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
  let g:terminal_ansi_colors = [s:navy1_gui, s:navy11_gui, s:navy14_gui, s:navy13_gui, s:navy9_gui, s:navy15_gui, s:navy8_gui, s:navy5_gui, s:navy3_gui, s:navy11_gui, s:navy14_gui, s:navy13_gui, s:navy9_gui, s:navy15_gui, s:navy7_gui, s:navy6_gui]
endif


"+--- Gutter ---+
call s:hi("CursorColumn", "", s:navy1_gui, "NONE", s:navy1_term, "", "")
if g:navy_cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:navy4_gui, "", "NONE", "", "NONE", "")
else
  call s:hi("CursorLineNr", s:navy4_gui, s:navy1_gui, "NONE", s:navy1_term, "NONE", "")
endif
call s:hi("Folded", s:navy3_gui, s:navy1_gui, s:navy3_term, s:navy1_term, s:bold, "")
call s:hi("FoldColumn", s:navy3_gui, s:navy0_gui, s:navy3_term, "NONE", "", "")
call s:hi("SignColumn", s:navy1_gui, s:navy0_gui, s:navy1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:navy8_gui, "", s:navy8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:navy1_gui, "", s:navy1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:navy4_gui, s:navy11_gui, "NONE", s:navy11_term, "", "")
call s:hi("ModeMsg", s:navy4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:navy8_gui, "", s:navy8_term, "", "", "")
call s:hi("Question", s:navy4_gui, "", "NONE", "", "", "")

"call s:hi("StatusLine", s:navy4_gui, s:navy1_gui, "NONE", s:navy1_term, "NONE", "")
"call s:hi("StatusLineNC", s:navy8_gui, s:navy3_gui, s:navy8_term, s:navy3_term, "NONE", "")
call s:hi("StatusLine", s:navy4_gui, s:navy0_gui, "NONE", s:navy1_term, "NONE", "")
call s:hi("StatusLineNC", s:navy3_gui, s:navy0_gui, s:navy8_term, s:navy3_term, "NONE", "")
call s:hi("StatusLineTerm", s:navy4_gui, s:navy0_gui, "NONE", s:navy1_term, "NONE", "")
call s:hi("StatusLineTermNC", s:navy3_gui, s:navy0_gui, s:navy8_term, s:navy3_term, "NONE", "")

call s:hi("WarningMsg", s:navy0_gui, s:navy13_gui, s:navy1_term, s:navy13_term, "", "")
call s:hi("WildMenu", s:navy8_gui, s:navy1_gui, s:navy8_term, s:navy1_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:navy6_gui, s:navy10_gui, s:navy6_term, s:navy10_term, "NONE", "")
call s:hi("Search", s:navy1_gui, s:navy8_gui, s:navy1_term, s:navy8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:navy4_gui, s:navy1_gui, "NONE", s:navy1_term, "NONE", "")
call s:hi("TabLineFill", s:navy4_gui, s:navy1_gui, "NONE", s:navy1_term, "NONE", "")
call s:hi("TabLineSel", s:navy8_gui, s:navy3_gui, s:navy8_term, s:navy3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:navy4_gui, "", "NONE", "", "NONE", "")

if g:navy_bold_vertical_split_line == 0
  call s:hi("VertSplit", s:navy2_gui, s:navy0_gui, s:navy3_term, "NONE", "NONE", "")
else
  call s:hi("VertSplit", s:navy2_gui, s:navy1_gui, s:navy3_term, s:navy1_term, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
"call s:hi("Boolean", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Character", s:navy14_gui, "", s:navy14_term, "", "", "")
call s:hi("Character", "", "", "", "", "", "")
call s:hi("Comment", s:navy3_gui_bright, "", s:navy3_term, "", s:italicize_comments, "")
call s:hi("Conceal", "", "NONE", "", "NONE", "", "")
call s:hi("Conditional", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Constant", s:navy4_gui, "", "NONE", "", "", "")
call s:hi("Decorator", s:navy12_gui, "", s:navy12_term, "", "", "")
call s:hi("Define", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Delimiter", s:navy6_gui, "", s:navy6_term, "", "", "")
call s:hi("Exception", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Float", s:navy15_gui, "", s:navy15_term, "", "", "")
call s:hi("Function", s:navy8_gui, "", s:navy8_term, "", s:bold, "")
call s:hi("Identifier", s:navy4_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Keyword", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Label", s:navy9_gui, "", s:navy9_term, "", "", "")
"call s:hi("Number", s:navy15_gui, "", s:navy15_term, "", "", "")
call s:hi("Number", "", "", "", "", "", "")
call s:hi("Operator", s:navy9_gui, "", s:navy9_term, "", "NONE", "")
call s:hi("PreProc", s:navy9_gui, "", s:navy9_term, "", "NONE", "")
call s:hi("Repeat", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Special", s:navy4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:navy13_gui, "", s:navy13_term, "", "", "")
call s:hi("SpecialComment", s:navy8_gui, "", s:navy8_term, "", s:italicize_comments, "")
call s:hi("Statement", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("StorageClass", s:navy9_gui, "", s:navy9_term, "", "", "")
"call s:hi("String", s:navy14_gui, "", s:navy14_term, "", "", "")
call s:hi("String", "", "", "", "", "", "")
call s:hi("Structure", s:navy9_gui, "", s:navy9_term, "", "", "")
call s:hi("Tag", s:navy4_gui, "", "", "", "", "")
call s:hi("Todo", s:navy13_gui, "NONE", s:navy13_term, "NONE", "", "")
call s:hi("Type", s:navy9_gui, "", s:navy9_term, "", "NONE", "")
call s:hi("Typedef", s:navy9_gui, "", s:navy9_term, "", "", "")
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

"call s:hi("cIncluded", s:navy7_gui, "", s:navy7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit
hi! link cConstant Type

call s:hi("cmakeGeneratorExpression", s:navy10_gui, "", s:navy10_term, "", "", "")
