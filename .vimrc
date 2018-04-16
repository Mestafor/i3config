" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
"colorschemes
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

syntax on
colorscheme gruvbox
set background=dark
set number
set expandtab
set tabstop=2

set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR>
