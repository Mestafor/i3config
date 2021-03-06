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
"HTML
Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript'] }
Plug 'tpope/vim-haml', { 'for': 'haml'}
"SCSS, CSS
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
" JS
Plug 'pangloss/vim-javascript', {'for': 'js'}
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript' }
Plug 'wizicer/vim-jison', { 'for': 'jison' }
Plug 'posva/vim-vue', { 'for': ['javascript', 'typescript'] }
" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install', 'for': 'typescript' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript'}
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
"PHP
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
"colorschemes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'whatyouhide/vim-gotham'
Plug 'joshdick/onedark.vim'

" Initialize plugin system
call plug#end()

" Settings
set autoread
syntax on 
set t_Co=256

syntax on
let g:mapleader=','
colorscheme onedark 
set background=dark

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number

set hlsearch
set incsearch

set nocursorline
set nocursorcolumn
syntax sync minlines=256

set nocompatible " not compatible with vi

set foldmethod=indent

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap <F8> :TagbarToggle<CR>

".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for tsx
autocmd FileType tsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
