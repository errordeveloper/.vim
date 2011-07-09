" File Name: pd-syntax.vim
" Maintainer: errordeveloper::at:gmail::dot:com
" Original Date: Oct 19 2007
" Last Update: 
" Description: pure data patch syntax


syntax match pdLine0 /^#/
syntax match pdLine1 /;$/

syntax match pd_obj /X\>/ 
syntax match pd_win /#N\>/
syntax match pd_arr /^#A\>.*/

"" that's 3rd and 4th and other numerical columns
"" syn match myNumbers /^#\(\w\+ \)\{2}\zs\(\d\+ \)\{2}/
syntax match pd_xy /\(obj \|floatatom \|symbolatom \|msg \)\zs\(\d\+\)\{2}/
"syntax match pd_con_source /\(connect \)\zs\(\d\+\)/
"syntax match pd_con_o /\(connect\)\( \d\+ \)\zs\( \d\+\)/

"" that's all in 2nd column ::
""
syntax keyword pd_base canvas obj pd
syntax keyword pd_baseop connect restore coords



syntax keyword pd_bld namecanvas msg text array table floatatom symbolatom inlet outlet inlet~ outlet~
" syntax match pd_msg /\(msg \)\zs\(\d \){2}\(.*\)/
syntax keyword pd_gui cnv nbx tgl bng vsl hsl vradio hradio vu

syntax keyword pd_ds pointer get set element getsize append sublist template struct plot drawnumber drawcurve filledcurve drawpolugon filledpolygon
syntax keyword pd_sig osc~ phasor~ noise~ cos~ delwrite~ delread~ vd~ vcf~ lop~ bp~ hip~
syntax keyword pd_msgop i float int t trigger symbol send receive select route pack unpack spigot moses until print change swap value makefilename bang
syntax keyword pdMacro declare loadbang textfile qlist key keyup keyname openpanel savepanel
syntax keyword pdSpecial delay metro line timer cputime realtime pipe bag poly
syntax keyword pd_func clip max min random atan atan2 sqrt log exp abs mod div sin cos tan pow
syntax keyword pd_math \+ \- \* \/ \=\= != > < >= <= & && \| \|\| \%
syntax keyword pd_midi notein ctlin pgmin bendin touchin polytouchin midiin sysexin noteout ctlout pgmout bandout touchout polytouchout midiout mknote stripnote
syntax keyword pd_tab tabread tabwrite sounfiler tabread4 tabread~ tabwrite~ tabread4~ tabplay~ tabrecieve~ tabsend~ tabosc4~
syntax keyword pd_sigfunc +~ -~ *~ /~ max~ min~ clip~ q8_rsqrt~ q8_sqrt~ wrap~ fft~ ifft~ rfft~ rifft~ framp~
syntax keyword pd_con mtof mtof~ ftom ftom~ powtodb powtodb~ rmstodb rmstodb~ dbtopow dbtopow~ dbtorms dbtorms~ rmstopow rmstopow~ powtorms powtorms~
syntax keyword pd_amp line line~ vline~ snapshot~ vsnapshot~ env~ treshhold~
syntax keyword pd_sigop switch~ block~ adc~ dac~ samplerate~ sig~ bang~  send~ receive~ trow~ catch~ readsf~ writesf~ print~
syntax keyword pd_raw biquad~ rpole~ rzero~ rzero_rev~ cpole~ czero~ czero_rev~ samphold~


	hi link pdLine0 Special
	hi link pdLine1 Special
	hi link pd_obj PreProc
	hi link pd_win Error
	hi link pd_arr Constant
	hi link pd_base Underlined
	hi link pd_baseop PreProc
	hi link pd_xy Identifier

	hi link pd_bld Underlined
	hi link pd_gui Function
	"hi link pd_con_source Underlined
	"hi link pd_con_o Error
	hi link pd_func Statement
	hi link pd_sigfunc Todo
	hi link pd_sigop Error
	hi link pd_sig Todo
	hi link pd_math Statement
	hi link pd_tab Type
	hi link pd_ds Type

"syntax region pd_ent start=/^#/ end=/;$/ contains=ALLBUT,pd_win,pd_obj,pdLine0,pdLine1 contained
