:command Type :silent call GetType()

function! GetType()
    execute "t."
    execute "normal! k"
    execute ".!typeOf %"
  endfunction
