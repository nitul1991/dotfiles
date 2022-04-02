

" Map Leader to ','
let mapleader = ","

" Map <ESC> to jk
inoremap jk <ESC>
"nnoremap jk <ESC>
vnoremap jk <ESC>

" Mapping to reload vimrc
nnoremap <Leader>r :source $MYVIMRC<CR>

" Enable line numbering
set number
" Enable relative line numbering
if exists('+relativenumber')
set relativenumber
endif

" Toggle line numbers
if exists('+relativenumber')
    nnoremap <F2> :setlocal number! <bar> setlocal relativenumber!<CR>
else
    nnoremap <F2> :setlocal number!<CR>
endif

" tab character = 4 spaces
set tabstop=4
set shiftwidth=4

" Enable the conversion of tabs to spaces
set expandtab

" Enable C-style indentation
set cindent

" Highlight search results
set hlsearch
set incsearch

" Enable case-insensitive search
set smartcase
" set ignorecase

" Enable syntax highlighting
syntax on

" Remap the arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>

inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

vnoremap <up>    <nop>
vnoremap <down>  <nop>
vnoremap <left>  <nop>
vnoremap <right> <nop>

set list
set listchars=tab:>-,trail:.,nbsp:%,extends:>,precedes:<

" Enable 256 colour support
set t_Co=256

" Remove leading spaces
command! Rls execute '%s/^\s\+//e'
" Remove trailing spaces
command! Rts execute '%s/\s\+$//e'

set cursorline
hi CursorLine cterm=none ctermbg=235 ctermfg=none

set cursorcolumn
hi CursorColumn cterm=none ctermbg=235 ctermfg=none

hi LineNr cterm=none ctermbg=none ctermfg=cyan

" StatusLine
" Enable a permanent statusline
set laststatus=2
" Print complete filepath
set statusline=%{expand('%:p')}
" Add file modification status flag
set statusline+=\ %m
" Swtich to the right side
set statusline+=%=
" Print line number and column number
set statusline+=[line\ :\ %-4l\ col\ :\ %-3c]
hi StatusLine cterm=none ctermbg=236 ctermfg=cyan

" TabLine
hi TabLineFill ctermfg=none  ctermbg=236  cterm=none
hi TabLine     ctermfg=cyan  ctermbg=236  cterm=none
hi TabLineSel  ctermfg=black ctermbg=cyan cterm=none

" SearchResult
hi Search ctermfg=black ctermbg=cyan cterm=none

" Verticl split separator
hi VertSplit cterm=none ctermbg=236 ctermfg=cyan

" Popup menu
hi PMenu    ctermfg=cyan  ctermbg=235  cterm=none
hi PMenuSel ctermfg=black ctermbg=cyan cterm=none

" Cursor
" hi Cursor ctermfg=black ctermbg=cyan cterm=none

" Map F9 and F10 to switch tabs
nnoremap <F9> gT
nnoremap <F10> gt

" Netrw settings
" Refer to => https://shapeshed.com/vim-netrw/#invoking-netrw
" Refer to => https://dev.to/aitorfernandez/starting-again-with-vim-23ep
" Tree style listing
let g:netrw_liststyle = 3
" No banner
let g:netrw_banner = 0
" Open files in previous window
let g:netrw_browse_split = 4
" Set the width of the netrw explorer to 20% of the page
let g:netrw_winsize = 20
" Sort sequence, directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'
" Keep the cursor in the netrw window
let g:netrw_preview = 1
" Open files in vertical tab
let g:netrw_altv = 1
" Invoke netrw in a split vertical window
nnoremap <Leader><Space> :Vex<CR>

" Source .vimrc if present in the working directpry
set exrc
" Restrict the usage of some commands in non-default .vimrc files
set secure

" Remap the ESC key
" nnoremap jk <ESC>

" Toggle between buffers
nnoremap <Leader>b :buffers<CR>:buffer<Space>

set wildmenu

" Folding and Comments
autocmd FileType c,cpp    setlocal commentstring=//\ %s
autocmd FileType sql      setlocal commentstring=--\ %s
autocmd FileType py       setlocal commentstring=#\ %s

" Backspace behaviour
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=start,indent

" Configure layout for Termedebug
let g:termdebug_wide = 1

" Inspect runtimepath
command! InspectRuntimepath echo join(split(&runtimepath, ','), "\n")

" Enable mouse support for scrolling
set mouse=a

" Code Movement
" https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <Left> <<
nnoremap <Right> >>
nnoremap <Up> :m .-2<CR>==
nnoremap <Down> :m .+1<CR>==

vnoremap <Left> <gv
vnoremap <Right> >gv
vnoremap <Up> :m '<-2<CR>gv=gv
vnoremap <Down> :m '>+1<CR>gv=gv
