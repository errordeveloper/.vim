set shell=/bin/sh

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'

call plug#end()

for config in split(globpath(&runtimepath, 'config/**/*.vim'), "\n")
  execute 'source '. config
endfor
