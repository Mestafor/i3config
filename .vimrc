" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" JS
Plug 'pangloss/vim-javascript', {'for': 'js'}
" Typescript
Plug 'leafgarland/typescript-vim'
" Scss
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
"colorschemes
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

syntax on
let g:mapleader=','
colorscheme gruvbox
set background=dark
set number
set expandtab
set tabstop=2

set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap <F8> :TagbarToggle<CR>
