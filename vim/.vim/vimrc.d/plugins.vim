

" Plugins will be downloaded in the specified directory.
call plug#begin('~/.vim/plugins')

    " Git Tools
    " > http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
    Plug 'tpope/vim-fugitive'            " Various git commands
    Plug 'airblade/vim-gitgutter'        " Git diff indicators in the signcolumn
    
    " Fuzzy searching
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'

    " Language specific extensions
    Plug 'dag/vim-fish', { 'for': 'fish' }
    Plug 'fatih/vim-go', { 'for': 'go', 'do': 'GoUpdateBinaries' }

    " LSP client
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }

    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'

    " > http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
    Plug 'godlygeek/tabular'

" Plugins become visible to Vim after this call.
call plug#end()
