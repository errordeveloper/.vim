" Vim syntax file
" Language:     xc (XMOS C)
" Maintainer:   Fred Barnes  <frmb@kent.ac.uk>
" Last Change:  01/11/2008

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" XC extensions
syn keyword	xcReserved	auto default return
syn keyword	xcReserved	break continue
syn keyword	xcReserved	case switch
syn keyword	xcReserved	for while do
syn keyword	xcReserved	if else
syn keyword	xcReserved	struct enum
syn keyword	xcReserved	register typedef

syn keyword	xcMacro		on buffered par state timer clock transaction master slave select when chanend

syn keyword	xcType		t int long char unsigned signed void sizeof
syn keyword	xcConstant	inline union static violate extern 

syn keyword	xcPort		port chan stdcore

syn keyword	xcTypeQualifier	in out const

syn keyword	xcFuture	accept claim goto proc
syn keyword	xcFuture	asm double float restrict
syn keyword	xcFuture	assert module 

syn match	xcOperator	"<:\|:>\|@\|>>"
syn keyword	xcOperator	sizeof

if version >= 508 || !exists("did_xc_syntax_inits")
  if version < 508
    let did_xc_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink xcReserved		Reserved
  HiLink xcMacro		Macro
  HiLink xcType			Type
  HiLink xcPort			Error
  HiLink xcPortType		Constant
  HiLink xcConstant		Constant
  HiLink xcOperator		Operator

  HiLink xcFuture		Error

  delcommand HiLink
endif

let b:current_syntax = "xc"

" vim: ts=8
