" fix arrow keys in insert mode
if &term == 'rxvt-unicode-256color'
  execute "inoremap \e[OA <Up>"
endif

" treat wrapped lines like real lines
nnoremap <Up> gk
nnoremap <Down> gj
