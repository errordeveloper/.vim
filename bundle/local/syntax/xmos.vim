" Vim syntax file
" Language:	XC
" Maintainer:	errordeveloper
" Last change:	Wed Dec  2 05:23:30 GMT 2009

syn keyword xType		XID Mask Atom VisualID Time

syn keyword xConstant		X_PROTOCOL_REVISION

syn keyword xBoolean		True False


syn keyword xStorageClass	XExtData

syn keyword xFunction		XLoadQueryFont

" Default highlighting
if version >= 508 || !exists("did_xlib_syntax_inits")
  if version < 508
    let did_xlib_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
   HiLink xcType			Type
   HiLink xcConstant		Constant
   HiLink xcStorageClass	StorageClass
   HiLink xcFunction		Function
   HiLink xcBoolean		Boolean
  delcommand HiLink
endif

" vim: ts=8
