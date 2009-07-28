" vim:noet:ts=4:sw=4:
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
	set guifont=Monaco\ 12
	win 80 35
	colorscheme satori
endif
if has("gui_mac") || has("gui_macvim")
	set guifont=Monaco:h12
	win 80 45
	colorscheme ir_dark
endif
colo bright_one

" remove toolbar & menu
set guioptions-=T
set guioptions-=m

nmap <C-M> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<CR>

map <C-Tab> :tabn<CR>
map <C-S-Tab> :tabp<CR>
map <S-Tab> :tabp<CR>

" copy paste
vmap <C-C> "+y
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-X> "+x
nmap <C-A> <S-G><S-V>gg

" disable the bell
set vb t_vb=
