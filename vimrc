" show line numbers
set number

" show command in bottom bar 
set showcmd

" highlight current line
set cursorline

" load filetype-specific indent files
filetype indent on

" highlight matching [{()}]
set showmatch

" enable syntax processing
syntax enable

" number of visual spaces per TAB
set tabstop=4

" number of spaces in TAB when editing
set softtabstop=4

" tabs are spaces
set expandtab

" ****Searching****

" search as characters are  entered
set incsearch

" highlight matches
set hlsearch

" turn of search highlight
nnoremap <leader><space> :nohlsearch<CR>

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" make the statusline appear all the time (for airline)
set laststatus=2

" enable 256 colors in vim
set t_Co=256

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline_symbols.branch = '⎇'
" enable syntastic integration
let g:airline#extensions#syntastic#enabled = 1

" Replace grep with ack in vim
set grepprg=ack
