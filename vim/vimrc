" show line numbers
set number

" show relative line numbers
set relativenumber

" automatically switch to absolute line numbers when vim loses focus
":au FocusLost * :set number
":au FocusGained * :set relativenumber

" use relaitve line numbers only in normal mode
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

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

syntax on
filetype plugin indent on

" make the statusline appear all the time (for airline)
set laststatus=2

" enable 256 colors in vim
set t_Co=256

" replace grep with ack in vim
set grepprg=ack

" set colorscheme for gvim
if has('gui_running')
    colorscheme desert
endif
