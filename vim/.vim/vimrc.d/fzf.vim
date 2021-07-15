

" Resources
" > https://jesseleite.com/posts/2/its-dangerous-to-vim-alone-take-fzf
" > https://www.freecodecamp.org/news/fzf-a-command-line-fuzzy-finder-missing-demo-a7de312403ff/
"
nnoremap <leader>f :GFiles<CR>
nnoremap <leader>F :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>C :Commands<CR>
nnoremap <leader>M :Maps<CR>
nnoremap <leader>ft :Filetypes<CR>

let g:fzf_preview_window = 'right:50%'
