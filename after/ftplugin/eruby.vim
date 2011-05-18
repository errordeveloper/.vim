setlocal complete-=i

" allow leading space before the initial "%" in shorthand eRuby directives
" XXX: this code is originally from /usr/share/vim/vim72/syntax/eruby.vim:58
exe 'syn region  erubyOneLiner   matchgroup=erubyDelimiter start="^ *%\{1,'.b:eruby_nest_level.'\}%\@!"    end="$"     contains=@rubyTop        containedin=ALLBUT,@erubyRegions keepend oneline'
