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

set hlsearch

if has("gui_gtk")
	set guifont=Droid\ Sans\ Mono\ 9
	set lines=35
else
	set guifont=Monaco:h11
	set lines=50
endif

set columns=80

"set guitablabel=%t
