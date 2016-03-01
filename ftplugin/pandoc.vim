" Pandoc filetype plugin file
" Language:   pandoc
" Maintainer: Case Duckworth <cased123@gmail.com>
" Last Change: 2016 Feb 29

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

let c:cpo_save = &cpo

let b:undo_ftplugin = "setl spell< sw< sts< fo< flp< fp< tw<"

setlocal spell                      " it's text, need to spell
setlocal shiftwidth=4 softtabstop=4 " need at least 4 spaces for some blocks
setlocal cpoptions+=J               " enforce 2 spaces after periods

setlocal formatoptions=tnroqaw
setlocal formatlistpat =^\\s*\\([*+-]\\\|\\((*\\d\\+[.)]\\+\\)
setlocal formatlistpat+=\\\|\\((*\\l[.)]\\+\\)\\)\\s\\+

setlocal textwidth=80

if executable("par")
  set formatprg=par
endif

let &cpo = s:cpo_save
unlet s:cpo_save
