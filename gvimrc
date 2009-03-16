set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" I like highlighting strings inside C comments
let c_comment_strings=1

" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
	syntax on
endif

if has("gui_gtk")
	set guifont=Droid\ Sans\ Mono\ 9
	win 80 35
endif
if has("gui_mac") || has("gui_macvim")
	set guifont=Monaco:h12
	win 80 45
	set guioptions-=T
endif

colorscheme ir_dark

" disable the bell
set vb t_vb=
