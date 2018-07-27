function! vim2hs#haskell#editing#includes() " {{{
  setlocal include=^import\\s*\\(qualified\\)\\?\\s*
  setlocal includeexpr=substitute(v:fname,'\\.','/','g').'.'
  setlocal suffixesadd=hs,lhs,hsc,hsx
endfunction " }}}


" function! vim2hs#haskell#editing#foldtext() " {{{
  " let l:line = getline(v:foldstart)
  " let l:keyword = matchstr(l:line, '\k\+')
  " if count(['type', 'newtype', 'data'], l:keyword)
    " return substitute(l:line, '\s*=.*', '', '') . ' '
  " elseif count(['class', 'instance'], l:keyword)
    " return substitute(l:line, '\s*\<where\>.*', '', '') . ' '
  " endif
  " return l:keyword . ' = '
" endfunction " }}}


" function! vim2hs#haskell#editing#folding() " {{{
  " setlocal foldmethod=syntax
  " setlocal foldtext=vim2hs#haskell#editing#foldtext()
" endfunction " }}}


function! vim2hs#haskell#editing#keywords() " {{{
  setlocal iskeyword=@,48-57,_,'
  setlocal keywordprg=hoogle\ -i
endfunction " }}}


function! vim2hs#haskell#editing#formatting() " {{{
  if executable('pointfree')
    setlocal formatprg=xargs\ pointfree
  endif
  setlocal comments=s1:{-,mb:-,ex:-},:--
  setlocal commentstring=--%s
  setlocal formatoptions+=croql1
  setlocal formatoptions-=t
  silent! setlocal formatoptions+=j
  setlocal textwidth=75
endfunction " }}}


function! vim2hs#haskell#editing#tabular() " {{{
  AddTabularPattern! colon                  /^[^:]*\zs:/
  AddTabularPattern! haskell_bindings       /^[^=]*\zs=\ze[^[:punct:]]/
  AddTabularPattern! haskell_comments       /--.*/l2
  AddTabularPattern! haskell_do_arrows      / \(<-\|←\) /l0r0
  AddTabularPattern! haskell_imports        /^[^(]*\zs(.*\|\<as\>.*/
  AddTabularPattern! haskell_pattern_arrows / \(->\|→\) /l0r0
  AddTabularPattern! haskell_types          / \(::\|∷\) /l0r0
endfunction " }}}
