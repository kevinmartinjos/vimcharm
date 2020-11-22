function! LoadTerminal()
    let bnr = bufnr('!/bin/bash')
    if bnr > 0 
        :sbuffer !/bin/bash
    else
        :term
    endif
endfunction
