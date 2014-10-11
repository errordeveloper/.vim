set nobackup writebackup " backup current file, deleted afterwards

" remove trailing spaces before saving text files
" http://vim.wikia.com/wiki/Remove_trailing_spaces
"" It is now a good idea to do this on save, it messes
"" up a commit diff - such things have to be in another
"" separate commit!
""autocmd BufWritePre * :call StripTrailingWhitespace()

"" TODO: move this function to `util.vim` or `func.vim`
function! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    if &filetype == 'mail'
      " preserve space after e-mail signature separator
      %s/\(^--\)\@<!\s\+$//e
    else
      %s/\s\+$//e
    endif
    normal 'yz<Enter>
    normal `z
  endif
endfunction

nnoremap <Leader>w :write<Enter>
nnoremap <Leader>W :saveas<Space>
