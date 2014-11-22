
" Searches from the current directory backwards to the root for a file named "tags".
" If found, this file is set to be the tags file
let s:cd = getcwd()
let s:cnt = 0

while strlen(s:cd) > 4
    "counter to prevent infinite loop - just in case
    let s:cnt = s:cnt + 1
    if s:cnt > 50
        break
    endif

    if strlen(findfile("tags", s:cd)) > 0
        let s:tf = s:cd."\\tags"
        let &tags = s:tf
        "echo s:tf
    else
        let s:cd = strpart(s:cd, 0, strridx(s:cd, "\\"))
        "echo s:cd
    endif
endwhile
