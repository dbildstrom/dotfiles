function! ToggleGitBase()
    let current = g:gitgutter_diff_base
    let foo = g:gitgutter_enabled
    if current == ''
        let g:gitgutter_diff_base = 'trunk'
    else
        let g:gitgutter_diff_base = ''
    endif
    if foo
        call gitgutter#toggle()
        call gitgutter#toggle()
    endif
endfunction

