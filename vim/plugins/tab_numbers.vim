

" Set up tab labels with tab number, buffer name
" 1:[<buffer_1>] | 2:[<buffer_2>] |
function! TabLine()
    let label = ''
    for index in range(tabpagenr('$'))
        let tab             = index + 1
        let window_number   = tabpagewinnr(tab)
        let buffer_list     = tabpagebuflist(tab)
        let buffer_number   = buffer_list[window_number - 1]
        let buffer_name     = bufname(buffer_number)
        let buffer_modified = getbufvar(buffer_number, "&mod")

        "let label .= '%' . tab. 'T'
        let label .= (tab ==# tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
        let label .= '| ' . tab . ':'
        let label .= (buffer_name !=# '' ? '[' . fnamemodify(buffer_name, ':t') . '] ' : '[No Name] ')

        if buffer_modified
            let label .= '[+] '
        endif
    endfor

    let label .= '|'
    let label .= '%#TabLineFill#'

    return label
endfunction

set tabline=%!TabLine()
