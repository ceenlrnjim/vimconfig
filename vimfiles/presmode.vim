function PresMode()
    set gfn=Lucida_Console:h24:cANSI
endfunction

function NoPresMode()
    set gfn=Lucida_Console:h9:cANSI
endfunction

map <S-F12> :call PresMode()<CR>
map <C-F12> :call NoPresMode()<CR>
