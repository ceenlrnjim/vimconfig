
"Switch comment marks to -- from // when opening a sql file
augr sql
au!
au bufreadpost,filereadpost *.sql,*.buf,*.pkb map <F5> ^i--<ESC>j
au bufreadpost,filereadpost *.sql,*.buf,*.pkb,*.dql set ft=sql
au bufreadpost,filereadpost *.sql,*.buf,*.pkb hi sqlStatement guifg=cyan
au bufreadpost,filereadpost *.sql,*.buf,*.pkb,*.dql set ic
augr end

" python commenting
augr py
au!
au bufreadpost,filereadpost *.py map <F5> ^i#<ESC>j
au bufreadpost,filereadpost *.py map <F6> ^xj
augr end


"Switch comment marks to # for init file
augr ini
au!
au bufreadpost,filereadpost *.ini map <F5> ^i#<ESC>j
au bufreadpost,filereadpost *.ini map <F6> ^xj
augr end

"switch comment to "rem" for batch file
augr bat
au!
au bufreadpost,filereadpost *.bat,*.cmd map <F5> ^irem <ESC>j
au bufreadpost,filereadpost *.bat,*.cmd map <F6> ^4xj
augr end

"switch <F11> to create a close tag
augr html
au!
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <F11> yyp^a/<ESC>
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <F5> ^i<!--<ESC>$a--><ESC>j
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <F6> ^4x$xxxj
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <S-F5> ^i<!--<ESC>
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <C-F5> $a--><ESC>
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <S-F6> ^4x
au bufreadpost,filereadpost *.html,*.xml,*.jhtml map <C-F6> $xxx
augr end

augr clj
au!
au bufreadpost,filereadpost *.clj map <F5> ^i;<ESC>j
au bufreadpost,filereadpost *.clj map <F6> ^xj
augr end
