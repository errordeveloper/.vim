" swap backslash with comma, using the latter as the <Leader> key in shortcuts
let mapleader=','
noremap \ ,

set shell=/bin/tcsh
set history=1000  " remember this many commands & searches
set confirm       " ask user before aborting an action

" be consistent with capitalized C and D commands which reach the end of line
nnoremap Y y$

" retain relative cursor position when paging the screen
nnoremap <PageUp> <C-U>
nnoremap <PageDown> <C-D>

set mouse=a

" fix arrow keys in insert mode
"if &term == 'rxvt-unicode-256color' "|| &term == 'rxvt-unicode'
"  execute "inoremap \e[OA <Up>"
"endif


" treat wrapped lines like real lines
""inoremap <Up> gk
""inoremap <Down> gj



" <Up>=^[[A
" <Down>=^[[B
" <Left>=^[[D
" <Right>=^[[C

set nocompatible
"set term=builtin_ansi
"set nottybuiltin
"set noesckeys

"set ttimeout
"set ttimeoutlen=100
