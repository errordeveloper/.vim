nnoremap <Leader>ts :set spell!<Enter>
nnoremap <Leader>th :set nohlsearch!<Enter>
nnoremap <Leader>tn :set relativenumber!<Enter>
nnoremap <Leader>tz :set foldenable!<Enter>
nnoremap <Leader>tp :set paste!<Enter>

nnoremap <Leader>tc :call CycleTerminalPaletteSize()<Enter>
function! CycleTerminalPaletteSize()
  " choose new palette size
  if &t_Co == 8
    set t_Co=88

  elseif &t_Co == 88
    set t_Co=256

  elseif &t_Co == 256
    set t_Co=8
  endif

  " show new palette size
  redraw
  echo &t_Co
endfunction
