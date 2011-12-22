" register bundles found in the runtimepath
let s:bundles = tr(globpath(&runtimepath, 'bundle/*/.'), "\n", ',')
let s:afters = tr(globpath(s:bundles, 'after/.'), "\n", ',')
let &runtimepath = join([s:bundles, &runtimepath, s:afters], ',')

" activate ftplugin/ scripts inside bundles
"filetype off
"filetype plugin indent on

" delegate configuration to files in config/
for config in split(globpath(&runtimepath, 'config/**/*.vim'), "\n")
  execute 'source '. config
endfor
