nnoremap <Leader>gb :Gblame<Enter>
nnoremap <Leader>gc :Gcommit<Enter>
nnoremap <Leader>gd :Gdiff<Enter>
nnoremap <Leader>ge :Gedit<Enter>
nnoremap <Leader>gg :Ggrep<Space>
nnoremap <Leader>g. :Gcd<Enter>
nnoremap <Leader>gl :Extradite<Enter>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gr :Gread<Enter>
nnoremap <Leader>gs :Gstatus<Enter>
nnoremap <Leader>gw :Gwrite<Enter>
nnoremap <Leader>gx :Gremove<Enter>

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P