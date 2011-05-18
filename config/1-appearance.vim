set colorcolumn=+1             " show textwidth limit
autocmd ColorScheme * highlight! link ColorColumn StatusLineNC

if has('gui_running')
  colorscheme desertEx
  highlight Comment gui=none
elseif &t_Co > 8
  colorscheme desertEx
elseif &term == 'linux'
  set background=dark
else
  set background=light
end

set relativenumber             " show line numbers relative to cursor
set scrolloff=3                " context lines around cursor
set novisualbell               " don't flash the screen
set laststatus=2               " always show status line
set guicursor+=a:blinkwait0    " disable cursor blink in gvim
set guifont=Tamsyn\ 11,Monospace\ 9

set wildmenu                   " turn on command line completion wild style
set wildmode=list:longest,full " turn on wild mode huge list

" retain relative cursor position when paging the screen
nnoremap <PageUp> <C-U>
nnoremap <PageDown> <C-D>
