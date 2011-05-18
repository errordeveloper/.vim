" base this configuration on the official example vimrc,
" which is maintained by the great Bram Moolenaar himself!
silent! execute 'source '. globpath(&runtimepath, 'vimrc_example.vim')
if has('gui_running')
  silent! execute 'source '. globpath(&runtimepath, 'gvimrc_example.vim')
endif
