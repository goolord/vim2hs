function! vim2hs#haskell#quasi#quote() " {{{
endfunction " }}}


function! vim2hs#haskell#quasi#interpolation() " {{{
  syntax region hsShakespeareInterpolation matchgroup=Delimiter
    \ start="#{" end="}"
    \ keepend contained contains=TOP

  syntax region hsShakespeareQQ matchgroup=Operator
    \ start="\[lt|" end="|\]"
    \ contains=hsShakespeareInterpolation,@NoSpell

  highlight default link hsShakespeareQQ String
endfunction " }}}

function! vim2hs#haskell#quasi#rlangqq() " {{{
endfunction " }}}

function! vim2hs#haskell#quasi#regex() " {{{
endfunction " }}}


function! vim2hs#haskell#quasi#jmacro() " {{{
endfunction " }}}


function! vim2hs#haskell#quasi#shqq() " {{{
endfunction " }}}


function! vim2hs#haskell#quasi#sql() " {{{
endfunction " }}}


function! vim2hs#haskell#quasi#json() " {{{
endfunction " }}}


function! vim2hs#haskell#quasi#xml() " {{{
endfunction " }}}
