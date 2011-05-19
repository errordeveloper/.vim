set hidden " lets you switch buffers without saving

nnoremap <C-PageUp> :bprev<Enter>
nnoremap <C-PageDown> :bnext<Enter>
nnoremap <A-6> :FufBuffer<Enter>
nnoremap <Leader>4 :call CloseCurrentBuffer()<Enter>
function! CloseCurrentBuffer()
  execute 'bnext | bdelete '. bufnr('%')
endfunction
nnoremap <Leader>l :checktime<Enter>
