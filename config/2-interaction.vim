" swap backslash with comma, using the latter as the <Leader> key in shortcuts
let mapleader=','
noremap \ ,

set shell=/bin/sh " use Bourne shell for command substitution
set history=1000  " remember this many commands & searches
set confirm       " ask user before aborting an action

" be consistent with capitalized C and D commands which reach the end of line
nnoremap Y y$

" retain relative cursor position when paging the screen
nnoremap <PageUp> <C-U>
nnoremap <PageDown> <C-D>
