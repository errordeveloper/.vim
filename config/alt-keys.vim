" make the non-graphical Vim recognize <Alt><Number> key combinations
" http://vim.wikia.com/wiki/Fix_meta-keys_that_break_out_of_Insert_mode
if !has('gui_running')
  let i = 0
  while i < 10
    execute "set <A-". i .">=\e". i
    let i += 1
  endwhile
endif
