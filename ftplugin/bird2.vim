" BIRD2 filetype plugin
" Language: BIRD2 Configuration
" License:  MPL-2.0
" Author:   BIRD Chinese Community

" Only load this file once
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" Set comment format
setlocal comments=:#
setlocal commentstring=#\ %s

" Format options
setlocal formatoptions-=t formatoptions+=croql

" Make sure syntax highlighting is enabled
if exists("g:syntax_on")
  syntax sync fromstart
endif

" Define buffer-local mappings for comment/uncomment
if !hasmapto('<Plug>Bird2Comment', 'n')
  nmap <buffer> <Plug>Bird2Comment <Leader>c
  vmap <buffer> <Plug>Bird2Comment <Leader>c
endif

" Set 'matchpairs' for BIRD2 config braces
setlocal matchpairs+=(:),{:},[:]

" Omni completion function (can be extended)
setlocal omnifunc=syntaxcomplete#Complete

" Change to the BIRD2 config directory automatically
if has("finddir")
  let s:bird_config = findfile("bird.conf", ".;")
  if s:bird_config != "" && getftime(s:bird_config) > 0
    lcd %:p:h
  endif
endif
