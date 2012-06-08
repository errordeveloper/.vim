""set colorcolumn=+1             " show textwidth limit
""autocmd ColorScheme * highlight! link ColorColumn StatusLineNC
""
""if has('gui_running')
""  colorscheme xoria256
""elseif &t_Co > 8
""  colorscheme xoria256
""elseif &term == 'linux'
""  set background=dark
""else
""  set background=dark
""end
"
""set relativenumber             " show line numbers relative to cursor

set scrolloff=3                " context lines around cursor
set novisualbell               " don't flash the screen
set laststatus=2               " always show status line
set guicursor+=a:blinkwait0    " disable cursor blink in gvim
set guifont=Tamsyn\ 11,Monospace\ 9

set wildmenu                   " turn on command line completion wild style
set wildmode=list:longest,full " turn on wild mode huge list

"" TODO: add a variable to /etc/csh.d/colour
if &term ==  'rxvt-unicode-256color' || &term == 'screen-256color' || &term == 'xterm-256color'

  let g:solarized_bold = 1
  let g:solarized_underline = 1
  let g:terminal_italic = 1
  let g:solarized_termcolors = 256
  set t_Co=256
  set background=dark
  "colorscheme xoria256
  colorscheme solarized

else " &term == 'xterm' || &term == 'xterm-color'
  set background=dark
  colorscheme solarized
endif

"TODO: set 'titlestring'
set title

set cursorline
set cursorcolumn
