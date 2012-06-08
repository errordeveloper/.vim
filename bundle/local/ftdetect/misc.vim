" Put everything that does't need it's own file here

"" FileType: XC
au BufNewFile,BufRead *.xc set filetype=xc

"" FileType: NC
au BufNewFile,BufRead *.nc set filetype=nc

"" FileType: SPICE
au BufNewFile,BufRead *.cir set filetype=spice
au BufNewFile,BufRead *.lib set filetype=spice
au BufNewFile,BufRead *.spc set filetype=spice

"" FileType: PureData Patch
au BufNewFile,BufRead *.pd set filetype=pd

"" FileType: BitBake Recepie
au BufNewFile,BufRead *.bb set filetype=ebuild

"" FileType: Eagle CAD
au BufNewFile,BufRead *.ulp set filetype=c

"" FileType: RST
"" Comment: *.rst files are autodetected already
au BufRead,BufNewFile *.rest set ft=rst
"" try to detect by path:
au BufRead,BufNewFile */*git*/*wiki*/* set ft=rst


"" FileType: Nginx Configuration
"" Comment: nginx.conf files are autodetected already
"" try to detect by path:
au BufRead,BufNewFile */*nginx*/* set ft=nginx
au BufRead,BufNewFile *nginx* set ft=nginx

"" FileType: RFC
au BufRead,BufNewFile draft*.txt set ft=rfc
au BufRead,BufNewFile rfc*.txt set ft=rfc

"" FileType: JSON
au BufRead,BufNewFile *.json set ft=javascript

"" FileType: KL1
au BufRead,BufNewFile *.kl1 set ft=klone
