
"if TeX-9
let g:tex_flavor = 'latex'
let g:tex_viewer = {'app': 'evince', 'target': 'pdf'}

let g:tex_fold_enabled = 1
let g:tex_comment_nospell= 1
let g:tex_synctex = 1

" This mapping relies on tex_nine.vim for putting the closing brace
map <F8> cw\emph{<Esc>]p
" It doesn't seem to work in the input mode ;(
""imap <F8> <Esc>cw\emph{<Esc>[p
