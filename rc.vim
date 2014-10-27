set shell=/bin/sh

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

"" Languages

" this one is sort of fancy, but doesn't seem to do any harm so far apart from
" tabs that are a pain anyway ;=)
Plug 'fatih/vim-go'

" this one is syncronized with rust upstream, nothing fancy aside from the
" syntax checker that shells out to rustc ;=)
Plug 'wting/rust.vim'

" official puppet syntax (non-official alternative: 'rodjek/vim-puppet')
Plug 'puppetlabs/puppet-syntax-vim'

" official salt syntax
Plug 'saltstack/salt-vim'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

for config in split(globpath(&runtimepath, 'config/**/*.vim'), "\n")
  execute 'source '. config
endfor
