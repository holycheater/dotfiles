" Black:   #111111  #4c4c4c
" Red:     #dc2f22
" Green:   #34d200
" Yellow:  #f5b800
" Blue:    #2285dc
" Magenta: #dc22dc
" Cyan:    #5122dc
" White:   #ffffff

" ********************************************************************************
set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "bright_one"

" General colors
hi Normal           guifg=#111111  guibg=#ffffff  gui=NONE
hi NonText          guifg=#070707  guibg=#ffffff  gui=NONE

hi Cursor           guifg=#ffffff  guibg=#000000  gui=NONE
hi LineNr           guifg=#3d3d3d  guibg=#000000  gui=NONE

hi VertSplit        guifg=#eeeeee  guibg=#aaaaaa  gui=NONE
hi StatusLine       guifg=#3e9679  guibg=#eeeeee  gui=italic
hi StatusLineNC     guifg=#000000  guibg=#eeeeee  gui=NONE

hi Folded           guifg=#5a646e  guibg=#eeeeee  gui=NONE
hi Title            guifg=#111111  guibg=NONE     gui=bold
hi Visual           guifg=NONE     guibg=#eeeeee  gui=NONE

hi SpecialKey       guifg=#808080  guibg=#343434  gui=NONE

hi WildMenu         guifg=green    guibg=yellow   gui=NONE
hi PmenuSbar        guifg=black    guibg=white    gui=NONE

hi Error            guifg=NONE     guibg=NONE     gui=undercurl
hi ErrorMsg         guifg=white    guibg=#dc2f22  gui=bold
hi WarningMsg       guifg=white    guibg=#ffb900  gui=bold

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=#ffffff  guibg=#b49dff  gui=bold

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE     guibg=#121212  gui=NONE
  hi CursorColumn   guifg=NONE     guibg=#121212  gui=NONE
  hi MatchParen     guifg=#ff0000  guibg=NONE     gui=bold
  hi Pmenu          guifg=#f6f3e8  guibg=#444444  gui=NONE
  hi PmenuSel       guifg=#000000  guibg=#cae682  gui=NONE
  hi Search         guifg=NONE     guibg=NONE     gui=underline
endif

" Syntax highlighting
hi Comment          guifg=#4c4c4c  guibg=NONE     gui=NONE
hi String           guifg=#34d200  guibg=NONE     gui=NONE
hi Number           guifg=#dc22dc  guibg=NONE     gui=NONE

hi Keyword          guifg=#2285dc  guibg=NONE     gui=NONE
hi PreProc          guifg=#2285dc  guibg=NONE     gui=NONE
hi Conditional      guifg=#2c7ccc  guibg=NONE     gui=NONE

hi Todo             guifg=#000000  guibg=#ffff37  gui=bold
hi Todo             guifg=#ff0000  guibg=#b4eeb4  gui=none
hi Constant         guifg=#31c356  guibg=NONE     gui=bold

hi Identifier       guifg=#00abe5  guibg=NONE     gui=NONE
hi Function         guifg=#f09d50  guibg=NONE     gui=NONE
hi Type             guifg=#f5b800  guibg=NONE     gui=NONE
hi Statement        guifg=#2c7ccc  guibg=NONE     gui=NONE

hi Special          guifg=#e16230  guibg=NONE     gui=NONE
hi Delimiter        guifg=#2285dc  guibg=NONE     gui=NONE
hi Operator         guifg=#444444  guibg=NONE     gui=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" Special for XML
hi link xmlTag          Identifier
hi link xmlTagName      Identifier
hi link xmlEndTag       Identifier

" Special for HTML
hi link htmlTag         Identifier
hi link htmlTagName     Identifier
hi link htmlEndTag      Identifier


" Special for Javascript
hi link javaScriptNumber      Number

" Special for PHP
