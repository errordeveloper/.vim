set colorcolumn=+1             " show textwidth limit
autocmd ColorScheme * highlight! link ColorColumn StatusLineNC

if has('gui_running')
  colorscheme xoria256
  highlight Pmenu    guibg=#d0d0d0
  highlight PmenuSel guifg=#d0d0d0
elseif &t_Co > 8
  colorscheme xoria256
  highlight Pmenu    ctermbg=188
  highlight PmenuSel ctermfg=188
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
