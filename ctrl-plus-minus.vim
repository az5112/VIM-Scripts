function! EnlargeFont()
    let l:font=split( &guifont )
    let l:font[-1] = l:font[-1] + 1
    let &guifont=join( l:font, ' ' )
endfunction

function! ShrinkFont()
    let l:font=split( &guifont )
    if l:font[-1] > 2 
        let l:font[-1] = l:font[-1] - 1
        let &guifont=join( l:font, ' ' )
    endif
endfunction



"set guifont=Monospace\ 10
imap <C-kPlus>  <ESC>:call EnlargeFont()<CR>i
nmap <C-kPlus>  :call EnlargeFont()<CR>

imap <C-kMinus> <ESC>:call ShrinkFont()<CR>i
nmap <C-kMinus> :call ShrinkFont()<CR>

